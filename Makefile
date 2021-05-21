MYSRC = $(wildcard *.ipynb)
MYBAS = $(MYSRC:%.ipynb=%)
MYCMD = jupyter nbconvert --to pdf

.PHONY: default all diag clean nocode showcode

default: nocode
all:     nocode showcode

diag:
	@echo MYSRC=$(MYSRC)
	@echo MYBAS=$(MYBAS)
	@echo MYCMD=$(MYCMD)
clean:
	rm -f *.pdf

%_showcode.pdf: %.ipynb Makefile
	$(MYCMD)            --output=$@ $<
	@echo ""

%_nocode.pdf:   %.ipynb Makefile
	$(MYCMD) --no-input --output=$@ $<
	@echo ""

showcode: $(foreach bas,$(MYBAS),$(bas)_showcode.pdf)
nocode:   $(foreach bas,$(MYBAS),$(bas)_nocode.pdf)
