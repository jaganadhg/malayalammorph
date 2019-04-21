export LANG=
sh ../data_compile/info.sh
sh ../data_compile/lext.sh
sh ../data_compile/main2.sh
make
rm -f ../data/suff 
rm -f ../data/uword.dbm
../data_compile/mk_dbm_suff
../data_compile/mk_dbm_uword
chmod 644 ../data/suff ../data/uword.dbm
