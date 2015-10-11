SRC=src
TARGET=target

compile: $(SRC)/resume.md
	mkdir -p target
	pandoc -V geometry:margin=1in $(SRC)/resume.md -o $(TARGET)/resume.pdf

view: $(TARGET)/resume.pdf
	evince $(TARGET)/resume.pdf &

refresh: $(SRC)/resume.md
	mkdir -p target
	while true; do \
	  pandoc -V geometry:margin=1in $(SRC)/resume.md -o $(TARGET)/resume.pdf; \
	  sleep 1; \
	done;

clean:
	rm -rf target/
