# IBM 1620 with SIMH

The IBM 1620[^Model1] was a scientific computer from IBM, maybe known in the public for
its use during the Gemini program.  I haven't found much documentation how to
actually use it, though there are some [interesting application examples on
bitsavers](http://bitsavers.informatik.uni-stuttgart.de/pdf/ibm/1620/general_program_library/).
There is at least [one comprehensive
example](https://github.com/mdoege/IBM1620-Baseball) on Github.

- [programs in SPS](sps/README.md)
- [programs in FORTRAN](fortran/README.md)

Most of these directory contain a .simh-file containing the commands for
simh-i1620.


## Where to start

There was no readily available documentation[^1] on how to run the assembler or
fortran compiler from the digitized cards from bitsavers.  An my aim was to run
some of the application notes from bitsavers.  So let's try to understand the
machine from the available documentation.  The machine came with a paper tape
and a card reader.  The card reader interaction seems simpler (put the cards
into the reader, press load) and the [biggest remaining
library](https://youtu.be/N12pQBiRd7A) also contained shelves with punch cards.
From a user perspective, punch cards offer an easier way of patching programs
than papaer tape anyways.  So maybe only the assembler and compilers came on
paper tape.

- reading of punch cards is described on page 30[^IO]

[^1]: or rather, I didn't find the files (1620-SP-020 or ) referenced in the 
programming manuals [^SPS][^FORTRAN].


## Where to start with the treasure trove of 1620.zip

On Bitsavers there is the innocent looking [1620.zip](http://www.bitsavers.org/bits/IBM/1620/1620.zip)
containing most available compilers.


# Bibliography

[^Model1]: IBM 1620 Central Processing Unit, Model 1, [Systems Reference Library A26-5706-3](A26-5706-3_IBM_1620_CPU_Model_1_Jul65.pdf)

[^IO]:  IBM 1620 Input/Output Units, [Systems Reference Library A26-5707-0](A26-5707-0_IBM_1620_Input_Output_Units_1621_1622_1624.pdf)

[^SPS]: IBM 1620/1710 Symbolic Programming System, [Systems Reference Library C26-5600-1](C26-5600-1_Symbolic_Programming_System_Apr63.pdf)

[^FORTRAN]: IBM 1620 FORTRAN (with FORMAT), [Systems Reference Library C26-5619-4](C26-5619-4_1620_Fortran_Mar64.pdf) 
