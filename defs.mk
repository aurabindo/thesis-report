LTX := pdflatex
MODE := nonstopmode
LTX_FLAGS := -halt-on-error
LTX_FLAGS += -interaction=$(MODE)
LTX_CC_TEST = $(shell $(LTX) $(LTX_FLAGS) $(SOURCE).tex > /dev/null 2>&1; echo $$?)

define lxt_cc
$(LTX) $(LTX_FLAGS) $(SOURCE).tex > /dev/null 2>&1
endef
