unit UnitPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Buttons, ExtCtrls, Menus;

type
  TForm8 = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    BitBtn5: TBitBtn;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Panel1: TPanel;
    Label14: TLabel;
    Edit10: TEdit;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    procedure kosong;
    procedure awal;
    procedure akhir;
    procedure cbbox;
    procedure simpan;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure D1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
 uses UnitDataModule, UnitBarang, UnitLogin, UnitPelanggan, UnitMenuUtama;
{$R *.dfm}

procedure TForm8.akhir;
begin
edit1.Enabled:=true;
DateTimePicker1.Enabled:=true;
ComboBox1.Enabled:=true;
edit2.Enabled:=false;
edit3.Enabled:=false;
edit4.Enabled:=false;
edit5.Enabled:=false;
edit6.Enabled:=true;
DataModule2.TableTemp.Active:=true;
BitBtn5.Enabled:=true;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
BitBtn1.Enabled:=false;
end;

procedure TForm8.awal;
begin
edit1.Enabled:=false;
DateTimePicker1.Enabled:=false;
ComboBox1.Enabled:=false;
edit2.Enabled:=false;
edit3.Enabled:=false;
edit4.Enabled:=false;
edit5.Enabled:=false;
edit6.Enabled:=false;
DataModule2.TableTemp.Active:=false;
BitBtn5.Enabled:=false;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
BitBtn1.Enabled:=true;
end;

procedure TForm8.kosong;
begin
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
label10.Caption:='';
end;

procedure TForm8.FormShow(Sender: TObject);
begin
cbbox;
awal;
kosong;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
akhir;
end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
form8.Close;
end;

procedure TForm8.BitBtn5Click(Sender: TObject);
begin
DataModule2.QueryBarang.Close;
 DataModule2.QueryBarang.SQL.Clear;
 DataModule2.QueryBarang.SQL.Add('select*from TableBarang where Namabarang');
 DataModule2.QueryBarang.Open;
panel1.Visible:=true;
end;

procedure TForm8.DBGrid2DblClick(Sender: TObject);
begin
Edit2.Text:= DataModule2.QueryBarang['Kodebarang'];
Edit3.Text:= DataModule2.QueryBarang['Namabarang'];
Edit4.Text:= DataModule2.QueryBarang['Satuan'];
Edit5.Text:= DataModule2.QueryBarang['Hargabeli'];
Panel1.Visible:=false;
end;

procedure TForm8.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
 DataModule2.QueryBarang.Close;
 DataModule2.QueryBarang.SQL.Clear;
 DataModule2.QueryBarang.SQL.Add('select*from TableBarang where Namabarang like'+QuotedStr('%'+Edit10.Text+'%'));
 DataModule2.QueryBarang.Open;
end;

procedure TForm8.Edit6KeyPress(Sender: TObject; var Key: Char);
var x : integer;
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
    label10.Caption:=IntToStr(DataModule2.QueryBarang['jumlahan']);
  end
else
  begin
  end;
end;

procedure TForm8.D1Click(Sender: TObject);
begin
DataModule2.TableTemp.Delete;
if DataModule2.TableTemp.RecordCount=0 then
  begin
    label10.Caption:='0';
  end
else
  begin
    DataModule2.QueryBarang.Close;
    DataModule2.QueryBarang.SQL.Clear;
    DataModule2.QueryBarang.SQL.Add('select sum(Subtotal) as jumlahan from Temp');
    DataModule2.QueryBarang.Open;
    label10.Caption:=IntToStr(DataModule2.QueryBarang['jumlahan']);
  end;
end;

procedure TForm8.BitBtn3Click(Sender: TObject);
var i: integer;
begin
if DataModule2.TableTemp.RecordCount = 0 then
  begin
   awal;
   kosong;
  end
else
  begin
    for i:=0 to DataModule2.TableTemp.RecordCount -1 do
      DataModule2.TableTemp.Delete;
      awal;
    kosong;
  end;
edit1.Text:='';
end;

procedure TForm8.cbbox;
begin
DataModule2.QueryCL.Active:=false;
DataModule2.QueryCL.SQL.Clear;
DataModule2.QueryCL.sql.Add('select*from TableSupplier');
DataModule2.QueryCL.Active:=true;
combobox1.Items.Clear;
while not DataModule2.QueryCL.Eof do
begin
  ComboBox1.Items.Add(DataModule2.QueryCL.fieldbyname('Kodesupplier').AsString);
  DataModule2.QueryCL.Next;
end;
end;

procedure TForm8.simpan;
begin
DataModule2.TablePembelian.Append;
    DataModule2.TablePembelian ['Kodepembelian'] := edit1.Text;
    DataModule2.TablePembelian ['Tglpembelian'] := DateTimePicker1.Date;
    DataModule2.TablePembelian ['Totalbeli'] := Label10.Caption;
    DataModule2.TablePembelian ['Kodesupplier'] := ComboBox1.Text;
    DataModule2.TablePembelian ['Kodepengguna'] := Form3.Edit1.Text;
    DataModule2.TablePembelian.Post;

    DataModule2.TableTemp.First;
    repeat
    DataModule2.TableDetailPembelian.Append;
    DataModule2.TableDetailPembelian ['Kodepembelian']:=edit1.Text;
    DataModule2.TableDetailPembelian ['Kodebarang']:=DataModule2.TableTemp['Kodebarang'];
    DataModule2.TableDetailPembelian ['Hargabeli']:=DataModule2.TableTemp['Harga'];
    DataModule2.TableDetailPembelian ['Jumlah']:=DataModule2.TableTemp['Jumlah'];
    DataModule2.TableDetailPembelian ['Subtotal']:=DataModule2.TableTemp['Subtotal'];
    DataModule2.TableDetailPembelian.Post;
    if DataModule2.TableBarang.Locate('Kodebarang',DataModule2.TableTemp['Kodebarang'],[])=true then
    begin
      DataModule2.TableBarang.Edit;
      DataModule2.TableBarang['Stok']:=DataModule2.TableBarang['Stok'] + DataModule2.TableTemp['Jumlah'];
      DataModule2.TableBarang.Post;
    end;
    DataModule2.TableTemp.Next;
    until
    DataModule2.TableTemp.Eof;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
var i : integer;
begin
simpan;
if DataModule2.TableTemp.RecordCount = 0 then
  begin
   awal;
   kosong;
  end
else
  begin
    for i:=0 to DataModule2.TableTemp.RecordCount -1 do
      DataModule2.TableTemp.Delete;
      awal;
    kosong;
  end;
edit1.Text:='';
end;

end.
