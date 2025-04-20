.PHONY: all clean test
all: clean build.jar tests.jar

clean:
	rm -f *.class
	rm -f z_src.jar build.jar z_tests.jar tests.jar

build.jar:
	# package files into a jar
	jar -cf z_src.jar -C src .

	# compile using krak into a build dir
	krak2 asm --out build.jar z_src.jar
	rm z_src.jar

tests.jar:
	jar -cf z_tests.jar -C tests .
	krak2 asm --out tests.jar z_tests.jar
	rm z_tests.jar

test:
	java -cp build.jar:tests.jar Main
