SHELL := /bin/bash

.PHONY: test
.SILENT: test

BUILD_JAR := ../../../build.jar
TEST_JAR := ../../../tests.jar

test:
	echo "Word Tests:"
	$(eval OUTPUT := $(shell java -cp $(BUILD_JAR):$(TEST_JAR) datatypes/word/can-be-empty/Main))
	echo $(OUTPUT)