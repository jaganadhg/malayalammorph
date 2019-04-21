wc -l feature_value >junk1
sed -e 's/^[ ]*//
        s/[A-Za-z].*$//' junk1 > junk2
sed '1s/^/#define TOTAL_FE_INFO  /' junk2 > const4.h
sed 's/^/int total_fe_info = /' junk2 > junk3
sed 's/$/;/' junk3 > const4.c
rm junk?
sed '1,$s/^/\"/
    1,$s/$/\",/' feature_value >junk
cat ../data_compile/feature_value.head junk ../data_compile/tail > feature_value.c
mv feature_value.c ../data/feature_value.c
rm junk
