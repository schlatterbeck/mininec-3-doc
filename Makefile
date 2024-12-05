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
    fig30.eps fig32.eps fig33.eps fig34.eps fig35.eps fig36.eps \
    fig37.eps fig38.eps fig39.eps fig41.eps fig42.eps fig43.eps \
    fig44.eps fig45.eps


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

authors = "J. C. Logan; J. W. Rockway"
title   = "The New MININEC (Version 3): A Mini-Numerical Electromagnetic Code"
%.pdf: %.ps
	ps2pdf $<
	exiftool -Author=$(authors) -Title=$(title) $@
	rm $@_original

%.ppm: %.png
	$(PNGTOPPM) $< > $@

%.eps: %.ppm
	$(PNMTOPS) $< > $@

clean:
	rm -f *.ppm *.eps  mininec3.bbl mininec3.log mininec3.ps \
	    mininec3.dvi mininec3.blg mininec3.aux

# vim: set noet sw=4 :
