.PHONY: all clean test
all: clean build.jar tests.jar

clean:
	rm -f *.class
	rm -f z_src.jar build.jar z_tests.jar tests.jar

build.jar:
	# krak2 can assemble multiple files iff packaged in jar
	jar -cf z_src.jar -C src .
	krak2 asm --out build.jar z_src.jar
	rm z_src.jar

tests.jar:
	jar -cf z_tests.jar -C tests .
	krak2 asm --out tests.jar z_tests.jar
	rm z_tests.jar

test:
	cd tests && make test --no-print-directory
