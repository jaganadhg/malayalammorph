sub female{
my($in)=@_;
  if(&sarvAxi($in)) {
      $pdgm="�����";
  }elsif($in=~/������"/){
      $pdgm="�����������";
  }elsif($in=~/"��������"/){
      $pdgm="��������";
  }elsif($in=~/"���"/){
      $pdgm="���";
  }elsif($in=~/��"/){
      $pdgm="����";
  }elsif($in=~/"������"/){
      $pdgm="���";
  }
#elsif($in=~/��"/){
elsif($in=~/�"/){
      $pdgm="���";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"ѳ�����"/){
      $pdgm="ѳ�����";
 }elsif($in=~/"������"/){
      $pdgm="������";
  }elsif($in=~/����"/){
      $pdgm="����";
  }elsif($in=~/"�������"/){
      $pdgm="�������";
  }elsif($in=~/"���"/){
      $pdgm="���";
  }elsif($in =~ /�"/){
    if(($in=~/[��]/) && ($in =~  /[���][^Ѹ����������������]*"/)){
        $pdgm="����";
    } else {      
        $pdgm="���";
    }
}elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/�"/){
      $pdgm="��������";
  }elsif($in=~/"�����"/){
      $pdgm="�����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/�"/){
      $pdgm="����";
  }elsif($in=~/�","Noun_f"/){
      $pdgm="����";
  }elsif($in=~/�","Noun_f"/){
      $pdgm="��";
  }elsif($in=~/�","Noun_f"/){
      $pdgm="��";
  } elsif($in =~/�"/){
    if(($in=~/[��]/) && ($in =~ /[��][^Ѹ����������������]*"/)){
        $pdgm="���";
    } else {      
        $pdgm="����";
    }
  }elsif($in=~/���"/){
      $pdgm="������";
  }elsif($in=~/"�������"/){
      $pdgm="�������";
  }elsif($in=~/��"/){
      $pdgm="�������";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/��"/){
      $pdgm="����";
  }elsif($in=~/"�����"/){
      $pdgm="�����";
  }elsif($in=~/����"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/���"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/"�����"/){
      $pdgm="�����";
  }elsif($in=~/"���"/){
      $pdgm="���";
  }elsif($in=~/�����"/){
      $pdgm="�����";
  }elsif($in=~/��"/){
      $pdgm="Ⱦ��";
  }elsif($in=~/ע���"/){
      $pdgm="ע���";
  }elsif($in=~/��"/){
      $pdgm="ע���";
  }elsif($in=~/"�ڸ�"/){
      $pdgm="�ڸ�";
  }elsif($in=~/��"/){
      $pdgm="�ڸ�";
  }elsif($in=~/"���"/){
      $pdgm="���";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }elsif($in=~/��"/){
      $pdgm="����";
  }elsif($in=~/"������"/){
      $pdgm="������";
  }elsif($in=~/������"/){
      $pdgm="������";
  }elsif($in=~/"�����"/){
      $pdgm="�����";
  }elsif($in=~/���"/){
      $pdgm="�����";
  }elsif($in=~/"׺���"/){
      $pdgm="׺���";
  }elsif($in=~/���"/){
      $pdgm="׺���";
  }elsif($in=~/"����"/){
      $pdgm="����";
  }  
$pdgm;
}
1;