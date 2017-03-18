unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure hidup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses UnitDataModule, UnitBarang, UnitMenuUtama;
{$R *.dfm}

procedure TForm3.hidup;
begin
form1.l1.Enabled:=true;
form1.m1.Enabled:=true;
form1.t1.Enabled:=true;
form1.l3.Enabled:=true;
form1.ToolButton1.Enabled:=true;
form1.ToolButton2.Enabled:=true;
form1.ToolButton3.Enabled:=true;
form1.ToolButton5.Enabled:=true;
form1.ToolButton6.Enabled:=true;
form1.ToolButton4.Enabled:=true;
form1.L2.Enabled:=false;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form3.Close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if (DataModule2.TablePengguna.Locate('kodepengguna',edit1.Text,[])=true) and
   (DataModule2.TablePengguna.Locate('password',edit2.Text,[])=true)  then
   begin
    hidup;
    form3.Close;
   end
   else
   begin
   ShowMessage('Data Salah');
   end;
end;

end.
