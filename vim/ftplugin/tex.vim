""""""""""""
" Commands "
""""""""""""
" Compilation
command Tex write | :execute 'silent !pdflatex % &'

" LaTeX
command Article :read $HOME/.vim/ftplugin/tex/article.tex|normal kdd
command -narg=1 Texenv :normal o\begin{<args>}<CR>\end{<args>}<ESC>k$
command Itemize :read $HOME/.vim/ftplugin/tex/itemize.tex|normal j$
command Enumerate :read $HOME/.vim/ftplugin/tex/enumerate.tex|normal j$
command Graphics :read $HOME/.vim/ftplugin/tex/graphics.tex|normal $h
command Figure :read $HOME/.vim/ftplugin/tex/figure.tex|normal j$h
command Table :read $HOME/.vim/ftplugin/tex/table.tex|normal j$h
command Subfigure :read $HOME/.vim/ftplugin/tex/subfigure.tex|normal j$h
" TikZ
command Node :read $HOME/.vim/ftplugin/tex/node.tex|normal f[
" Beamer
command Presentation :read $HOME/.vim/ftplugin/tex/presentation.tex|normal kdd
command Frame :read $HOME/.vim/ftplugin/tex/frame.tex|normal $h
command Columns :read $HOME/.vim/ftplugin/tex/columns.tex|normal jf{
