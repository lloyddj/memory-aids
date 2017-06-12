SRC := $(shell find src -name "*.tex")
DOC := $(patsubst src/%.tex,build/%.pdf,$(SRC))

all: $(DOC)

build/%.pdf: src/%.tex
	pdflatex -output-directory build $<

clean:
	rm build/*

.PHONY: all clean
