sort -T /tmp suff_info >sorted
mv sorted suff_info
gcc -g -o suff_add_ptr.out ../data_compile/suff_add_ptr.c
./suff_add_ptr.out
mv pdgm_offset_info ../data
wc -l suff_info.c >junk1
sed -e 's/^[ ]*//
    s/[A-Za-z].*$//' junk1 >> junk2
cat ../data_compile/suff_info1.head suff_info.c ../data_compile/tail >junk3
rm suff_info.c
mv junk3 ../data/suff_info.c
sed '1s/^/#define SIZEOF_SUFF_ADD /' junk2 > const3.h
sed 's/^/int sizeof_suff_add = /' junk2 > junk4
sed 's/$/;/' junk4 > const3.c
rm junk?
rm suff_add_ptr.out
