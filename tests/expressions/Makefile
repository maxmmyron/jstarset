include ../MAKE_HEAD

.PHONY: test
.SILENT: test

test:
	echo "ConcatWordExpr Tests:"
	@$(call test_returns_lit,expressions/concat-word-expr/CanConcat,"Hello World")
	echo "BinSetExpr Tests:"
	@$(call test_returns_lit,expressions/bin-set-expr/CanUnion,"5")
	@$(call test_returns_lit,expressions/bin-set-expr/CanDifference,"2")
	@$(call test_returns_lit,expressions/bin-set-expr/CanIntersect,"1")