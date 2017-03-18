unit UnitPengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure awal;
    procedure akhir;
    procedure simpan;
    procedure cari;
    procedure kosong;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses UnitDataModule, UnitBarang, UnitLogin, UnitPelanggan;
{$R *.dfm}

{ TForm6 }

procedure TForm6.akhir;
begin
edit1.enabled:=false;
edit2.enabled:=true;
edit3.Enabled:=true;
edit4.Enabled:=true;
end;

procedure TForm6.awal;
begin
button1.Enabled:=true;
button2.Enabled:=false;
button3.Enabled:=true;
button4.Enabled:=false;
button5.Enabled:=false;
edit1.enabled:=true;
edit2.enabled:=false;
edit3.Enabled:=false;
edit4.Enabled:=false;
end;

procedure TForm6.cari;
begin
button1.Enabled:=false;
button2.Enabled:=false;
button3.Enabled:=false;
button4.Enabled:=true;
button5.Enabled:=true;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm6.kosong;
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
end;

procedure TForm6.simpan;
begin
DataModule2.TablePengguna.Append;
DataModule2.TablePengguna ['Kodepengguna']:=edit1.Text;
DataModule2.TablePengguna ['Namapengguna']:=edit2.Text;
DataModule2.TablePengguna ['notelepon']:=edit3.Text;
DataModule2.TablePengguna ['password']:=edit4.Text;
DataModule2.TablePengguna.Post;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if edit1.Text='' then
  begin
    ShowMessage('data belum diisi');
  end
else if DataModule2.TablePengguna.Locate('Kodepengguna',edit1.Text,[])=true then
  begin
    ShowMessage('data sudah ada');
    edit1.Text:=DataModule2.TablePengguna['Kodepengguna'];
    edit2.Text:=DataModule2.TablePengguna['Namapengguna'];
    edit3.Text:=DataModule2.TablePengguna['notelepon'];
    edit4.Text:=DataModule2.TablePengguna['password'];
    cari;
    akhir;
  end
else
  begin
    akhir;
    button1.Enabled:=false;
    button2.Enabled:=true;
    button3.Enabled:=false;
  end;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
awal;
kosong;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
form6.Close;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
DataModule2.TablePengguna.Delete;
ShowMessage('Data berhasil dihapus');
awal;
kosong;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
DataModule2.TablePengguna.Edit;
DataModule2.TablePengguna ['Namapengguna']:=edit2.Text;
DataModule2.TablePengguna ['notelepon']:=edit3.Text;
DataModule2.TablePengguna ['password']:=edit4.Text;
DataModule2.TablePengguna.Post;
ShowMessage('data berhasil diedit');
awal;
kosong;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if (edit2.Text='') or (edit3.Text='') or (edit4.Text='') then
  begin
  ShowMessage('data belum lengkap');
  end
else
  begin
  simpan;
  ShowMessage('Data berhasil disimpan');
  awal;
  kosong;
  end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
if edit1.Text='' then
  begin
  ShowMessage('kode belum diisi');
  end
else if DataModule2.TablePengguna.Locate('Kodepengguna',edit1.Text,[])=false then
  begin
    ShowMessage('data tidak cocok');
  end
else
  begin
    cari;
    akhir;
    edit2.Text:=DataModule2.TablePengguna['Namapengguna'];
    edit3.Text:=DataModule2.TablePengguna['notelepon'];
    edit4.Text:=DataModule2.TablePengguna['password'];
  end;
end;

end.
