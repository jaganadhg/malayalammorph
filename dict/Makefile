SHELL = /bin/sh

TARGETS = dict_final

all: ${TARGETS}

.PHONY: all

dict_final: dict.final
	sort dict.final | ./join_dict.pl > dict_final.dbm.c
	rm -f dict_final
	./create_dbm_dict.pl dict_final < dict_final.dbm.c
	rm -f dict_final.dbm.c
	chmod 644 dict_final
clean:
	rm -f ${TARGETS}

