
"if exists("b:current_syntax")
"  finish
"endif


syn spell toplevel
syn case ignore
syn sync linebreaks=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set embedded LaTex (pandox extension) highlighting
" Unset current_syntax so the 2nd include will work
unlet b:current_syntax
syn include @LATEX syntax/tex.vim

"   Single Tex command
syn match pdcLatex	/\\\w\+{[^}]\+}/	contains=@LATEX

"   Tex Block (begin-end)
syn region pdcLatex start=/\\begin{[^}]\+}\ze/ end=/\ze\\end{[^}]\+}/ contains=@LATEX 

"   Math Tex
syn match pdcLatex	/$[^$]\+\$/	   contains=@LATEX


let b:current_syntax = "markdown"

