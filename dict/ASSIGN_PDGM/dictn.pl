sub napums{
my($in)=@_; 
  if(&sarvAxi($in)){
      if(($in=~/[ÏÖ]/) && ($in =~ /[ÏÖ][^Ñ¸¹º»¼½¾¿ÀÁÂÃÄÅÆÕ×]*"/)){
         $pdgm="³ÂÏ";
      } else {
      $in=$in.'"'."³ÂÌ";
      }
  }
  elsif($in=~/ÈÚ"/){
      $pdgm="ÕèÏÜÈÚ";
  }elsif($in=~/Û"/){
      if(($in=~/[ÏÖ]/) && ($in =~ /[ÏÖ][^Ñ¸¹º»¼½¾¿ÀÁÂÃÄÅÆÕ×]*"/)){
         $pdgm="ÔÚÏÛ";
      }
      else { $pdgm="ÄÅÛ"; }
  }
  elsif($in=~/Ü"/){
      $pdgm="×İÅÜ";
  }elsif($in=~/"¤ÆèÍÂÌ"/){
      $pdgm="¤ÆèÍÂÌ";
  }elsif($in=~/"¬³ÂÏ"/){
      $pdgm="¬³ÂÏ";
  }elsif($in=~/"×İÑİ"/){
      $pdgm="×İÑİ";
  }elsif($in=~/İ"/){
      $pdgm="ÌÅİ";
  }elsif($in=~/ß"/){
      $pdgm="ÅÚÂß";
  }elsif($in=~/å"/){
      $pdgm="ÈèÏÄèÍå";
  }elsif($in=~/â"/){
      $pdgm="ÈèÏÏâ";
  }elsif($in=~/æ"/){
      $pdgm="×İÆæ";
  }elsif($in=~/Øè"/){
      $pdgm="×èÔÆ¿İØè";
  }elsif($in=~/"¸ÂİÏè"/){
      $pdgm="¸ÂİÏè";
  }elsif($in=~/Ïè"/){
      $pdgm="ÔÚÏè";
  }elsif($in=~/"³ÛÌè"/){
      $pdgm="³ÛÌè";
  }elsif($in=~/"¦ÄÌè"/){
      $pdgm="¦ÄÌè";
  }elsif($in=~/"ÄÁè¿ÛÆè"/){
      $pdgm="ÄÁè¿ÛÆè";
  }elsif($in=~/ÈÃÛÆè"/){
      $pdgm="×İÈÃÛÆè";
}elsif($in=~/³ÏèÌÆè"/){
      $pdgm="³ÏèÌÆè";
}elsif($in=~/Æè"/){
      $pdgm="¤ØÆè";
  }elsif($in=~/ºè"/){
      $pdgm="©Ïèºè";
  }elsif($in=~/"ÂÄè"/){
      $pdgm="ÂÄè";
  }elsif($in=~/"ÍÄè"/){
      $pdgm="ÍÄè";
  }elsif($in=~/"¬ÂÄè"/){
      $pdgm="¬ÂÄè";
  }elsif($in=~/"µÔÚ¸è"/){
      $pdgm="µÔÚ¸è";
  }elsif($in=~/³ßÂè"/){
      $pdgm="Õ³ßÂè";
  }elsif($in=~/ÄÄÂè"/){
      $pdgm="ÄÄÂè";
  }elsif($in=~/ÄÂè"/){
      $pdgm="ÂİÄÂè";
  }elsif($in=~/Âè"/){
      $pdgm="È¸Âè";
  }elsif($in=~/Öè"/){
      $pdgm="ÅÆİÖè";
  }elsif($in=~/"¤Ä×è"/){
      $pdgm="¤Ä×è";
  }elsif($in=~/Ìè×è"/){

      $pdgm="×İÈİÌè×è";
  }elsif($in=~/×è"/){
      $pdgm="ÈÍ×è";
  }elsif($in =~ /[³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÈÉÊËÌÍÏÑÔÕÖ×Ø]"/) {
      if(($in=~/[ÏÖ]/) && ($in =~ /[ÏÖ][^Ñ¸¹º»¼½¾¿ÀÁÂÃÄÅÆÕ×]*"/)){
        $pdgm="ÈİÖèÈ";
      } 
      else 
      {
        $pdgm="ºè¼ÚÆ"; 
      }
  }
$pdgm;
}
1;

sub sarvAxi{
my($wrd)=@_;
if($wrd =~ /"×ÏèÔ"/){return 1;}
elsif($wrd =~ /"×ÏèÔÚ"/){return 1;}
elsif($wrd =~ /"³ÂÏ"/){return 1;}
elsif($wrd =~ /"³ÂÌ"/){return 1;}
elsif($wrd =~ /"ÔÛÕèÔ"/){return 1;}
elsif($wrd =~ /"¤ÆèÍ"/){return 1;}
elsif($wrd =~ /"¤ÆèÍÂÏ"/){return 1;}
elsif($wrd =~ /"¦ÂÏ"/){return 1;}
elsif($wrd =~ /"ÂèÔ"/){return 1;}
elsif($wrd =~ /"×Ì"/){return 1;}
elsif($wrd =~ /"×ÛÌ"/){return 1;}
else{return 0}
}
1;
