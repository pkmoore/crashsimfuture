PAPER=paper
all: pdf
pdf: $(PAPER).pdf

TEX   = paper.tex \
        $(TEXT)

FIGS = $(wildcard figures/*.*)
#FIGS = \
#   PLtime.eps

#PS2PDF = ps2pdf14
PS2PDF = ps2pdf

$(PAPER).pdf: $(TEX) $(FIGS)
	pdflatex $(PAPER); pdflatex $(PAPER); pdflatex $(PAPER)

DELATEX = detex -l -n 

clean:
	/bin/rm -f $(PAPER).aux $(PAPER).bbl $(PAPER).blg $(PAPER).dvi \
	$(PAPER).log $(PAPER).ps $(PAPER).out $(PAPER).pdf

ocd: clean
	/bin/rm -f *.*~ *~

