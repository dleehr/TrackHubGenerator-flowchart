all: png svg
png: trackhub.png bigwigs.png workflow.png
svg: trackhub.svg bigwigs.svg workflow.svg

%.png: %.dot
	dot -Tpng -o $@ $^

%.svg: %.dot
	dot -Tsvg -o $@ $^

clean:
	rm *.png
	rm *.svg
