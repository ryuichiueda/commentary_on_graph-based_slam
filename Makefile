commentary_on_graph-based_slam.pdf: commentary_on_graph-based_slam.dvi
	#dvipdfmx commentary_on_graph-based_slam.dvi
	dvipdfmx commentary_on_graph-based_slam.dvi

commentary_on_graph-based_slam.dvi: *.tex
	platex commentary_on_graph-based_slam.tex
	pbibtex commentary_on_graph-based_slam.aux
	platex commentary_on_graph-based_slam.tex
	platex commentary_on_graph-based_slam.tex

clean:
	rm -f *.aux *.log *.dvi *.bbl *.blg *.ilg *.idx *.toc *.ind
