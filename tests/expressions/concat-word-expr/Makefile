SHELL := /bin/bash

.PHONY: test
.SILENT: test

BUILD_JAR := ../../../build.jar
TEST_JAR := ../../../tests.jar

test:
	echo "ConcatWordExpr Tests:"
	$(eval OUTPUT := $(shell java -cp $(BUILD_JAR):$(TEST_JAR) expressions/concat-word-expr/can-concat/Main))
	echo $(OUTPUT)
	echo $(OUTPUT)