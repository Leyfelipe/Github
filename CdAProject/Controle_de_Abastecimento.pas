unit Controle_de_Abastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,uDM, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Listname: TListBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    A: TRadioButton;
    B: TRadioButton;
    Gasolina: TRadioButton;
    cdie: TRadioButton;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    vlitro: TEdit;
    vdin: TEdit;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    tgas: TEdit;
    tdie: TEdit;
    timp: TEdit;
    Tabela: TTabSheet;
    DBGrid1: TDBGrid;
    BindingsList1: TBindingsList;
    ConConnection: TFDConnection;
    Tb_funTable: TFDQuery;
    Tb_funTableid: TFDAutoIncField;
    Tb_funTablenome: TStringField;
    Tb_funTablesetor: TStringField;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    Tb_taxasTable: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    DataSource1: TDataSource;
    total: TEdit;
    Label7: TLabel;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    tkatotal: TEdit;
    tkbtotal: TEdit;
    tktotal: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    FDQtka: TFDQuery;
    FDtkb: TFDQuery;
    FDQtktotal: TFDQuery;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    BindSourceDB5: TBindSourceDB;
    Tb_taxasTableroundimposto2: TFloatField;
    Tb_taxasTableroundval_gas2: TFloatField;
    Tb_taxasTableroundval_die2: TFloatField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    FDtkbsumval_din: TFloatField;
    FDQtktotalsumval_din: TFloatField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    FDQtkasumval_din: TFloatField;
    LinkControlToField4: TLinkControlToField;
    procedure Button1Click(Sender: TObject);
    procedure GasolinaClick(Sender: TObject);
    procedure vlitroExit(Sender: TObject);
    procedure cdieClick(Sender: TObject);
    procedure AClick(Sender: TObject);
    procedure BClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
comb,combustivel,tank : String;

procedure TForm1.AClick(Sender: TObject);
begin
tank := A.Caption;
end;

procedure TForm1.BClick(Sender: TObject);
begin
tank := B.Caption;
end;

procedure TForm1.Button1Click(Sender: TObject);

begin
ConConnection.ExecSQL('insert into tb_posto(data,funcionario,tank,combustivel,val_din,val_litro) values ('''+DateToStr(Date)+''','''+Listname.Items[Listname.ItemIndex]+''','''+tank+''','''+combustivel+''','''+StrToFloat(total.Text).ToString()+''','''+StrToFloat(vlitro.Text).ToString()+''')');
vlitro.Text := '';
vlitro.ReadOnly := true;
vdin.Text := '';
Gasolina.Checked := false;
cdie.Checked := false;
A.Checked := false;
B.Checked := false;
total.Text := '';
DBGrid1.DataSource.DataSet.Refresh;
BindSourceDB1.DataSource.DataSet.Refresh;
BindSourceDB2.DataSource.DataSet.Refresh;
BindSourceDB3.DataSource.DataSet.Refresh;
BindSourceDB4.DataSource.DataSet.Refresh;
BindSourceDB5.DataSource.DataSet.Refresh;
end;


procedure TForm1.cdieClick(Sender: TObject);
begin
vlitro.ReadOnly := false;
comb := tdie.Text;
combustivel := cdie.Caption;
end;

procedure TForm1.GasolinaClick(Sender: TObject);
begin
vlitro.ReadOnly := false;
comb := tgas.Text;
combustivel := Gasolina.Caption;
end;

procedure TForm1.vlitroExit(Sender: TObject);
begin
if (vlitro.Text = '') then
begin
 ShowMessage('Favor escolher o combustivel!!!');
end
else
begin
vdin.Text := (strtofloat(vlitro.Text) * strtofloat(comb)).ToString();
total.Text := (strtofloat(vdin.Text) * strtofloat(timp.Text)/100 + (strtofloat(vdin.Text))).ToString();
end;
end;

end.
