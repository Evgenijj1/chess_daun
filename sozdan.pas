{����������� ���� ������}
unit sozdan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Image1: TImage;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ListBox2: TListBox;
    GroupBox5: TGroupBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    ComboBox10: TComboBox;
    Edit1: TEdit;
    Label2: TLabel;
    procedure faily;
    procedure FormCreate(Sender: TObject);
    procedure destroydos;
    procedure Doska;
    procedure figures;
    procedure reshenie;
    procedure cliCkfig;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure perehod;
    procedure ComboBox2Change(Sender: TObject);
    procedure zadach;
    procedure xglobxxx;
    procedure vyvfigures(cl,t:char;px,py:integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
  Tshdos=class(Tpanel)
    private
    Dx,Dy:integer;
    Ffigure:byte;
    public
    procedure Click;override;
    property px:integer read Dx write Dx;
    property py:integer read Dy write Dy;
    property figure:byte read Ffigure write Ffigure;
  end;
  Tfigures=class(TImage)
  private
    Fx,Fy:integer;
    Fkill:boolean;
    Fcolor:string;
    Ftypefig:string;
    public
    procedure Click;override;
    property px:integer read Fx write Fx;
    property py:integer read Fy write Fy;
    property color:string read Fcolor write Fcolor;
    property typefig:string read Ftypefig write Ftypefig;
  end;

  const
  //������������ �����
  Dostop=-15;
  Dosleft=25;
  //���-�� ������ �� ������ � �����
  kolklsh=8;
  kolkldl=8;
  //������ ������
  widthkl=45;
  //����� ������
  heightkl=50;
  //���������� �����
  kolfigur=32;

var
  Form1: TForm1;
  fig:array [1..8,1..8] of tfigures;
  dos:array[1..kolklsh,1..kolkldl] of Tshdos;
  razm:array[1..kolkldl] of Tlabel;
  masfig:Tfigures;
  figurwhite:array[1..kolfigur] of string;
  figurblack:array[1..kolfigur] of string;
  pxnac,pynac,pxcon,pycon,shetch,xxx:integer;
  clicked:tshdos;
  figura1,figura:tfigures;
  hod,zadacha,fam,noz:string;
  masreshen:array[1..100] of integer;
  vspmasreshen:array[1..100] of boolean;
  zap:array[1..100] of integer;
  l200,l,flag:boolean;
  index:integer;
  xglob,schetzadan,rr:integer;
  white_black,typef:char;
implementation

                      { R - �����
                        B - ����
                        N - ����
                        K - ������
                        Q - �����
                        P - �����}
{$R *.dfm}

{ Tshdos }

procedure Tshdos.Click;
procedure clk;
begin

  inherited;
  if clicked<>nil then
  begin
  clicked:=tshdos(Self);
  form1.clickfig;
//  form1.Caption:=inttostr(clicked.px);
  end;
  {figura1.Parent:=clicked;}

  {figura1.px:=clicked.px;
  figura1.py:=clicked.py;}
   { form1.Caption:=inttostr(clicked.dx)+','+inttostr(clicked.py);}
   end;
{procedure sravn;
var cnx,ckx,cny,cky,x:integer;
    fi:char;
begin
  if clicked<>nil then
  begin
  fi:=hod[1];
  cnx:=ord(hod[2])-96;
  cny:=strtoint(hod[3]);
  ckx:=ord(hod[5])-96;
  cky:=strtoint(hod[6]);
  l:=false;
  {if (fi=figura.typefig) and (cnx=pxnac) and (cny=pynac) and (ckx=pxcon) and (cky=pycon) then l:=true;}
  {if  (cnx=pxnac) and (cny=pynac) and (ckx=pxcon) and (cky=pycon) then l:=true;

// form1.Caption:=inttostr(pynac);
   end;
  //form1.Caption:=inttostr(pynac);
end;}
{procedure uvel;
var x:integer;
    c:char;
begin
  c:=zadacha[1];
  x:=strtoint(c);
  x:=x+1;
  zadacha:=inttostr(x)+')';
end;   }
begin    {�������� ��������� ���������}

if flag then
begin
clk;
//sravn;
{if l then begin
showmessage('��� ������ ���������');
  shetch:=shetch+1;
form1.reshenie;
  form1.perehod;
end
else begin
showmessage('��� ������ �����������');
  form1.destroydos;
  form1.Doska;
  form1.figures;
  shetch:=shetch+1;
form1.reshenie;
end;}
//if masreshen[xxx]=2 then form1.perehod;
form1.xglobxxx;
flag:=false;
end
else
begin


  clicked:=tshdos(Self);
    pxnac:=clicked.px;
  pynac:=clicked.py;
  figura1:=fig[pxnac,pynac];
  figura:=figura1;
  if figura1<>nil then
  flag:=true;
  end;

   form1.vyvfigures(white_black,typef,clicked.px,clicked.py);
end;

procedure Tfigures.Click;
begin
  inherited;
  figura1:=tfigures(self);
  figura:=figura1;
 clicked:=dos[figura1.px,figura1.py];
  pxnac:=px;
  pynac:=py;
  flag:=true;     
  form1.vyvfigures(white_black,typef,clicked.px,clicked.py);
  //form1.Caption:=inttostr(clicked.px)+','+inttostr(figura1.py);
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
listbox2.Items.SaveToFile(combobox3.Text+'.txt');
end;

procedure TForm1.Button2Click(Sender: TObject);
var mw,mb,mm:string;
    i,j,ll,kk:integer;
    lk:boolean;
begin
lk:=false;
for j := 1 to 8 do for i := 1 to 8 do if  not (fig[j,i]=nil) then lk:=true;
if lk then
if (combobox5.Text='') or (combobox6.Text='') or (combobox7.Text='') or (combobox8.Text='') or (combobox9.Text='') then showmessage('������� ���������� �������') else
begin
//form1.Caption:='brbrtg';
listbox2.Items.Add(combobox4.Text+')');
listbox2.Items.Add(combobox10.Text);
listbox2.Items.Add(edit1.Text);
{if (fig[1,1]<>nil) then
form1.ListBox2.items.Add(fig[1,1].typefig);}
for j :=1 to 8 do  begin
  for i := 1 to 8 do begin
    if (fig[i,j]<>nil) and (fig[i,j].color='w') then mw:=mw+fig[i,j].typefig+chr(j+96)+inttostr(i)+',';
    if (fig[i,j]<>nil) and (fig[i,j].color='b') then mb:=mb+fig[i,j].typefig+chr(j+96)+inttostr(i)+',';
  end;
end;
  ll:=length(mw);
  delete(mw,ll,1);
  mw:=mw+'.';
  ll:=length(mb);
  delete(mb,ll,1);
  mb:=mb+'.';
  listbox2.Items.Add('�����:'+mw);
  listbox2.Items.Add('׸����:'+mb);
    if combobox5.Text='������' then mm:='K';
    if combobox5.Text='�����' then mm:='Q';
    if combobox5.Text='����' then mm:='B';
    if combobox5.Text='�����' then mm:='R';
    if combobox5.Text='�����' then mm:='P';
    if combobox5.Text='����' then mm:='N';
  listbox2.Items.Add(mm+combobox6.Text+combobox7.Text+'-'+combobox8.Text+combobox9.Text);
  kk:=strtoint(combobox4.Text);
  kk:=kk+1;
  combobox4.Text:=inttostr(kk);
  form1.ListBox2.Items.SaveToFile(combobox3.Text+'.txt');
end
else showmessage('��������� ������');
end;

procedure TForm1.cliCkfig;
begin
 {figura1.Parent:=clicked;
  pxcon:=clicked.px;
  pycon:=clicked.py;}
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  xxx:=combobox1.ItemIndex+1;
  zadacha:=inttostr(xxx)+')';
  l200:=true;
  shetch:=zap[xxx];
  form1.destroydos;
  form1.Doska;
  form1.figures;
end;
procedure TForm1.ComboBox2Change(Sender: TObject);
var i,l7:integer;
begin
{combobox1.Clear;
noz:=noz+'.zad';
listbox1.Items.SaveToFile(noz);
listbox1.Clear;
    xxx:=1;
    index:=0;
    shetch:=0;
    l:=false;
    zadacha:='1)';
    for i := 1 to 100 do begin
    masreshen[i]:=0;
    zap[i]:=0;
    vspmasreshen[i]:=false;
    end;
form1.destroydos;
form1.Doska;
form1.figures;
form1.zadach;
noz:=combobox2.Text;}
end;

procedure TForm1.destroydos;
var i,j:integer;
begin
for i := 1 to 8 do
  for j := 1 to 8 do
    dos[i,j].Destroy;
end;

procedure TForm1.Doska;
var i,j,x1,y1,z,m:integer;
begin
//���������� �����
   x1:=Dosleft;
   y1:=Dostop;
   z:=1;
   for j := kolklsh downto 1 do begin
   if (j mod 2)=0 then z:=2 else z:=1;
   x1:=Dosleft;
   y1:=y1+heightkl;
      for i := 1 to kolkldl do begin
       dos[j,i]:=Tshdos.Create(self);
       with dos[j,i] do begin
          parent:=form1;
          Width:=widthkl;
          Height:=heightkl;
          Top:=y1;
          Left:=x1;
          x1:=x1+widthkl;
          //visible:=false;
          px:=j;
          py:=i;
          if (z mod 2)=0 then Color:=clwhite else Color:=clblack;
       end;
       z:=z+1;
     end;
     end;
       m:=97;
       x1:=dosleft;
     y1:=dostop;
       for i := 1 to kolkldl do begin
          razm[i]:=Tlabel.Create(self);
          with razm[i] do begin
            parent:=form1;
            width:=dosleft;
            height:=dostop;
            top:=dostop+20;
            left:=dosleft;
            Top:=y1+(heightkl*9);
            Left:=x1+(widthkl div 2);
            Font.Size:=15;
            Caption:=chr(m);
            m:=m+1;
            x1:=x1+widthkl;
          end;
       end;
       y1:=dostop+(kolklsh*heightkl)+(heightkl div 2);
       x1:=dosleft;
       x1:=dosleft;
       y1:=dostop;
          m:=8;
          for i := 1 to kolkldl do begin
            razm[i]:=Tlabel.Create(self);
            with razm[i] do begin
              parent:=form1;
             // Width:=15;
              //Height:=15;
              Top:=y1+((heightkl*5)div 4);
              Left:=dosleft-(widthkl div 3);
              Font.Size:=15;
              Caption:=inttostr(m);
              m:=m-1;
            end;
       y1:=y1+heightkl;
       end;
       end;

procedure TForm1.faily;
var x,r:integer;
ss:string;
d:tsearchrec;
begin
  schetzadan:=0;
  x:=findfirst('*.txt',faanyfile,d);
  while x=0 do begin
    schetzadan:=schetzadan+1;
    ss:=d.Name;
    r:=length(ss);
    delete(ss,r-3,4);
    combobox2.Items.Add(ss);
    x:=findnext(d);
  end;
end;
//����������� �����
procedure TForm1.figures;
  procedure vyv(cl,t:char;px,py:integer);
  var x,i,j:integer;
  begin
    masfig:=tfigures.Create(self);
    if (cl='w') and (t='R') then masfig.Picture.LoadFromFile('����� �����.bmp');
    if (cl='w') and (t='B') then masfig.Picture.LoadFromFile('���� �����.bmp');
    if (cl='w') and (t='N') then masfig.Picture.LoadFromFile('���� �����.bmp');
    if (cl='w') and (t='K') then masfig.Picture.LoadFromFile('������ �����.bmp');
    if (cl='w') and (t='Q') then masfig.Picture.LoadFromFile('����� �����.bmp');
    if (cl='w') and (t='P') then masfig.Picture.LoadFromFile('����� �����.bmp');
    if (cl='b') and (t='P') then masfig.Picture.LoadFromFile('����� ������.bmp');
    if (cl='b') and (t='R') then masfig.Picture.LoadFromFile('����� ������.bmp');
    if (cl='b') and (t='B') then masfig.Picture.LoadFromFile('���� ������.bmp');
    if (cl='b') and (t='N') then masfig.Picture.LoadFromFile('���� ������.bmp');
    if (cl='b') and (t='K') then masfig.Picture.LoadFromFile('������ ������.bmp');
    if (cl='b') and (t='Q') then masfig.Picture.LoadFromFile('����� ������.bmp');
    masfig.typefig:=t;
    masfig.Parent:=dos[px,py];
    masfig.Left:=masfig.Left+(widthkl div 4);
    masfig.Width:=widthkl div 2;
    masfig.Height:=heightkl-(heightkl div 13);
    masfig.Top:=masfig.Top+(heightkl div 20);
    masfig.Transparent:=true;
    masfig.px:=px;
    masfig.py:=py;
    masfig.Transparent:=true;
    masfig.Stretch:=true;
    fig[px,py]:=masfig;
    end;
  {procedure chit;
    var i,j,x,k1,k2:integer;
    f:textfile;
    cv,vs,ccc,hit,s1:string;
    figura:string;
    c,c1,zn:char;
    begin
        assignfile(f,combobox2.Text+'.txt');
        reset(f);
        repeat
            readln(f,ccc);
        until zadacha=ccc;
        readln(f,hit);
        label3.Caption:=hit+' ';
        readln(f,hit);
        label4.Caption:=hit+' ';
        readln(f,cv);
        x:=pos(':',cv);
        delete(cv,1,x);
        while cv<>'' do begin
          x:=pos(',',cv);
          if x=0 then x:=pos('.',cv);
          s1:=copy(cv,1,x-1);
          c:=s1[1];
          k1:=ord(s1[2])-96;
          k2:=strtoint(s1[3]);
          vyv('w',c,k1,k2);
          delete(cv,1,x);
        end;
        readln(f,cv);
        x:=pos(':',cv);
        delete(cv,1,x);
        while cv<>'' do begin
          x:=pos(',',cv);
          if x=0 then x:=pos('.',cv);
          s1:=copy(cv,1,x-1);
          c:=s1[1];
          k1:=ord(s1[2])-96;
          k2:=strtoint(s1[3]);
          vyv('b',c,k1,k2);
          delete(cv,1,x);
        end;
    readln(f,hod);
    closefile(f);
    end;        }
begin
    {vyv('w','P',1,1);
    vyv('w','R',2,2);
    vyv('w','B',5,7);
    vyv('w','N',4,8);
    vyv('w','K',1,3);
    vyv('w','Q',1,7);
    vyv('w','P',6,8);
    vyv('w','P',4,7);
    vyv('b','P',5,8);
    vyv('b','R',2,9);
    vyv('b','B',5,2);
    vyv('b','N',7,4);
    vyv('b','K',3,8);
    vyv('b','Q',8,3);
    vyv('b','P',7,5);
    vyv('b','P',3,2);}
   // chit;
end;
//����� ��������, ��� ������� �����
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {noz:=noz+'.zad';
  listbox1.Items.SaveToFile(noz);}
end;

procedure TForm1.FormCreate(Sender: TObject);
var j,i:integer;
begin
    listbox2.Left:=widthkl*9-(widthkl div 3);
    form1.Width:=listbox2.Left+listbox2.Width+panel1.Width+5;
  { for j :=1 to 8 do for i := 1 to 8 do fig[j,i].typefig:='1';}
   rr:=0;
   flag:=false;
   zadacha:='1)';
   l200:=false;
   l:=false;
   index:=0;
   //fam:=inputbox('�������','������� ������� � ���','');
   //listbox1.Items.Add(fam);
shetch:=0;
   noz:=combobox2.Text;
   for i := 1 to 100 do begin
   vspmasreshen[i]:=false;
   zap[i]:=0;
   end;
xxx:=1;
   Doska;
   form1.destroydos;
   doska;
   figures;
   zadach;
   form1.faily;
end;

procedure TForm1.perehod;
var ss:string;
    x:integer;
begin
if (vspmasreshen[xxx]=false) and (masreshen[xxx]=2) then begin
    if hod[1]='P' then listbox1.Items[xxx-1]:=listbox1.Items[xxx-1]+'�� ������: ����� '+hod[2]+hod[3]+hod[4]+hod[5]+hod[6];
    if hod[1]='Q' then listbox1.Items[xxx-1]:=listbox1.Items[xxx-1]+'�� ������: ����� '+hod[2]+hod[3]+hod[4]+hod[5]+hod[6];
    if hod[1]='K' then listbox1.Items[xxx-1]:=listbox1.Items[xxx-1]+'�� ������: ������ '+hod[2]+hod[3]+hod[4]+hod[5]+hod[6];
    if hod[1]='B' then listbox1.Items[xxx-1]:=listbox1.Items[xxx-1]+'�� ������: ���� '+hod[2]+hod[3]+hod[4]+hod[5]+hod[6];
    if hod[1]='R' then listbox1.Items[xxx-1]:=listbox1.Items[xxx-1]+'�� ������: ����� '+hod[2]+hod[3]+hod[4]+hod[5]+hod[6];
    if hod[1]='N' then listbox1.Items[xxx-1]:=listbox1.Items[xxx-1]+'�� ������: ���� '+hod[2]+hod[3]+hod[4]+hod[5]+hod[6];
end;
if vspmasreshen[xxx] then begin
if masreshen[xxx]>0 then begin
  ss:='������ � '+inttostr(masreshen[xxx])+'-� �������';
  listbox1.Items[xxx-1]:=listbox1.Items[xxx-1]+ss;
end;
end;
index:=index+1;
xxx:=index+1;
if combobox1.Items[index]<>'' then begin
combobox1.Enabled:=true;
combobox1.Text:=combobox1.Items[index];
combobox1.Enabled:=false;
  x:=strtoint(zadacha[1]);
  x:=x+1;
  zadacha:=inttostr(x)+')';
  l200:=true;
  shetch:=zap[xxx];
  form1.destroydos;
  form1.Doska;
  form1.figures;
end;
end;

procedure TForm1.reshenie;
begin
     masreshen[xxx]:=masreshen[xxx]+1;
     if l then vspmasreshen[xxx]:=true;
     zap[xxx]:=shetch;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
white_black:='b';
typef:='B';
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
white_black:='b';
typef:='N';
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
white_black:='b';
typef:='P';
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
white_black:='d';
typef:='d';
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
var j,i:integer;
begin
form1.destroydos;
form1.Doska;
for j := 1 to 8 do for i := 1 to 8 do fig[j,i]:=nil;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
white_black:='w';
typef:='K';
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
white_black:='w';
typef:='Q';
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
white_black:='b';
typef:='K';
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
white_black:='w';
typef:='R';
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
white_black:='w';
typef:='B';
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
white_black:='w';
typef:='N';
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
white_black:='w';
typef:='P';
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
white_black:='b';
typef:='Q';
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
white_black:='b';
typef:='R';
end;

procedure TForm1.vyvfigures(cl, t: char; px, py: integer);
var x,i,j:integer;
    ddd:boolean;
  begin
    if (cl='d') and (t='d') then begin
   { masfig.Picture:=nil;}
    fig[px,py].Destroy;
    fig[px,py]:=nil;
{    fig[px,py]:=nil;
    masfig.Picture:=nil;
    masfig.Picture.Destroy;}
    end else
  if fig[px,py]=nil then begin
    ddd:=true;
    masfig:=tfigures.Create(self);
    if (cl='w') and (t='R') then masfig.Picture.LoadFromFile('����� �����.bmp');
    if (cl='w') and (t='B') then masfig.Picture.LoadFromFile('���� �����.bmp');
    if (cl='w') and (t='N') then masfig.Picture.LoadFromFile('���� �����.bmp');
    if (cl='w') and (t='K') then masfig.Picture.LoadFromFile('������ �����.bmp');
    if (cl='w') and (t='Q') then masfig.Picture.LoadFromFile('����� �����.bmp');
    if (cl='w') and (t='P') then masfig.Picture.LoadFromFile('����� �����.bmp');
    if (cl='b') and (t='P') then masfig.Picture.LoadFromFile('����� ������.bmp');
    if (cl='b') and (t='R') then masfig.Picture.LoadFromFile('����� ������.bmp');
    if (cl='b') and (t='B') then masfig.Picture.LoadFromFile('���� ������.bmp');
    if (cl='b') and (t='N') then masfig.Picture.LoadFromFile('���� ������.bmp');
    if (cl='b') and (t='K') then masfig.Picture.LoadFromFile('������ ������.bmp');
    if (cl='b') and (t='Q') then masfig.Picture.LoadFromFile('����� ������.bmp');
    masfig.typefig:=t;
    masfig.color:=cl;
    masfig.Parent:=dos[px,py];
    masfig.Left:=masfig.Left+(widthkl div 4);
    masfig.Width:=widthkl div 2;
    masfig.Height:=heightkl-(heightkl div 13);
    masfig.Top:=masfig.Top+(heightkl div 20);
    masfig.Transparent:=true;
    masfig.px:=px;
    masfig.py:=py;
    masfig.Transparent:=true;
    masfig.Stretch:=true;
    fig[px,py]:=masfig;
  end else showmessage('�� ������ ������ ��� ���� ������!');
end;

procedure TForm1.xglobxxx;
var r:tmodalresult;
    i,m,len:integer;
    s:string;
begin
    if xglob=xxx-1 then begin
      r:=messagedlg('������ ������ ������� ������?',mtconfirmation,[mbyes,mbno],0);
      if r=mryes then begin
        combobox1.Clear;
        zadacha:='1)';
        xxx:=1;
        index:=0;
        shetch:=0;
        l:=false;
        listbox1.Clear;
        s:=combobox2.Text;
        combobox2.Clear;
        form1.destroydos;
        form1.faily;
        combobox2.Text:=s;
        Doska;
        figures;
        zadach;
      end;
      if r=mrno then begin
        len:=length(combobox2.Text);
        s:=combobox2.Text;
        delete(s,1,8);
        m:=strtoint(s);
        m:=m+1;
        //combobox2.Text:='������� '+inttostr(m);
        rr:=rr+1;
        combobox2.Text:=combobox2.Items[rr];
        combobox1.Clear;
        noz:=noz+'.zad';
        listbox1.Items.SaveToFile(noz);
        listbox1.Clear;
        xxx:=1;
        index:=0;
        shetch:=0;
        l:=false;
        zadacha:='1)';
        for i := 1 to 100 do begin
          masreshen[i]:=0;
          zap[i]:=0;
          vspmasreshen[i]:=false;
        end;
        if rr=schetzadan then combobox2.Text:=combobox2.Items[0];
        form1.Close;
        {form1.destroydos;
        form1.Doska;
        form1.figures;
        form1.zadach;
        noz:=combobox2.Text;}
      end;
    end;
end;

procedure TForm1.zadach;
var x,i:integer;
    f:textfile;
    s300:string;
    l:boolean;
begin
    assignfile(f,combobox2.Text+'.txt');
    reset(f);
    x:=0;
    s300:=' ';
    l:=true;
    while l do begin
      readln(f,s300);
      if s300='' then l:=false;
      if l then if s300[2]=')' then x:=strtoint(s300[1]);
    end;
   closefile(f);
   for i:=0 to x-1 do combobox1.Items.Add('������ '+inttostr(i+1));
   combobox1.Text:=combobox1.Items[0];
   //form1.Caption:=inttostr(x);
   for i := 1 to 100 do masreshen[i]:=0;
    for i:=0 to x-1 do listbox1.Items.Add(combobox1.Items[i]+': ');
    xglob:=x;
end;

end.
