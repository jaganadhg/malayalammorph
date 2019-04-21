echo preparing lex.c
cp ../data_compile/convt_t2.c .
cc -g -o cvt.out convt_t2.c ../data_compile/getline.c
rm convt_t2.c
./cvt.out
rm cvt.out
rm lex.c
echo preparing avy.c
sh ../data_compile/avy.sh
echo preparing offset and feature_value files
cc -g -o gen_fe_val_off.out ../data_compile/gen_fe_val_off.c ../data_compile/getfileword.c ../data_compile/getline.c
./gen_fe_val_off.out
rm gen_fe_val_off.out
echo preparing suff_info
cp ../data_compile/suff_gen.c .
cc -g -o suff_gen.out suff_gen.c ../data_compile/getfileword.c
./suff_gen.out 2
rm suff_gen.out suff_gen.c
cp suff_info suff_info.bak
echo sorting suff_info
sh ../data_compile/suff.sh
rm suff_info.bak
echo separating suff and add from other information
sh ../data_compile/feature_value.sh
sh ../data_compile/cat.sh
rm suff_info
rm offset
rm feature_value
rm info.h
rm lext.h
