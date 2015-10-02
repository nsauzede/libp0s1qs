DIRS=$(shell find * -type d)
.PHONY: $(DIRS)
all check clean: $(DIRS)
	for d in $^; do \
		make -C $$d $@; \
	done
