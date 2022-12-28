#!/usr/bin/env python
"""
Convert ASCII file to IBM 1621 papertape as represented in SIMH
"""
import sys
import argparse
from typing import BinaryIO, TextIO

from conversion import Table5


PT_EL = b'\x80'

def parse_args():
    p = argparse.ArgumentParser()
    p.add_argument('ascii_input', type=argparse.FileType(mode='rt'))
    p.add_argument('paper_tape_output', nargs='?', type=argparse.FileType(mode='wb'), default=sys.stdout.buffer)
    return p.parse_args()


def convert(inf: TextIO, outf: BinaryIO):
    for line in inf.readlines():
        outf.write(bytes([Table5[ch.upper()] for ch in line.rstrip('\n')]))
        outf.write(PT_EL)


def main():
    args = parse_args()
    convert(args.ascii_input, args.paper_tape_output)


if __name__ == '__main__':
    main()
