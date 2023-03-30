unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs,ShellApi,IniFiles,
  Vcl.Buttons;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Memo2: TMemo;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
  var
   all:string; //odpowiada za zmianê tekstu wszystkie na formie Form1
   pozytywna:string; //odpowiada za zmianê tekstu Pozytywna na formie Form1
   odmowa:string;//odpowiada za zmianê tekstu Odmowa na formie Form1
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Myini:TIniFile;



implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);

begin
all:=Edit1.Text;
pozytywna:=Edit2.Text;
Odmowa:=Edit3.Text;

//
if  (all = '') or (pozytywna = '') or (odmowa = '') then
 begin
     MessageDlg('Wpisz dane w polach! ' + #10 + 'Dane nie s¹ zmienione',mtWarning,[mbOK],0);
 end
 else
 begin
  Form1.Label1.Caption:=(all); //wstawiamy dane do Wszystkie
Form1.Label3.Caption:=(pozytywna); //wstawiamy dane do Pozytywna
Form1.Label4.Caption:=(odmowa); //wstawiamy dane do Wszystkie
   MessageDlg('Dane zmienione!',mtInformation,[mbok],0);
 end;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
if  (all = '') or (pozytywna = '') or (odmowa = '') then
 begin
     MessageDlg('Dane s¹ standardowe! ',mtInformation,[mbOK],0);
 end
 else
 begin
   Form1.Label1.Caption:=('Wszystkie'); //wstawiamy dane do Wszystkie
   Form1.Label3.Caption:=('Pozytywna'); //wstawiamy dane do Pozytywna
   Form1.Label4.Caption:=('Odmowa'); //wstawiamy dane do Wszystkie
   MessageDlg('Dane zresetowane!',mtInformation,[mbok],0);
   all:='';   //resetujemy zmienne
   odmowa:='';  //resetujemy zmienne
   pozytywna:=''; //resetujemy zmienne
 end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   all:='Wszystkie'; //odpowiada za zmianê tekstu wszystkie na formie Form1
   pozytywna:='Pozytywna'; //odpowiada za zmianê tekstu Pozytywna na formie Form1
   odmowa:='Odmowa';
end;



procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Edit1.Clear;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
Edit2.Clear;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Edit3.Clear;
end;

end.
