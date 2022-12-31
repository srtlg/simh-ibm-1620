# Entering cards with manually assembled code

- reading of punch cards is described on page 30f[^IO]
- 1..5 address of following instructions
- 6..10 address of record mark
    - for instructions the address plus 12 times the number of instructions
- 11..15
    + blank for instructions
    + start address of program in last card
- 16..19 not used or sequence number
- 20..79 data or instructions
    + just filling unused columns with blanks works
- 80 Record Mark

A card sequence consists of

- the program loader card with columns 1..55, page 30 right column top
- the program cards, page 31 left column bottom
- the last program card, page 31 right column center

It is entirely possible to write those files in a text editor.  The
mapping is explained in `I1620/i1620_cd.c`

- 1–9 → 1–9
- 0 → 0
- 1̅–9̅ → J–R
- 0̅ → ASCII 0x5D ]
- Record Mark (≠), i.e. character in column 80 is ASCII 0x7C |
- Group Mark (≢ or @), i.e. C84 end of string is ASCII 0x7D }

[^IO]:  IBM 1620 Input/Output Units, [Systems Reference Library A26-5707-0](A26-5707-0_IBM_1620_Input_Output_Units_1621_1622_1624.pdf)
