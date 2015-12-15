DIRS = report presentation
BUILD_DIRS = $(DIRS:%=build-%)
CLEAN_DIRS = $(DIRS:%=clean-%)

export TOP_DIR = $(shell pwd)

include $(TOP_DIR)/defs.mk

all:	$(BUILD_DIRS)

$(DIRS):
	@$(MAKE) -sC $@

$(BUILD_DIRS):
	@$(MAKE) -sC $(@:build-%=%)

clean:	$(CLEAN_DIRS)

$(CLEAN_DIRS):
	@$(MAKE) -sC $(@:clean-%=%) clean

.PHONY: $(DIRS) $(BUILD_DIRS) $(CLEAN_DIRS) clean all
