sub pronoun{
my($in) = @_;
if($in=~/"�������"/){
      $pdgm="�������";
  }elsif($in=~/"������"/){
      $pdgm="������";
}
$pdgm;
}
1;
