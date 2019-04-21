open(in1,"<dict.final");
open(out,">dict1");
while(<in1>){
chomp($_);
if(/\".*_.*(\",).*(\",).*(\",).*(\",).*(\",).*/){
$i=$_;
s/_//;
print out $_."\n";
}
else
{
print out $_."\n";
}
}
