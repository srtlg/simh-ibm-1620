" Vim syntax file
" Language: IBM 1620 Symbolic Programming System (SPS)
"
" Installation
"
" 	- create link to this file in ~/.vim/syntax
" 	- add to ~/.vimrc autocmd BufNewFile,BufRead *.sps :set filetype=ibm1620-sps
"
" Follows 
"
" https://vim.fandom.com/wiki/Creating_your_own_syntax_files
"
" References
"
" IBM Systems Library Reference, IBM 1620/1710 Symbolic Programming System, 
" C26-5600-1
" http://www.bitsavers.org/pdf/ibm/1620/C26-5600-1_Symbolic_Programming_System_Apr63.pdf
"
if exists("b:current_syntax")
  finish
endif

" the conversion program to papertape should take care of this
" the IBM 1620 doesn't know lower case
syn case ignore 

" an SPS listing uses fixed columns
" pages 8f
let &colorcolumn="6,12,16,".join(range(75,81),",")
highlight ColorColumn ctermbg=235

set expandtab
set tabstop=11
set vartabstop=5,6,4

syntax match spsComment1 "\%6c\*.*$"
syntax match spsLabel    "\%6c[A-Z][A-Z0-9]\{1,5\}"
syntax match spsOpcode   "\%12cAM"
syntax match spsOpcode   "\%12cB"
syntax match spsOpcode   "\%12cBB"
syntax match spsOpcode   "\%12cBD"
syntax match spsOpcodeSp "\%12cBNF"
syntax match spsOpcode   "\%12cBNR"
syntax match spsOpcode   "\%12cBT"
syntax match spsOpcode   "\%12cBTM"
" operational code 40 page 29
syntax match spsOpcode   "\%12cBI"
syntax match spsOpcode   "\%12cBH"
syntax match spsOpcode   "\%12cBP"
syntax match spsOpcode   "\%12cBE"
syntax match spsOpcode   "\%12cBZ"
syntax match spsOpcode   "\%12cBV"
syntax match spsOpcode   "\%12cBA"
syntax match spsOpcode   "\%12cBNL"
syntax match spsOpcode   "\%12cBNN"
syntax match spsOpcode   "\%12cBC[1234]"
syntax match spsOpcode   "\%12cBLC"
syntax match spsOpcodeSp "\%12cBXV"
" operational code 47 page 47
syntax match spsOpcode   "\%12cBNI"
syntax match spsOpcode   "\%12cBNH"
syntax match spsOpcode   "\%12cBNP"
syntax match spsOpcode   "\%12cBNE"
syntax match spsOpcode   "\%12cBNZ"
syntax match spsOpcode   "\%12cBNV"
syntax match spsOpcode   "\%12cBNA"
syntax match spsOpcode   "\%12cBL"
syntax match spsOpcode   "\%12cBA"
syntax match spsOpcode   "\%12cBNC[1234]"
syntax match spsOpcodeSp "\%12cBNLC"
syntax match spsOpcodeSp "\%12cBNXV"
syntax match spsOpcode   "\%12cC"
syntax match spsOpcode   "\%12cCF"
syntax match spsOpcode   "\%12cCM"
syntax match spsOpcode   "\%12cD"
syntax match spsOpcode   "\%12cDM"
syntax match spsOpcode   "\%12cDN"
syntax match spsOpcode   "\%12cH"
syntax match spsOpcode   "\%12cK"
syntax match spsOpcode   "\%12cLD"
syntax match spsOpcode   "\%12cLDM"
syntax match spsOpcode   "\%12cM"
syntax match spsOpcode   "\%12cMF"
syntax match spsOpcode   "\%12cMM"
syntax match spsOpcode   "\%12cNOP"
syntax match spsOpcode   "\%12cRA"
syntax match spsOpcode   "\%12cRN"
syntax match spsOpcode   "\%12cS"
syntax match spsOpcode   "\%12cSF"
syntax match spsOpcode   "\%12cSM"
syntax match spsOpcode   "\%12cTD"
syntax match spsOpcode   "\%12cTDM"
syntax match spsOpcode   "\%12cTF"
syntax match spsOpcode   "\%12cTFM"
syntax match spsOpcode   "\%12cTNF"
syntax match spsOpcode   "\%12cTNS"
syntax match spsOpcode   "\%12cTR"
syntax match spsOpcode   "\%12cWA"
syntax match spsOpcode   "\%12cWN"
" page 17 Declarative Operations
syntax match spsDeclara  "\%12c\(DS\|DSS\|DAS\|DC\|DSC\|DAC\|DSA\|DSB\|DNB\)"
" page 36 Control Operations
syntax match spsControl  "\%12c\(DORG\|DEND\|SEND\|SHEAD\|TCD\|TRA\)"
syntax match spsComment2 "\%>15c,,,.*$" 

highlight def link spsComment1 Comment
highlight def link spsComment2 Comment
highlight def link spsLabel    Type
highlight def link spsOpcode   Statement
highlight def link spsDeclara  Macro
highlight def link spsControl  Macro

let b:current_syntax = "ibm-sps"
