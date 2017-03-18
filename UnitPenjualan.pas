unit UnitPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, Menus;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn5: TBitBtn;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel2: TPanel;
    Label14: TLabel;
    Edit10: TEdit;
    DBGrid2: TDBGrid;
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    Label15: TLabel;
    procedure BitBtn4Click(Sender: TObject);
    procedure kosong;
    procedure mati;
    procedure hidup;
    procedure simpan;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure D1Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
 uses UnitDataModule, UnitBarang, UnitLogin, UnitPelanggan, DB, UnitQuickReport;
{$R *.dfm}

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
form5.Close;
end;

procedure TForm5.kosong;
begin
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='0';
edit8.Text:='0';
edit9.Text:='0';
end;

procedure TForm5.simpan;
begin
    DataModule2.TablePenjualan.Append;
    DataModule2.TablePenjualan ['Kodepenjualan'] := edit1.Text;
    DataModule2.TablePenjualan ['Tglpenjualan'] := DateTimePicker1.Date;
    DataModule2.TablePenjualan ['Totaljual'] := Label4.Caption;
    DataModule2.TablePenjualan ['Kodepelanggan'] := ComboBox1.Text;
    DataModule2.TablePenjualan ['Kodepengguna'] := Form3.Edit1.Text;
    DataModule2.TablePenjualan.Post;

    DataModule2.TableTemp.First;
    repeat
    DataModule2.TableDetailPenjualan.Append;
    DataModule2.TableDetailPenjualan ['Kodepenjualan']:=edit1.Text;
    DataModule2.TableDetailPenjualan ['Kodebarang']:=DataModule2.TableTemp['Kodebarang'];
    DataModule2.TableDetailPenjualan ['Hargajual']:=DataModule2.TableTemp['Harga'];
    DataModule2.TableDetailPenjualan ['Jumlah']:=DataModule2.TableTemp['Jumlah'];
    DataModule2.TableDetailPenjualan ['Subtotal']:=DataModule2.TableTemp['Subtotal'];
    DataModule2.TableDetailPenjualan.Post;
    if DataModule2.TableBarang.Locate('Kodebarang',DataModule2.TableTemp['Kodebarang'],[])=true then
    begin
      DataModule2.TableBarang.Edit;
      DataModule2.TableBarang['Stok']:=DataModule2.TableBarang['Stok'] - DataModule2.TableTemp['Jumlah'];
      DataModule2.TableBarang.Post;
    end;
    DataModule2.TableTemp.Next;
    until
    DataModule2.TableTemp.Eof;

end;

procedure TForm5.mati;
begin
edit1.Enabled:=false;
edit2.Enabled:=false;
edit3.Enabled:=false;
edit4.Enabled:=false;
edit5.Enabled:=false;
edit6.Enabled:=false;
edit7.Enabled:=false;
edit8.Enabled:=false;
edit9.Enabled:=false;
ComboBox1.Enabled:=false;
DateTimePicker1.Enabled:=false;
BitBtn5.Enabled:=false;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
BitBtn1.Enabled:=true;
DataModule2.TableTemp.Active:=false;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
DataModule2.QueryCL.Active:=false;
DataModule2.QueryCL.SQL.Clear;
DataModule2.QueryCL.sql.Add('select*from TablePelanggan');
DataModule2.QueryCL.Active:=true;
combobox1.Items.Clear;
while not DataModule2.QueryCL.Eof do
begin
  ComboBox1.Items.Add(DataModule2.QueryCL.fieldbyname('Kodepelanggan').AsString);
  DataModule2.QueryCL.Next;
end;
kosong;
mati;
end;

procedure TForm5.hidup;
begin
edit1.Enabled:=true;
edit6.Enabled:=true;
edit7.Enabled:=false;
edit8.Enabled:=true;
edit9.Enabled:=false;
ComboBox1.Enabled:=true;
DateTimePicker1.Enabled:=true;
BitBtn5.Enabled:=true;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
BitBtn1.Enabled:=false;
DataModule2.TableTemp.Active:=true;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
hidup;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
var i:integer;
begin

if DataModule2.TableTemp.RecordCount = 0 then
  begin
   mati;
   kosong;
  end
else
  begin
    for i:=0 to DataModule2.TableTemp.RecordCount -1 do
      DataModule2.TableTemp.Delete;
      mati;
    kosong;
  end;
edit1.Text:='';
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
DataModule2.QueryBarang.Close;
 DataModule2.QueryBarang.SQL.Clear;
 DataModule2.QueryBarang.SQL.Add('select*from TableBarang where Namabarang');
 DataModule2.QueryBarang.Open;
Panel2.Visible:=true;
end;

procedure TForm5.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
 DataModule2.QueryBarang.Close;
 DataModule2.QueryBarang.SQL.Clear;
 DataModule2.QueryBarang.SQL.Add('select*from TableBarang where Namabarang like'+QuotedStr('%'+Edit10.Text+'%'));
 DataModule2.QueryBarang.Open;
end;

procedure TForm5.DBGrid2DblClick(Sender: TObject);
begin
Edit2.Text:= DataModule2.QueryBarang['Kodebarang'];
Edit3.Text:= DataModule2.QueryBarang['Namabarang'];
Edit4.Text:= DataModule2.QueryBarang['Satuan'];
Edit5.Text:= DataModule2.QueryBarang['Hargajual'];
Panel2.Visible:=false;
end;

procedure TForm5.Edit6KeyPress(Sender: TObject; var Key: Char);
var x:integer;
begin
if key=#13 then
  begin
    DataModule2.TableTemp.Append;
    DataModule2.TableTemp['Kodebarang']:=edit2.Text;
    DataModule2.TableTemp['Satuan']:=edit4.Text;
    DataModule2.TableTemp['Harga']:=edit5.Text;
    DataModule2.TableTemp['Jumlah']:=edit6.Text;
    x:=StrToInt(edit5.Text)*StrToInt(edit6.Text);
    DataModule2.TableTemp['Subtotal']:=x;
    DataModule2.TableTemp.Post;
    kosong;
    DataModule2.QueryBarang.Close;
    DataModule2.QueryBarang.SQL.Clear;
    DataModule2.QueryBarang.SQL.Add('select sum(Subtotal) as jumlahan from Temp');
    DataModule2.QueryBarang.Open;
    label4.Caption:=IntToStr(DataModule2.QueryBarang['jumlahan']);
    edit7.Text:=label4.Caption;
  end
else
  begin
  end;
end;

procedure TForm5.D1Click(Sender: TObject);
begin
DataModule2.TableTemp.Delete;
if DataModule2.TableTemp.RecordCount=0 then
  begin
    label4.Caption:='0';
    edit7.Text:='0';
  end
else
  begin
    DataModule2.QueryBarang.Close;
    DataModule2.QueryBarang.SQL.Clear;
    DataModule2.QueryBarang.SQL.Add('select sum(Subtotal) as jumlahan from Temp');
    DataModule2.QueryBarang.Open;
    label4.Caption:=IntToStr(DataModule2.QueryBarang['jumlahan']);
    edit7.Text:=label4.Caption;
  end;
end;

procedure TForm5.Edit8Change(Sender: TObject);
var x:integer;
begin
x:=StrToInt(edit8.Text)-StrToInt(edit7.Text);
edit9.Text:=IntToStr(x);
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
var i : integer;
begin
simpan;
QuickReport1.QRLabel11.caption:=edit1.Text;
QuickReport1.QRLabel12.Caption:=form3.Edit1.Text;
QuickReport1.QRlabel15.Caption:=form5.edit8.Text;
QuickReport1.qrlabel16.caption:=form5.edit9.Text;
QuickReport1.Preview;
if DataModule2.TableTemp.RecordCount = 0 then
  begin
   mati;
   kosong;
  end
else
  begin
    for i:=0 to DataModule2.TableTemp.RecordCount -1 do
      DataModule2.TableTemp.Delete;
      mati;
    kosong;
  end;
edit1.Text:='';
end;

end.
