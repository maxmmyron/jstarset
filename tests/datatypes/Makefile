include ../MAKE_HEAD

.PHONY: test
.SILENT: test

test:
	echo "Word Tests:"
	@$(call test_returns_nil,datatypes/word/CanInstantiateNoArgs)
	@$(call test_returns_nil,datatypes/word/CanInstantiateWithArgs)
	@$(call test_returns_nil,datatypes/word/HasLitValue)
	@$(call test_returns_nil,datatypes/word/HasNumValue)
	@$(call test_returns_lit,datatypes/word/CanStringify,"ABC")

	echo "Set Tests:"
	@$(call test_returns_nil,datatypes/set/CanInstantiateNoArgs)
	@$(call test_returns_nil,datatypes/set/CanInstantiateWithArgs)
	@$(call test_returns_lit,datatypes/set/CanStringify,"")