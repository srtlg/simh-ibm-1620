#!/usr/bin/env python
"""
Convert IBM 1621 Papertape digitizations on Bitsavers to readable ASCII representation

I took the conversion table from `cvtables.h` of [PT2ASCII]_

What is the relation to Appendix A of [A26-5707]_?
==================================================

[SIMH-I1620-PT]_ defines the probable bit-mapping to 8-track tape as in
Figure 2 of [A26-5707]_::

    bit  track
    0x80 EL
    0x40 X
    0x20 O
    0x10 CHECK
    0x08 8
    FEED FEED
    0x04 4
    0x02 2
    0x01 1


References
==========

[A26-5836]: IBM 1621 Paper Tape Unit, System Reference Library A26-5836-0
[A26-5707]: IBM 1620 Input Output Units, System Reference Library A26-5707-0
[PT2ASCII]: http://www.bitsavers.org/bits/IBM/1620/1620.zip:DaveB_utilities/pt2ascii.c
[SIMH-I1620-PT]: `I1620/i1620_pt.c`
"""
import sys
import argparse
from typing import BinaryIO, TextIO

from conversion import Table4


PT_EL = 0x80
PT_FD = 0x7F

def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument('paper_tape_input', type=argparse.FileType(mode='rb'))
    p.add_argument('ascii_output', nargs='?', type=argparse.FileType(mode='wt'), default=sys.stdout)
    return p.parse_args()


def convert(inf: BinaryIO, outf: TextIO, block_size=64):
    cnt = 0
    while True:
        codes = list(inf.read(block_size))
        for code in codes:
            if code == PT_EL:
                outf.write('\n')
            elif code & PT_EL:
                sys.stderr.write('EL set with other tracks?\n')
            elif code == PT_FD:
                sys.stderr.write('DEL\n')
            else:
                outf.write(Table4[code])
            cnt += 1
        if len(codes) < block_size:
            break


def main():
    args = parse_args()
    convert(args.paper_tape_input, args.ascii_output)


if __name__ == '__main__':
    main()