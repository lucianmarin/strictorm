STRICTA  ?= ../stricta/stricta
STRLIB   ?= ../strlib
STRICTQL ?= ../strictql

.PHONY: test clean

test:
	@set -e; \
	for f in tests/test_*.str; do \
		name=$$(basename "$$f" .str); \
		$(STRICTA) -I . -I $(STRLIB) -I $(STRICTQL) "$$f" -o "/tmp/strictorm_$$name"; \
		"/tmp/strictorm_$$name"; \
		rm -f "/tmp/strictorm_$$name"; \
	done; \
	echo "ALL STRICTORM TESTS PASSED"

clean:
	rm -f *.ll *.o
