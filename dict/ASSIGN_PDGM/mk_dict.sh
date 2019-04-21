cut -d, -f1 j > f1
cut -d, -f2 j > f2
cut -d, -f3 j > f3
paste f1 f3 f2 > j1
sed '1,$s/	/,"1",/' < j1 | sed '1,$s/	/,/' | sed '1,$s/$/,"meaning","sanskrit"/' | sed '1,$s/"Noun_/"noun_/' > j2
ir < j2 | sed '1,$s/@//g' > j3
