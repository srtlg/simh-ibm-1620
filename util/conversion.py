"""
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

__all__ = ['Table4', 'Table5']

_table = (
# hex  Tape       Card       ASCII
# (0x80, 'EL     ', '       ', ';'),
(0x10, 'C      ', '<blank>', ' '),
(0x6B, 'XO821  ', '12-3-8 ', '.'),
(0x7C, 'XOC84  ', '12-4-8 ', ')'),
(0x70, 'XOC    ', '12     ', '+'),
(0x5B, 'XC821  ', '11-3-8 ', '$'),
(0x4C, 'X84    ', '11-4-8 ', '*'),
(0x40, 'X      ', '11     ', '-'),
(0x31, 'OC1    ', '0-1    ', '/'),
(0x3B, 'OC821  ', '0-3-8  ', ','),
(0x2C, 'O84    ', '0-4-8  ', '('),
(0x3E, 'OC842  ', '0-6-8  ', '^'),
(0x0B, '821    ', '3-8    ', '='),
(0x1C, 'C84    ', '4-8    ', '@'),
(0x61, 'XO1    ', '12-1   ', 'A'),
(0x62, 'XO2    ', '12-2   ', 'B'),
(0x73, 'XOC21  ', '12-3   ', 'C'),
(0x64, 'XO4    ', '12-4   ', 'D'),
(0x75, 'XOC41  ', '12-5   ', 'E'),
(0x76, 'XOC42  ', '12-6   ', 'F'),
(0x67, 'XO421  ', '12-7   ', 'G'),
(0x68, 'XO8    ', '12-8   ', 'H'),
(0x79, 'XOC81  ', '12-9   ', 'I'),
(0x5D, 'XC841  ', '11-0   ', '~'),
(0x51, 'XC1    ', '11-1   ', 'J'),
(0x52, 'XC2    ', '11-2   ', 'K'),
(0x43, 'X21    ', '11-3   ', 'L'),
(0x54, 'XC4    ', '11-4   ', 'M'),
(0x45, 'X41    ', '11-5   ', 'N'),
(0x46, 'X42    ', '11-6   ', 'O'),
(0x57, 'XC421  ', '11-7   ', 'P'),
(0x58, 'XC8    ', '11-8   ', 'Q'),
(0x49, 'X81    ', '11-9   ', 'R'),
(0x32, 'OC2    ', '0-2    ', 'S'),
(0x23, 'O21    ', '0-3    ', 'T'),
(0x34, 'OC4    ', '0-4    ', 'U'),
(0x25, 'O41    ', '0-5    ', 'V'),
(0x26, 'O42    ', '0-6    ', 'W'),
(0x37, 'OC421  ', '0-7    ', 'X'),
(0x38, 'OC8    ', '0-8    ', 'Y'),
(0x29, 'O81    ', '0-9    ', 'Z'),
(0x20, '0      ', '0      ', '0'),
# (0x20, '0      ', '12-0   ', '0'),
(0x01, '1      ', '1      ', '1'),
(0x02, '2      ', '2      ', '2'),
(0x13, 'C21    ', '3      ', '3'),
(0x04, '4      ', '4      ', '4'),
(0x15, 'C41    ', '5      ', '5'),
(0x16, 'C42    ', '6      ', '6'),
(0x07, '421    ', '7      ', '7'),
(0x08, '8      ', '8      ', '8'),
(0x19, 'C81    ', '9      ', '9'),
(0x2A, 'O82    ', '0-2-8  ', '#'),
# the following may not be allowed in alphameric mode
(0x4A, 'X82    ', '11-2-8 ', '"'),
(0x7A, 'XOC82  ', '12-2-8 ', "'"),
(0x2F, 'O8421  ', '0-7-8  ', '%'),
(0x4F, 'X8421  ', '11-7-8 ', '&'))

Table4 = dict((x[0], x[3]) for x in _table)
assert len(Table4) == len(_table), "{} != {}".format(len(Table4), len(_table))
Table5 = dict((x[3], x[0]) for x in _table)
assert len(Table5) == len(_table), "{} != {}".format(len(Table5), len(_table))
