# Symbolic Programming System

- [99 bottles of beer](03-99-bottles/README.md)

## Input with Vim

according to the manual[^SPS]

- 1..2 contain a page number
- 3..5 contain a line number
- 6..11 the label
- 12..15 the mnemonics
- 16..75 the operants
- an asterisk in 6 starts a comment
- three commas after the operants are also a comment
- see `../../dl/DaveW_paper_tapes/BANDIT.AL` for a sample source
- a newline cannot by until column 16 for `util/asc2pt.py`
- page and line numbers are optional, but the columns have to blank, if unused


## Available Assemblers in [1620.zip]

```
../../dl/DaveW_paper_tapes/SP021A0.PT
../../dl/DaveW_paper_tapes/SP021A7P.PT
../../dl/DaveW_paper_tapes/SP021A7.PT
../../dl/DaveW_paper_tapes/SP021A.PT
../../dl/DaveW_paper_tapes/SP021C8.PT
../../dl/DaveW_paper_tapes/SP021C.PT
../../dl/DaveW_paper_tapes/SP021E0P.PT
../../dl/DaveW_paper_tapes/SP021E0.PT
../../dl/DaveW_paper_tapes/SP021E.PT
../../dl/DaveW_paper_tapes/SP021M.PT
```

Various versions of the paper tape assembler.


## Assemble process

There is a diagram for paper tape operations in the manual[^SPS] on page 82.

Error messages are on page 89 of the manual[^SPS].  The location is relative
to the labels.

Not all characters processed by asc2pt are also acceptable for the assembler,
mostly characters with nearly all tracks punched.


## Debug process after assembly

```
set cpu history=10000
...
go
...
show history
```

The last instruction is also the lowest on the list



## References 

[^SPS]: IBM 1620/1710 Symbolic Programming System, [Systems Reference Library C26-5600-1](C26-5600-1_Symbolic_Programming_System_Apr63.pdf)
