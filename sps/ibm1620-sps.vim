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
syntax match spsOpcode   "\%12cBNF"
syntax match spsOpcode   "\%12cBNR"
syntax match spsOpcode   "\%12cBT"
syntax match spsOpcode   "\%12cBTM"
" operational code 40 page 29
syntax match spsOpcode   "\%12cBI"
syntax match spsMnemonic "\%12cBH"
syntax match spsMnemonic "\%12cBP"
syntax match spsMnemonic "\%12cBE"
syntax match spsMnemonic "\%12cBZ"
syntax match spsMnemonic "\%12cBV"
syntax match spsMnemonic "\%12cBA"
syntax match spsMnemonic "\%12cBNL"
syntax match spsMnemonic "\%12cBNN"
syntax match spsMnemonic "\%12cBC[1234]"
syntax match spsMnemonicSp "\%12cBLC"
syntax match spsMnemonicSp "\%12cBXV"
" operational code 47 page 30
syntax match spsOpcode   "\%12cBNI"
syntax match spsMnemonic "\%12cBNH"
syntax match spsMnemonic "\%12cBNP"
syntax match spsMnemonic "\%12cBNE"
syntax match spsMnemonic "\%12cBNZ"
syntax match spsMnemonic "\%12cBNV"
syntax match spsMnemonic "\%12cBNA"
syntax match spsMnemonic "\%12cBL"
syntax match spsMnemonic "\%12cBA"
syntax match spsMnemonic "\%12cBNC[1234]"
syntax match spsMnemonicSp "\%12cBNLC"
syntax match spsMnemonicSp "\%12cBNXV"
syntax match spsOpcode   "\%12cC"
syntax match spsOpcode   "\%12cCF"
syntax match spsOpcode   "\%12cCM"
syntax match spsOpcode   "\%12cD"
syntax match spsOpcode   "\%12cDM"
syntax match spsOpcode   "\%12cDN"
syntax match spsOpcode   "\%12cH"
" operational code 34 page 35
syntax match spsOpcode   "\%12cK"
syntax match spsMnemonic "\%12c\(TB\|RC\|SP\)TY"
syntax match spsOpcode   "\%12cLD"
syntax match spsOpcode   "\%12cLDM"
syntax match spsOpcode   "\%12cM"
syntax match spsOpcode   "\%12cMF"
syntax match spsOpcode   "\%12cMM"
syntax match spsOpcode   "\%12cNOP"
syntax match spsOpcode   "\%12cRA"
" operational code 36 page 34
syntax match spsOpcode   "\%12cRN"
syntax match spsMnemonic "\%12cRN\(TY\|PT\|CD\)"
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
" operational code 39 page 35
syntax match spsOpcode   "\%12cWA"
syntax match spsMnemonic "\%12cWA\(TY\|PT\|CD\)"
" operational code 38 page 34
syntax match spsOpcode   "\%12cWN"
syntax match spsMnemonic "\%12cWN\(TY\|PT\|CD\)"
" page 17 Declarative Operations
syntax match spsDeclara  "\%12c\(DS\|DSS\|DAS\|DC\|DSC\|DAC\|DSA\|DSB\|DNB\)"
" page 36 Control Operations
syntax match spsControl  "\%12c\(DORG\|DEND\|SEND\|SHEAD\|TCD\|TRA\)"
syntax match spsComment2 "\%>15c,,,.*$" 

highlight def link spsComment1 Comment
highlight def link spsComment2 Comment
highlight def link spsLabel    Type
highlight def link spsOpcode   Statement
highlight def link spsMnemonic Statement
highlight def link spsMnemonicSp Statement
highlight def link spsDeclara  Macro
highlight def link spsControl  Macro

let b:current_syntax = "ibm-sps"
