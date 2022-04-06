literature:
	xelatex literature-review.tex
	-bibtex  literature-review.aux
	xelatex literature-review.tex
	xelatex literature-review.tex
thesis:
	xelatex thesis.tex
	-bibtex  thesis.aux
	xelatex thesis.tex
	xelatex thesis.tex
midterm:
	xelatex midterm.tex
	-bibtex  midterm.aux
	xelatex midterm.tex
	xelatex midterm.tex
clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm
	find . -name 'tex2pdf*' -print0 | xargs -0 rm -rf
	rm -rf *.fdb*
depclean:
	clean
	rm -rf *.pdf
all:
	literature
	thesis
