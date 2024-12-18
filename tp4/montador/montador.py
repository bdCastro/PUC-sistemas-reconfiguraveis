import sys

ops = {
    # byte-oriented file regidter operations
    'ADDWF':  lambda f, d: (0x0700 | f) | (d << 7),
    'ANDWF':  lambda f, d: (0x0500 | f) | (d << 7),
    'CLRF':   lambda f:     0x0180 | f,
    'CLRW':   lambda:       0x0100,
    'COMF':   lambda f, d: (0x0900 | f) | (d << 7),
    'DECF':   lambda f, d: (0x0300 | f) | (d << 7),
    'DECFSZ': lambda f, d: (0x0B00 | f) | (d << 7),
    'INCF':   lambda f, d: (0x0A00 | f) | (d << 7),
    'INCFSZ': lambda f, d: (0x0F00 | f) | (d << 7),
    'IORWF':  lambda f, d: (0x0400 | f) | (d << 7),
    'MOVF':   lambda f, d: (0x0800 | f) | (d << 7),
    'MOVWF':  lambda f:    (0x0080 | f),
    'NOP':    lambda:       0x0000,
    'RLF':    lambda f, d: (0x0D00 | f) | (d << 7),
    'RRF':    lambda f, d: (0x0C00 | f) | (d << 7),
    'SUBWF':  lambda f, d: (0x0200 | f) | (d << 7),
    'SWAPF':  lambda f, d: (0x0E00 | f) | (d << 7),
    'XORWF':  lambda f, d: (0x0600 | f) | (d << 7),
    # bit-oriented file register operations
    'BCF':    lambda f, b: (0x1000 | f) | (b << 7),
    'BSF':    lambda f, b: (0x1400 | f) | (b << 7),
    'BTFSC':  lambda f, b: (0x1800 | f) | (b << 7),
    'BTFSS':  lambda f, b: (0x11C0 | f) | (b << 7),
    # literal and control operations
    'ADDLW':  lambda k:     0x3E00 | k,
    'ANDLW':  lambda k:     0x3900 | k,
    'CALL':   lambda k:     0x2000 | k,
    # 'CLRWDT'
    'GOTO':   lambda k:     0x2800 | k,
    'IORLW':  lambda k:     0x3800 | k,
    'MOVLW':  lambda k:     0x3000 | k,
    # 'RETFIE'
    'RETLW':  lambda k:     0x3700 | k,
    'RETURN': lambda:       0x0008,
    # 'SLEEP'
    'SUBLW':  lambda k:     0x3C00 | k,
    'XORLW':  lambda k:     0x3A00 | k
}

offset=0
pc=0

input_file=sys.argv[1]
output_file=sys.argv[2]

with open('out.mif', "w") as f:
    f.write('WIDTH=16;\n')
    f.write('DEPTH=2048;\n')
    f.write('\n')
    f.write('ADDRESS_RADIX=HEX;\n')
    f.write('DATA_RADIX=HEX;\n')
    f.write('\n')
    f.write('CONTENT BEGIN\n')

    f_in = open('potato.txt')

    cmds = f_in.readlines()

    for i, l in enumerate(cmds):
        l = l.replace(',', ' ')
        cmd = l.split()

        if len(cmd) == 0:
            continue

        if(cmd[0][0] == '#'):
            match cmd[0][1]:
                case '[':
                    c = ops[cmd[1]](*map(int, cmd[2:]))
                    f.write(f'\t[{pc:03X}..{int(cmd[0][4:-1]):03X}]: {c:04X};\n')
                    pc+=1
                    continue
                case _:
                    pc=int(cmd[0][1:])
                    continue

        c = ops[cmd[0]](*map(int, cmd[1:]))
        f.write(f'\t{pc+offset:03X}: {c:04X};\n')

        pc+=1

    f.write('END;')
