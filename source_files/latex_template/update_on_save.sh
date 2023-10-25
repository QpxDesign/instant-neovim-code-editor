pdflatex main.tex
open main.pdf -a Preview.App
fswatch -r main.tex | xargs -n1 -I {} bash -c 'pdflatex main.tex'
