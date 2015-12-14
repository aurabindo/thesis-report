SOURCE = master

all:
	pdflatex $(SOURCE).tex
	bibtex $(SOURCE)
	pdflatex $(SOURCE).tex
	pdflatex $(SOURCE).tex
	evince $(SOURCE).pdf &

clean:
	rm -rf $(SOURCE){.aux,.lof,.log,.lot,.nlo,.out,.pdf,.toc,.bbl,.blg}
