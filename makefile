all: temp

temp: main.tex
	pdflatex main.tex
	bibtex main
	pdflatex main.tex && open -g -a preview main.pdf

clean:
	rm main.{pdf,log,aux,bbl,blg}
