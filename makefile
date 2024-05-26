PLOTS:= plots/bateria.svg plots/ciclos.svg plots/uso.svg
MINDMAPS:= mindmaps/mindmap.svg

all: $(PLOTS) $(MINDMAPS) kbs-samuel_espejo_gil.pdf

kbs-samuel_espejo_gil.pdf: $(PLOTS) $(MINDMAPS) kbs-samuel_espejo_gil.md
	pandoc -o $@ kbs-samuel_espejo_gil.md

plots/%.svg: plots/plot.py
	$^

mindmaps/%.svg: mindmaps/%.dia
	dia -e $@ $^

#%.pdf: %.md
#	pandoc -o $@ $^

clear:
	rm *~ */*~ */*.svg

