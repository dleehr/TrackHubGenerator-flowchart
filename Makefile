all: png svg
png: trackhub.png bigwigs.png
svg: trackhub.svg bigwigs.svg

%.png: %.dot
	dot -Tpng -o $@ $^

%.svg: %.dot
	dot -Tsvg -o $@ $^

clean:
	rm *.png
	rm *.svg
