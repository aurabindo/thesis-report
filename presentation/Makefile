include $(TOP_DIR)/defs.mk
BASE_DIR := $(shell basename $(CURDIR))
SOURCE := master

all:
	@echo -n 'Compiling your $(BASE_DIR).'
ifneq ($(LTX_CC_TEST),0)
	@echo ' '
	$(error 'Oops...some compile error occured. Check $(BASE_DIR)/$(SOURCE).log')
endif
	@echo -ne '.'
	@bibtex $(SOURCE) > /dev/null 2>&1
	$(call lxt_cc)
	@echo -ne '.'
	$(call lxt_cc)
	@echo -ne '.'
	@echo 'Done!'
	@echo 'Your report is presentation is presentation/$(SOURCE).pdf'
	@evince $(SOURCE).pdf & > /dev/null 2>&1
clean:
	@rm -rf *{.aux,.lof,.log,.lot,.nlo,.out,.pdf,.toc,.bbl,.blg,.snm,.nav,.vrb}
	@echo 'Presentation cleaned.'
