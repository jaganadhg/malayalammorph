sub napums{
my($in)=@_; 
  if(&sarvAxi($in)){
      if(($in=~/[��]/) && ($in =~ /[��][^Ѹ����������������]*"/)){
         $pdgm="���";
      } else {
      $in=$in.'"'."���";
      }
  }
  elsif($in=~/��"/){
      $pdgm="������";
  }elsif($in=~/�"/){
      if(($in=~/[��]/) && ($in =~ /[��][^Ѹ����������������]*"/)){
         $pdgm="����";
      }
      else { $pdgm="���"; }
  }
  elsif($in=~/�"/){
      $pdgm="����";
  }elsif($in=~/"������"/){
      $pdgm="������";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/�"/){
      $pdgm="���";
  }elsif($in=~/�"/){
      $pdgm="����";
  }elsif($in=~/�"/){
      $pdgm="�������";
  }elsif($in=~/�"/){
      $pdgm="�����";
  }elsif($in=~/�"/){
      $pdgm="����";
  }elsif($in=~/��"/){
      $pdgm="���ƿ���";
  }elsif($in=~/"�����"/){
      $pdgm="�����";
  }elsif($in=~/��"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"������"/){
      $pdgm="������";
  }elsif($in=~/�����"/){
      $pdgm="�������";
}elsif($in=~/������"/){
      $pdgm="������";
}elsif($in=~/��"/){
      $pdgm="����";
  }elsif($in=~/��"/){
      $pdgm="����";
  }elsif($in=~/"���"/){
      $pdgm="���";
  }elsif($in=~/"���"/){
      $pdgm="���";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"��ڸ�"/){
      $pdgm="��ڸ�";
  }elsif($in=~/����"/){
      $pdgm="ճ���";
  }elsif($in=~/����"/){
      $pdgm="����";
  }elsif($in=~/���"/){
      $pdgm="�����";
  }elsif($in=~/��"/){
      $pdgm="ȸ��";
  }elsif($in=~/��"/){
      $pdgm="�����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/����"/){

      $pdgm="��������";
  }elsif($in=~/��"/){
      $pdgm="����";
  }elsif($in =~ /[���������������������������������]"/) {
      if(($in=~/[��]/) && ($in =~ /[��][^Ѹ����������������]*"/)){
        $pdgm="�����";
      } 
      else 
      {
        $pdgm="����"; 
      }
  }
$pdgm;
}
1;

sub sarvAxi{
my($wrd)=@_;
if($wrd =~ /"����"/){return 1;}
elsif($wrd =~ /"�����"/){return 1;}
elsif($wrd =~ /"���"/){return 1;}
elsif($wrd =~ /"���"/){return 1;}
elsif($wrd =~ /"�����"/){return 1;}
elsif($wrd =~ /"����"/){return 1;}
elsif($wrd =~ /"������"/){return 1;}
elsif($wrd =~ /"���"/){return 1;}
elsif($wrd =~ /"���"/){return 1;}
elsif($wrd =~ /"��"/){return 1;}
elsif($wrd =~ /"���"/){return 1;}
else{return 0}
}
1;
