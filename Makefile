all: bigwigs.png trackhub.png

%.png: %.dot
	dot -Tpng -o $@ $^
