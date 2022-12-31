# FORTRAN

Nothing runs yet, since I haven't figured out, where the subroutine tape is.

- [Tic-Tac-Toe](tic-tac-toe/README.md)
- [approximation](fibonacci/README.md) of a Fibonacci number

## Input with Vim

Vim's fortran mode starts in column 9, but in IBM Fortran[^FORTRAN]:

- Coding forms have 1..5 Statement Number and Statement starting with 7th
- FORTRAN cards have 1..5 Statement Number, 6th Continuation, and Statement
  starting with 7th
- Comments with C in first column followed by two blanks


## Available Compilers in [1620.zip]

```
../../dl/DaveW_paper_tapes/FO003A.PT
../../dl/DaveW_paper_tapes/FO003AP.PT
../../dl/DaveW_paper_tapes/FO003C.PT
../../dl/DaveW_paper_tapes/FO003CP.PT
../../dl/DaveW_paper_tapes/FO005.PT
```

`FO-003` is the compiler for paper tape

`FO-005` is the pre-compiler for paper tape

## What to do after the two compiler runs?

You have to concatenate both paper tape, then you can run it, if you'd have
a tape with the subroutines (seem to be mainly floating point functions).


[^FORTRAN]: IBM System Reference Library, IBM 1620 FORTRAN (with FORMAT),
            C26-5619-4 
