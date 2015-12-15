include $(TOP_DIR)/defs.mk

SOURCE := master

all:
	@echo -n 'Compiling your presentation.'
	@$(LTX) $(LTX_FLAGS) $(SOURCE).tex  > /dev/null 2>&1
	@echo -ne '.'
	@bibtex $(SOURCE) > /dev/null 2>&1
	@$(LTX) $(LTX_FLAGS) $(SOURCE).tex > /dev/null 2>&1
	@echo -ne '.'
	@$(LTX) $(LTX_FLAGS) $(SOURCE).tex > /dev/null 2>&1
	@echo -ne '.'
	@echo 'Done!'
	@echo 'Your presentation is presentation/$(SOURCE).pdf'
	@evince $(SOURCE).pdf & > /dev/null 2>&1

clean:
	@rm -rf *{.aux,.lof,.log,.lot,.nlo,.out,.pdf,.toc,.bbl,.blg,.snm,.nav,.vrb}
	@echo 'Presentation cleaned.'
