.PHONY: all clean run
all: clean build

clean:
	rm -f *.class src.jar build/*
	rmdir build

build:
	mkdir build
	# package files into a jar
	jar -cf src.jar -C src .

	# compile using krak into a build dir
	krak2 asm --out build src.jar

run:
	java -cp build Main
