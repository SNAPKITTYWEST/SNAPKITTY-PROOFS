# Copyright © 2026 SnapKitty Collective LLC. All rights reserved.
# Licensed under Business Source License 2.0 (BSL-2.0).
# Change Date: December 31, 2027 — after which, licensed under AGPL-3.0-only.
# See LICENSE for complete terms.

PAPER = paper
LATEX = pdflatex
BIBTEX = bibtex

.PHONY: all clean watch

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex $(PAPER).bib
	$(LATEX) $(PAPER)
	$(BIBTEX) $(PAPER)
	$(LATEX) $(PAPER)
	$(LATEX) $(PAPER)

# Requires latexmk: tlmgr install latexmk
watch:
	latexmk -pdf -pvc $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz

distclean: clean
	rm -f $(PAPER).pdf
