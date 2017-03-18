unit UnitDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, sSkinManager;

type
  TDataModule2 = class(TDataModule)
    koneksi: TADOConnection;
    TableBarang: TADOTable;
    TablePelanggan: TADOTable;
    TablePengguna: TADOTable;
    TablePembelian: TADOTable;
    TableDetailPembelian: TADOTable;
    TablePenjualan: TADOTable;
    TableDetailPenjualan: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    sSkinManager1: TsSkinManager;
    DataSource8: TDataSource;
    TableSupplier: TADOTable;
    QueryBarang: TADOQuery;
    DataSource9: TDataSource;
    TableTemp: TADOTable;
    DataSource10: TDataSource;
    QueryCL: TADOQuery;
    DataSource11: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
