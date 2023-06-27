unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    edt1: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    btn1: TButton;
    btn2: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btn3: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure posisiawal;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id : string;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
bersih;

edt1.Enabled:=True;
Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;

btn1.Enabled:=false;
btn2.Enabled:=True;
Button1.Enabled:=False;
Button2.Enabled:=False;
Button3.Enabled:=True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    posisiawal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm1.posisiawal;
begin
bersih;

edt1.Enabled:=False;
Edit1.Enabled:=False;
Edit2.Enabled:=False;
Edit3.Enabled:=False;
Edit4.Enabled:=False;

btn1.Enabled:=True;
btn2.Enabled:=False;
Button1.Enabled:=False;
Button2.Enabled:=False;
Button3.Enabled:=False;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Enabled:=True;
Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;

btn1.Enabled:=True;
btn2.Enabled:=False;
Button1.Enabled:=True;
Button2.Enabled:=True;
Button3.Enabled:=True;

edt1.Text:=zqry1.FieldList[1].AsString;
Edit1.Text:=zqry1.FieldList[2].AsString;
Edit2.Text:=zqry1.FieldList[3].AsString;
Edit3.Text:=zqry1.FieldList[4].AsString;
Edit4.Text:=zqry1.FieldList[5].AsString;
end;

procedure TForm1.bersih;
begin
edt1.Text:='';
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if(Edt1.Text = '')or(Edit1.Text = '')or(Edit2.Text = '')or(Edit3.Text = '')or(Edit4.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('nmkostumer',Edt1.Text,[]))and(zqry1.Locate('telp',Edit1.Text,[]))then
begin
  ShowMessage('Data kostumer sudah digunakan');
  posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DISIMPAN!!');
zqry1.sql.clear;
zqry1.sql.Add('insert into kostumer values(null,"'+edt1.Text+'","'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'")');
zqry1.ExecSQL;

//zqry1.Active:= False;
//zqry1.Active:=True;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kostumer');
zqry1.Open;

posisiawal;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);

begin
id:=zqry1.Fields[0].AsString;//DBGrid
edt1.Text:=zqry1.FieldList[1].AsString;
Edit1.Text:=zqry1.FieldList[2].AsString;
Edit2.Text:=zqry1.FieldList[3].AsString;
Edit3.Text:=zqry1.FieldList[4].AsString;
Edit4.Text:=zqry1.FieldList[5].AsString;
edt1.Enabled:=True;
Edit1.Enabled:=True;
Edit2.Enabled:=True;
Edit3.Enabled:=True;
Edit4.Enabled:=True;

btn1.Enabled:=False;
btn2.Enabled:=False;
Button1.Enabled:=True;
Button2.Enabled:=True;
Button3.Enabled:=True;
if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from kostumer where idkostumer="'+id+'" ');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from kostumer');
  zqry1.Open;
  ShowMessage('DATA BEHASIL DIHAPUS');
  posisiawal;
  end else
  begin
    ShowMessage('DATA BATAL DIHAPUS');
    posisiawal;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Edt1.Text = '')or(Edit1.Text = '')or(Edit2.Text = '')or(Edit3.Text = '')or(Edit4.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if (Edt1.Text = zqry1.Fields[1].AsString) and (Edit1.Text = zqry1.Fields[2].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('idkostumer').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update kostumer set nmkostumer= "'+Edt1.Text+'",telp="'+Edit1.Text+'" where idkostumer="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kostumer');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
