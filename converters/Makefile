SHELL = /bin/sh

TARGETS = ir ri

all: $(TARGETS)
FLEX = flex
CC = gcc
CFLAGS = -g -o

define run_flex
$(FLEX) $^
$(CC) $(CFLAGS) $@ lex.yy.c -lfl
rm lex.yy.c
endef

ir: ir.lex
	$(run_flex)

ri: ri.lex
	$(run_flex)

.PHONY: all

clean: 
	rm -f $(TARGETS)
