include ../MAKE_HEAD

.PHONY: test
.SILENT: test

test:
	echo "Word Tests:"
	@$(call test_returns_nil,datatypes/word/can-be-empty/Main)

	echo "Set Tests:"
	@$(call test_returns_nil,datatypes/set/can-instantiate-empty/Main)
	@$(call test_returns_nil,datatypes/set/can-instantiate-nonempty/Main)