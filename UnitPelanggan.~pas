unit UnitPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
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
    procedure kosong;
    procedure cari;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses UnitMenuUtama, UnitDataModule;
{$R *.dfm}

procedure TForm4.simpan;
begin
DataModule2.TablePelanggan.Append;
DataModule2.TablePelanggan ['Kodepelanggan'] :=  edit1.Text;
DataModule2.TablePelanggan ['Namapelanggan'] :=  edit2.Text;
DataModule2.TablePelanggan ['Alamat']        :=  edit3.Text;
DataModule2.TablePelanggan ['Nomortelepon'] :=  edit4.Text;
DataModule2.TablePelanggan.Post;
end;

procedure TForm4.kosong;
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
end;

procedure TForm4.akhir;
begin
edit1.Enabled:=false;
edit2.Enabled:=true;
edit3.Enabled:=true;
edit4.Enabled:=true;
button1.Enabled:=false;
button2.Enabled:=true;
button3.Enabled:=false;
end;

procedure TForm4.awal;
begin
edit1.Enabled:=true;
edit2.Enabled:=false;
edit3.Enabled:=false;
edit4.Enabled:=false;
button1.Enabled:=true;
button2.Enabled:=false;
button6.Enabled:=false;
button4.enabled:=false;
button3.Enabled:=true;
end;

procedure TForm4.cari;
begin
Button6.Enabled:=true;
button1.Enabled:=false;
button2.Enabled:=false;
button4.Enabled:=true;
button3.Enabled:=false;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
if edit1.Text='' then
  begin
    ShowMessage('data belum diisi');
  end
else if DataModule2.TablePelanggan.Locate('Kodepelanggan',edit1.Text,[])=true then
  begin
    button3.Enabled:=false;
    ShowMessage('Data sudah ada');
    edit1.Text:=DataModule2.TablePelanggan['Kodepelanggan'];
    edit2.Text:=DataModule2.TablePelanggan['Namapelanggan'];
    edit3.Text:=DataModule2.TablePelanggan['Alamat'];
    edit4.Text:=DataModule2.TablePelanggan['Nomortelepon'];
    Akhir;
    cari;
  end
else
  begin
    akhir;
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
if (edit2.Text='') or (edit3.Text='') or (edit4.Text='') then
  begin
  ShowMessage('data tidak lengkap');
  end
else
  begin
    simpan;
    awal;
    kosong;
  end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
if edit1.Text='' then
  begin
    ShowMessage('data belum diisi');
  end
else if DataModule2.TablePelanggan.Locate('Kodepelanggan',edit1.Text,[])=true then
  begin
    edit1.Text:=DataModule2.TablePelanggan['Kodepelanggan'];
    edit2.Text:=DataModule2.TablePelanggan['Namapelanggan'];
    edit3.Text:=DataModule2.TablePelanggan['Alamat'];
    edit4.Text:=DataModule2.TablePelanggan['Nomortelepon'];
    Akhir;
    cari;
  end
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
awal;
kosong;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
DataModule2.TablePelanggan.Delete;
ShowMessage('Data Sudah Terhapus');
awal;
kosong;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
DataModule2.TablePelanggan.Edit;
DataModule2.TablePelanggan ['Namapelanggan'] := edit2.Text;
DataModule2.TablePelanggan ['Alamat']        :=  edit3.Text;
DataModule2.TablePelanggan ['Nomortelepon'] :=  edit4.Text;
DataModule2.TablePelanggan.Post;
ShowMessage('daata berhasil di edit');
awal;
kosong;
end;

end.
