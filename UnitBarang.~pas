unit UnitBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    procedure awal;
    procedure mati;
    procedure tambah;
    procedure kosong;
    procedure simpan;
    procedure cari;
    procedure keluar;
    procedure edit;
    procedure rubah;
    procedure hapus;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
  uses UnitMenuUtama, UnitDataModule;
{$R *.dfm}

 //procedure
procedure TForm2.kosong;
begin
edit1.Text := '';
edit2.Text := '';
edit3.Text := '';
edit4.Text := '';
combobox1.ItemIndex := -1;
end;

procedure TForm2.mati;
begin
edit1.Enabled := true;
edit2.Enabled := false;
edit3.Enabled := false;
edit4.Enabled := false;
combobox1.Enabled := false;
BitBtn1.Enabled := true;
Bitbtn2.Enabled := true;
Bitbtn3.Enabled := true;
end;

procedure TForm2.tambah;
begin
edit1.Enabled := false;
edit2.Enabled := true;
edit3.Enabled := true;
edit4.Enabled := true;
combobox1.Enabled := true;
BitBtn1.Enabled := true;
Bitbtn2.Enabled := true;
Bitbtn3.Enabled := true;
BitBtn1.Caption := '&simpan';
Bitbtn2.Caption := '&batal';
end;

procedure TForm2.awal;
begin
Bitbtn1.Caption:='&tambah';
Bitbtn2.Caption:='&cari';
Bitbtn3.Caption:='&keluar';
end;

procedure TForm2.simpan;
begin
if (edit2.Text='') or (edit3.Text='') or (edit4.Text='') or (ComboBox1.ItemIndex=-1) then
 begin
 ShowMessage('ada item yang belum diisi');
 end
else
  begin
    DataModule2.TableBarang.Append;
    DataModule2.TableBarang ['Kodebarang'] := edit1.Text;
    DataModule2.TableBarang ['Namabarang'] := edit2.Text;
    DataModule2.TableBarang ['Hargabeli'] := edit3.Text;
    DataModule2.TableBarang ['Hargajual'] := edit4.Text;
    if (ComboBox1.ItemIndex=0) then
    begin
    DataModule2.TableBarang ['Satuan'] := 'Pcs';
    end
    else if (ComboBox1.ItemIndex=1) then
    begin
    DataModule2.TableBarang ['Satuan'] := 'kg';
    end
    else
    begin
    DataModule2.TableBarang ['Satuan'] := 'dus';
    end;
    DataModule2.TableBarang.Post;

  end;
end;

procedure TForm2.cari;
begin
if DataModule2.TableBarang.Locate('Kodebarang',edit1.Text,[])=true then
  begin
    edit1.Text:=DataModule2.TableBarang['Kodebarang'];
    edit2.Text:=DataModule2.TableBarang['Namabarang'];
    edit3.Text:=DataModule2.TableBarang['Hargabeli'];
    edit4.Text:=DataModule2.TableBarang['Hargajual'];
    Combobox1.Text:=DataModule2.TableBarang['Satuan'];

    Bitbtn1.Caption:='&edit';
    BitBtn2.Caption:='&hapus';
    BitBtn3.caption:='&batal';
  end
else
  begin
    ShowMessage('data tidak ada');
  end;
end;

procedure TForm2.keluar;
begin
 form2.Close;
end;

procedure TForm2.edit;
begin
BitBtn1.Caption:='&rubah';
BitBtn2.Caption:='&hapus';
Bitbtn3.Caption:='&batal';
edit1.Enabled := false;
edit2.Enabled := true;
edit3.Enabled := true;
edit4.Enabled := true;
combobox1.Enabled := true;
BitBtn1.Enabled := true;
Bitbtn2.Enabled := true;
Bitbtn3.Enabled := true;
end;

procedure TForm2.rubah;
begin
DataModule2.TableBarang.edit;
    //DataModule2.TableBarang ['Kodebarang'] := edit1.Text;
    DataModule2.TableBarang ['Namabarang'] := edit2.Text;
    DataModule2.TableBarang ['Hargabeli'] := edit3.Text;
    DataModule2.TableBarang ['Hargajual'] := edit4.Text;
    if (ComboBox1.ItemIndex=0) then
    begin
    DataModule2.TableBarang ['Satuan'] := 'Pcs';
    end
    else if (ComboBox1.ItemIndex=1) then
    begin
    DataModule2.TableBarang ['Satuan'] := 'kg';
    end
    else
    begin
    DataModule2.TableBarang ['Satuan'] := 'dus';
    end;
    DataModule2.TableBarang.Post;
    ShowMessage('Data berhasil dirubah');
    awal;
    mati;
end;

procedure TForm2.hapus;
begin
DataModule2.TableBarang.Delete;
end;

 //program

procedure TForm2.FormShow(Sender: TObject);
begin
awal;
mati;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
if (BitBtn1.Caption='&tambah') then
  begin
    if DataModule2.TableBarang.Locate('Kodebarang',edit1.Text,[])=true then
      begin
        ShowMessage('Data sudah ada');
        edit1.Text:=DataModule2.TableBarang['Kodebarang'];
        edit2.Text:=DataModule2.TableBarang['Namabarang'];
        edit3.Text:=DataModule2.TableBarang['Hargabeli'];
        edit4.Text:=DataModule2.TableBarang['Hargajual'];
        Combobox1.Text:=DataModule2.TableBarang['Satuan'];
        cari;
      end
    else if (edit1.Text='') then
      begin
        ShowMessage('Kode barang belum diisi');
      end
    else
      begin
        tambah;
      end;
  end
else if (BitBtn1.Caption='&simpan')then
  begin
    simpan;
    kosong;
    mati;
    awal;
  end
else if (BitBtn1.Caption='&edit')then
  begin
    edit;
  end
else if (BitBtn1.Caption='&rubah')then
  begin
    rubah;
    awal;
    mati;
    kosong;
  end;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
if (BitBtn3.Caption='&keluar')then
  begin
    keluar;
  end
else if (BitBtn3.Caption='&batal')then
  begin
    awal;
    Kosong;
    Mati;
  end;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
if (BitBtn2.Caption='&batal')then
  begin
    awal;
    kosong;
    mati;
  end
else if (BitBtn2.Caption='&hapus')then
  begin
    if DataModule2.TableBarang.Locate('Kodebarang',edit1.Text,[])=true then
      begin
        hapus;
        ShowMessage('data sudah terhapus');
      end else;
    awal;
    mati;
    kosong;
  end
else if (BitBtn2.Caption='&cari')then
  begin
    if (edit1.Text='') then
      begin
        ShowMessage('Kode barang beum diisi');
      end
    else
      begin
        cari;
      end;
  end;
end;


end.
