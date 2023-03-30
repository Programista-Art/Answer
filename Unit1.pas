unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.ToolWin,ShellApi,IniFiles;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ListBox1: TListBox;
    Panel2: TPanel;
    ListBox2: TListBox;
    ListBox3: TListBox;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    Odmowa1: TMenuItem;
    Pozytywnaodpowied1: TMenuItem;
    Usuna1: TMenuItem;
    Usunawszystko1: TMenuItem;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Label1: TLabel;
    OPD: TOpenDialog;
    SD: TSaveDialog;
    PMenuPozytywna: TPopupMenu;
    PMenuOdmowa: TPopupMenu;
    Usu1: TMenuItem;
    Usuwszystko1: TMenuItem;
    Usu2: TMenuItem;
    Usuwszystko2: TMenuItem;
    ToolButton6: TToolButton;
    Rozmiartekstu1: TMenuItem;
    N15px1: TMenuItem;
    N201: TMenuItem;
    N81: TMenuItem;
    N101: TMenuItem;
    Rozmiartekstu2: TMenuItem;
    N82: TMenuItem;
    N102: TMenuItem;
    N151: TMenuItem;
    N202: TMenuItem;
    Rozmiartekstu3: TMenuItem;
    N83: TMenuItem;
    N103: TMenuItem;
    N152: TMenuItem;
    N203: TMenuItem;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Dodaelement1: TMenuItem;
    Dodaelement2: TMenuItem;
    Dodaelement3: TMenuItem;
    Dodajdowszystkie1: TMenuItem;
    DodajdoOdmowa1: TMenuItem;
    Dodadowszystkie1: TMenuItem;
    Dodadopozytywna1: TMenuItem;
    procedure Usunawszystko1Click(Sender: TObject);
    procedure Usuna1Click(Sender: TObject);
    procedure Pozytywnaodpowied1Click(Sender: TObject);
    procedure Odmowa1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Usu1Click(Sender: TObject);
    procedure Usuwszystko1Click(Sender: TObject);
    procedure Usu2Click(Sender: TObject);
    procedure Usuwszystko2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N15px1Click(Sender: TObject);
    procedure N201Click(Sender: TObject);
    procedure N251Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N151Click(Sender: TObject);
    procedure N202Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N152Click(Sender: TObject);
    procedure N203Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Dodaelement2Click(Sender: TObject);
    procedure Dodaelement3Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure Dodajdowszystkie1Click(Sender: TObject);
    procedure DodajdoOdmowa1Click(Sender: TObject);
    procedure Dodadowszystkie1Click(Sender: TObject);
    procedure Dodadopozytywna1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
  var

   ilosc:integer; // licznik ilosc gmin
   gminy_odmowa:integer;  //licznik gminy odmówiły
   pozytywna,ogolem:integer;  // licznik pozytywnych odpowiedzi
    { Public declarations }
  end;

var
  Form1: TForm1;
  MyIni:TIniFile;

implementation

{$R *.dfm}

uses Unit2;



procedure TForm1.Dodadopozytywna1Click(Sender: TObject);
var
odmowa:integer;
begin
//Dodajemy do ListBox1 wszystkie
odmowa:=ListBox2.ItemIndex;
if ListBox2.Selected[odmowa] then
ListBox3.Items.Add(ListBox2.Items.Strings[odmowa]);
ListBox2.Items.Delete(ListBox2.ItemIndex); //usuwamy dodany element do ListBxo1
//koniec kodu Dodajemy do ListBox1 wszystkie
end;

procedure TForm1.Dodadowszystkie1Click(Sender: TObject);
var
odmowa:integer;
begin
//Dodajemy do ListBox1 wszystkie
odmowa:=ListBox2.ItemIndex;
if ListBox2.Selected[odmowa] then
ListBox1.Items.Add(ListBox2.Items.Strings[odmowa]);
ListBox2.Items.Delete(ListBox2.ItemIndex); //usuwamy dodany element do ListBxo1
//koniec kodu Dodajemy do ListBox1 wszystkie
end;

procedure TForm1.Dodaelement2Click(Sender: TObject);
var
add_gmina_p:string;
begin
add_gmina_p:=InputBox('Dodać','Nazwa','');
 if add_gmina_p ='' then
 begin
    ShowMessage('Wpisz danne');
 end
 else
 begin
 Listbox3.Items.Add(add_gmina_p);
 end;
end;

procedure TForm1.Dodaelement3Click(Sender: TObject);
var
add_gmina_o:string;
begin
add_gmina_o:=InputBox('Dodać','Nazwa','');
 if add_gmina_o ='' then
 begin
    ShowMessage('Wpisz danne');
 end
 else
 begin
 Listbox2.Items.Add(add_gmina_o);
 end;
end;

procedure TForm1.DodajdoOdmowa1Click(Sender: TObject);
var
odmowa:integer;
begin
//Dodajemy do ListBox1 wszystkie
odmowa:=ListBox3.ItemIndex;
if ListBox3.Selected[odmowa] then
ListBox2.Items.Add(ListBox3.Items.Strings[odmowa]);
ListBox3.Items.Delete(ListBox3.ItemIndex); //usuwamy dodany element do ListBxo1
//koniec kodu Dodajemy do ListBox1 wszystkie
end;

procedure TForm1.Dodajdowszystkie1Click(Sender: TObject);
Var
refusal:integer;
begin
//Dodajemy do ListBox1 wszystkie
refusal:=ListBox3.ItemIndex;
if ListBox3.Selected[refusal] then
ListBox1.Items.Add(ListBox3.Items.Strings[refusal]);
ListBox3.Items.Delete(ListBox3.ItemIndex); //usuwamy dodany element do ListBxo1
//koniec kodu Dodajemy do ListBox1 wszystkie

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //ini zapisujemy ustawienia aplikacji
  MyIni:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'ustawienia.ini');
  // zapisujemy dane po wyjściu do ustawienia.ini
   MyIni.WriteString('Main','Wszystkie',Label1.Caption); //zapisujemy z Edit1 do pliku ustawienia.ini
   MyIni.WriteString('Main','Pozytywna',Label3.Caption);
   MyIni.WriteString('Main','Odmowa',Label4.Caption);
   MyIni.Free; // oczyszcamy pamięć
//koniec kodu zapisywania ustawień
  //zapisujemy dane do txt
Listbox1.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'wszystkie.txt');
Listbox2.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'odmowa.txt');
Listbox3.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'pozytywna.txt');

MessageDlg('Dane zapisane',mtInformation,[mbOK],0);//powiadomienie
//koniec kodu
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//Ini ładujemy plik
  MyIni:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'ustawienia.ini');
  // zapisujemy dane po wyjściu do ustawienia.ini
   Label1.Caption:=MyIni.ReadString('Main','Wszystkie',Label1.Caption); //zapisujemy z Edit1 do pliku ustawienia.ini
   Label3.Caption:=MyIni.ReadString('Main','Pozytywna',Label3.Caption);
   Label4.Caption:=MyIni.ReadString('Main','Odmowa',Label4.Caption);
   MyIni.Free; // oczyszcamy pamięć
//
  //ładujemy dane do listbox1,2,3
Listbox1.Items.LoadFromFile(ExtractFilePath(ParamStr(0))+'wszystkie.txt');
Listbox2.Items.LoadFromFile(ExtractFilePath(ParamStr(0))+'odmowa.txt');
Listbox3.Items.LoadFromFile(ExtractFilePath(ParamStr(0))+'pozytywna.txt');
//koniec kodu

ilosc:=ListBox1.Items.Count;
pozytywna:=ListBox3.Items.Count;
gminy_odmowa:=ListBox2.Items.Count;
ogolem:= ilosc+ pozytywna+gminy_odmowa;

StatusBar1.Panels.Items[0].text:='Wszystkie: '+ IntToStr(ilosc);
StatusBar1.Panels.Items[1].text:='Odmowa: '+ IntToStr(gminy_odmowa);
StatusBar1.Panels.Items[2].text:='Pozytywna: '+ IntToStr(pozytywna);
StatusBar1.Panels.Items[3].text:='Łącznie: '+ IntToStr(ogolem);
end;



procedure TForm1.ListBox1Click(Sender: TObject);
begin
 ilosc:=ListBox1.Items.Count;
 StatusBar1.Panels.Items[0].text:='Wszystkie: '+ IntToStr(ilosc);
end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin
gminy_odmowa:=ListBox2.Items.Count;
StatusBar1.Panels.Items[1].text:='Odmowa: '+ IntToStr(gminy_odmowa);
end;

procedure TForm1.N101Click(Sender: TObject);
begin
ListBox1.Font.Size:=10;
end;

procedure TForm1.N102Click(Sender: TObject);
begin
  ListBox3.Font.Size:=10;
end;

procedure TForm1.N103Click(Sender: TObject);
begin
  ListBox2.Font.Size:=10;
end;

procedure TForm1.N151Click(Sender: TObject);
begin
ListBox3.Font.Size:=15;
end;

procedure TForm1.N152Click(Sender: TObject);
begin
ListBox2.Font.Size:=15;
end;

procedure TForm1.N15px1Click(Sender: TObject);
begin
ListBox1.Font.Size:=15;
end;

procedure TForm1.N201Click(Sender: TObject);
begin
 ListBox1.Font.Size:=20;
end;

procedure TForm1.N202Click(Sender: TObject);
begin
ListBox3.Font.Size:=20;
end;

procedure TForm1.N203Click(Sender: TObject);
begin
ListBox2.Font.Size:=20;
end;

procedure TForm1.N251Click(Sender: TObject);
begin
    ListBox1.Font.Size:=25;
end;

procedure TForm1.N81Click(Sender: TObject);
begin
ListBox1.Font.Size:=8;
end;

procedure TForm1.N82Click(Sender: TObject);
begin
ListBox3.Font.Size:=8;
end;

procedure TForm1.N83Click(Sender: TObject);
begin
ListBox2.Font.Size:=9;
end;

procedure TForm1.Odmowa1Click(Sender: TObject);
var
refusal:integer;
begin
refusal:=ListBox1.ItemIndex;
if ListBox1.Selected[refusal] then
ListBox2.Items.Add(ListBox1.Items.Strings[refusal]);
ListBox1.Items.Delete(ListBox1.ItemIndex);

gminy_odmowa:=ListBox2.Items.Count;
StatusBar1.Panels.Items[1].text:='Odmówiły: '+ IntToStr(gminy_odmowa);
end;

procedure TForm1.Pozytywnaodpowied1Click(Sender: TObject);
var
add_word:integer;
begin
add_word:=Listbox1.ItemIndex;
if ListBox1.Selected[add_word] then
ListBox3.Items.Add(ListBox1.Items.Strings[add_word]);
ListBox1.Items.Delete(ListBox1.ItemIndex); //usuwa dodany wpis do ListBox3

//liczy ilośc pozytywnych odpowiedzi
//ilosc:=ListBox1.Items.Count;
//gminy_odmowa:=ListBox3.Items.Count;
 pozytywna:=ListBox3.Items.Count;
StatusBar1.Panels.Items[2].text:='Pozytywna: '+ IntToStr(pozytywna);
//StatusBar1.Panels.Items[0].text:='Gmin: '+ IntToStr(ilosc);
//StatusBar1.Panels.Items[1].text:='Odmówiły: '+ IntToStr(gminy_odmowa);
//
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin

 StatusBar1.Panels.Items[4].text:='Time: '+ TimeToStr(Time);;

end;

procedure TForm1.ToolButton1Click(Sender: TObject);
//var
//s:TFile;
begin
    if OPD.Execute then
    ListBox1.Items.LoadFromFile(OPD.FileName,TEncoding.UTF8);

end;

procedure TForm1.ToolButton2Click(Sender: TObject);
var
add_gmina:string;
begin
add_gmina:=InputBox('Dodać','Nazwa','');
 if add_gmina ='' then
 begin
    ShowMessage('Wpisz danne');
 end
 else
 begin
 Listbox1.Items.Add(add_gmina);
 end;

end;



procedure TForm1.ToolButton4Click(Sender: TObject);
begin
ilosc:=ListBox1.Items.Count;
pozytywna:=ListBox3.Items.Count;
gminy_odmowa:=ListBox2.Items.Count;
ogolem:= ilosc+ pozytywna+gminy_odmowa;

StatusBar1.Panels.Items[0].text:='Wszystkie: '+ IntToStr(ilosc);
StatusBar1.Panels.Items[1].text:='Odmowa: '+ IntToStr(gminy_odmowa);
StatusBar1.Panels.Items[2].text:='Pozytywna: '+ IntToStr(pozytywna);
StatusBar1.Panels.Items[3].text:='Łącznie: '+ IntToStr(ogolem);
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
 if SD.Execute then
    ListBox1.Items.SaveToFile(SD.FileName,TEncoding.UTF8);
end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
Listbox1.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'wszystkie.txt');
Listbox2.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'odmowa.txt');
Listbox3.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'pozytywna.txt');
MessageDlg('Dane zapisane',mtInformation,[mbOK],0);
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
Listbox1.Items.LoadFromFile('wszystkie.txt');
Listbox2.Items.LoadFromFile('odmowa.txt');
Listbox3.Items.LoadFromFile('pozytywna.txt');
MessageDlg('Dane załadowane',mtInformation,[mbOK],0);
// pokazujemy ile itemsów jest w ListBoxach
ilosc:=ListBox1.Items.Count;
pozytywna:=ListBox3.Items.Count;
gminy_odmowa:=ListBox2.Items.Count;

    StatusBar1.Panels.Items[0].text:='Łącznie: '+ IntToStr(ilosc);
    StatusBar1.Panels.Items[1].text:='Odmówiły: '+ IntToStr(gminy_odmowa);
    StatusBar1.Panels.Items[2].text:='Pozytywna: '+ IntToStr(pozytywna)
end;

procedure TForm1.Usu1Click(Sender: TObject);
begin
ListBox3.Items.delete(ListBox3.ItemIndex);
end;

procedure TForm1.Usu2Click(Sender: TObject);
begin
ListBox2.Items.Delete(ListBox2.ItemIndex);
end;

procedure TForm1.Usuna1Click(Sender: TObject);
begin
//ListBox1.ClearSelection;
ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TForm1.Usunawszystko1Click(Sender: TObject);
var
r:integer;
begin
r:=MessageDlg('Czy napewno chcesz usunąć cały tekst z listy "Wszystkie"?',mtConfirmation,[mbOk,mbCancel],0);
 if r = mrOk then
 begin
     ListBox1.Clear;
 end
 else if
 r = mrCancel then
 begin
   //nic nie robimy
 end;



end;

procedure TForm1.Usuwszystko1Click(Sender: TObject);
var
r:integer;
begin
r:=MessageDlg('Czy napewno chcesz usunąć cały tekst?',mtConfirmation,[mbOk,mbCancel],0);
if r = mrOk then
begin
   ListBox3.Clear;
end
else if r = mrCancel then
     begin
       //Nic nie robimy
     end;

end;

procedure TForm1.Usuwszystko2Click(Sender: TObject);
var
r:integer;
begin
r:=MessageDlg('Czy napewno chcesz usunąć cały tekst?',mtConfirmation,[mbok,mbCancel],0);
if r = mrOk then
  begin
    ListBox2.Clear;
  end
  else if r = mrCancel then
       begin
         //Nic nie robimy
       end;

end;

end.
