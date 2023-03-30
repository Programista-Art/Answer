program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.HelpFile := 'D:\Lazarus  Delphi\Delphi projekty\Gminy-porownanie\Win32\Debug\read_me.txt';
  Application.Title := 'Answer';
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
