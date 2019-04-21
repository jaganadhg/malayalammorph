sort ../raw_data/avy.t > junk1
wc -l junk1 > junk0
sed  '1,$s/$/,/' <junk1 >avy_temp.t
sed 's/\"\"\"/\"\\\"\"/' avy_temp.t > junk1
rm avy_temp.t
sed -e 's/^[ ]*//
        s/[A-Za-z].*$//' junk0 >> junk3
cat ../data_compile/avy_head.h junk1 ../data_compile/tail > avy.c
mv avy.c ../data/avy.c
sed '1s/^/#define SIZEOF_IND /' junk3 > const2.h
sed 's/^/int sizeof_ind = /' junk3 > junk5
sed 's/$/;/' junk5 > const2.c
rm junk?
