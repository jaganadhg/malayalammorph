sh ../data_compile/lext_print.sh > junk0
sed '/avy.t/ d' junk0 > junk4
sed '$s/,//' junk4 > junk0 
wc -l junk0 > junk1
sed -e 's/^[ ]*//
        s/[A-Za-z].*$//' junk1 >> junk2
sed '1s/^/#define totalf /' junk2 > junk3
cat junk3 ../data_compile/lext_head junk0 ../data_compile/tail > lext.h
rm junk?
