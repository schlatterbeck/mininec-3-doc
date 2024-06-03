PNGTOPPM=pngtopnm -mix -background white
PNMTOPS=pnmtops -dpi 300 -equalpixels -noturn -rle
LATEX=latex

all: mininec3.pdf

mininec3.dvi: fig1.eps fig2.eps fig3.eps fig4.eps fig5.eps \
    fig6.eps fig7.eps fig8.eps fig9.eps fig10.eps fig11.eps

%.dvi: %.tex
	$(LATEX) $<
	if grep -s "^LaTeX Warning: Citation" $*.log ; \
	then \
	    $(BIBTEX) $* && \
	    $(LATEX) $< ; \
	fi
	while grep -Es \
	    "Rerun to get cross-references right|rerunfilecheck Warning:" \
	    $*.log ; \
	do \
	    $(LATEX) $< ;\
	done

%.ps: %.dvi
	dvips $<

%.pdf: %.ps
	ps2pdf $<

%.ppm: %.png
	$(PNGTOPPM) $< > $@

%.eps: %.ppm
	$(PNMTOPS) $< > $@
