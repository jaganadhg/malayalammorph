sub pronoun{
my($in) = @_;
if($in=~/"อÝึ่ฬฤ่"/){
      $pdgm="อÝึ่ฬฤ่";
  }elsif($in=~/"คื่ฬฤ่"/){
      $pdgm="คื่ฬฤ่";
}
$pdgm;
}
1;
