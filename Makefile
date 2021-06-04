MYSRC = $(wildcard src/*.ipynb)
MYBAS = $(notdir $(MYSRC:%.ipynb=%))
MYCMD = jupyter nbconvert --to pdf

.PHONY: default all diag clean nocode showcode

default: nocode
all:     nocode showcode

diag:
	@echo MYSRC=$(MYSRC)
	@echo MYBAS=$(MYBAS)
	@echo MYCMD=$(MYCMD)
clean:
	rm -f out/*.pdf

out/%_showcode.pdf: src/%.ipynb Makefile
	$(MYCMD)            --output=$@ $<
	@echo ""

out/%_nocode.pdf:   src/%.ipynb Makefile
	$(MYCMD) --no-input --output=$@ $<
	@echo ""

showcode: $(foreach bas,$(MYBAS),out/$(bas)_showcode.pdf)
nocode:   $(foreach bas,$(MYBAS),out/$(bas)_nocode.pdf)
