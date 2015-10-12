all: bigwigs.png

%.png: %.dot
	dot -Tpng -o $@ $^
