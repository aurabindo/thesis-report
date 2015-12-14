DIRS = report presentation
BUILD_DIRS = $(DIRS:%=build-%)
CLEAN_DIRS = $(DIRS:%=clean-%)

all:	$(BUILD_DIRS)

$(BUILD_DIRS):
	$(MAKE) -C $(@:build-%=%)

clean:	$(CLEAN_DIRS)

$(CLEAN_DIRS):
	$(MAKE) -C $(@:clean-%=%) clean

.PHONY: $(DIRS) $(BUILD_DIRS) $(CLEAN_DIRS) clean all
