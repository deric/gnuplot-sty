Gnuplot-sty
===========

A simple LaTeX package for including gnuplot charts into a document.

Install
-------
Place `gnuplot.sty` either to same folder as your document or (for system wide install) copy the file to TeX distrubution folder.

- on Debian like distros:
  
    sudo mkdir /usr/share/texmf-texlive/tex/latex/gnuplot
    sudo cp gnuplot.sty /usr/share/texmf-texlive/tex/latex/gnuplot/gnuplot.sty
    sudo texhash

Usage
-----

Insert following into your preamble:

    \usepackage[pdftex]{graphicx} 
    \usepackage{gnuplot}


Test plot:

    \begin{gnuplot}[scale=0.9]{test}
	test
    \end{gnuplot}

By default output format is pdf and it's stored in same folder as your LaTeX document. If you want to change this,
define a directory name (this directory must exists):

      \def\gnuplotDir{gnuplot}

Compile
--------

To make it work, you have to add `-shell-escape` option to `pdflatex`

    pdflatex -shell-escape *.tex

It allows `pdflatex` to execute bash commands which is generally unsafe option. Make sure that `gnuplot.sty` does not containg any `rm -rf` commands :) 


