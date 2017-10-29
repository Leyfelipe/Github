program CdA;

uses
  Vcl.Forms,
  Controle_de_Abastecimento in 'Controle_de_Abastecimento.pas' {Form1},
  uDM in 'uDM.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
