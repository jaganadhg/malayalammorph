open(in1,"<noun_m.p");
open(out1,">dict1");

while(<in1>){
chomp($_);
$i=$_;
print $i;
open(in2,"<dict.final");
while(<in2>){
chomp($_);
if(/\"($i)\"/){
if(/\"noun_n\"/){
s/noun_n/noun_m/;
print out1 $_."\n";}
}
}
close(in2);
}
close(in1);
close(in3);
