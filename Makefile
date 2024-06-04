PNGTOPPM=pngtopnm -mix -background white
PNMTOPS=pnmtops -dpi 300 -equalpixels -noturn -rle
LATEX=latex
BIBTEX=bibtex

all: mininec3.pdf

mininec3.dvi: fig1.eps fig2.eps fig3.eps fig4.eps fig5.eps      \
    fig6.eps fig7.eps fig8.eps fig9.eps fig10.eps fig11.eps     \
    fig12.eps fig13.eps fig14.eps fig15.eps fig16.eps fig17.eps \
    fig18.eps fig19.eps fig20.eps fig21.eps fig22.eps fig23.eps \
    fig24.eps fig25.eps fig26.eps fig27.eps fig28.eps fig29.eps \
    fig30.eps

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

clean:
	rm -f *.ppm *.eps  mininec3.bbl mininec3.log mininec3.ps \
            mininec3.dvi mininec3.blg mininec3.aux
