NAME=hw1
IN_TEX=${NAME}.tex
OUT_PDF=${NAME}.pdf

all: ${OUT_PDF}

%.pdf: %.tex $(shell find ${NAME} -type f -name '*.tex')
	pdflatex $<

clean:
	rm -f ${NAME}.log ${NAME}.aux ${NAME}.out ${NAME}.pdf
