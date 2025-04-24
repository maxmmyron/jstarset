include ../MAKE_HEAD

.PHONY: test
.SILENT: test

test:
	echo "ConcatWordExpr Tests:"
	@$(call test_return_expected,expressions/concat-word-expr/CanConcat,"Hello World")
	@$(call test_return_expected,expressions/bin-set-expr/CanUnion,"")