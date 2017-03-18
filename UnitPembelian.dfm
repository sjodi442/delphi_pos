object Form8: TForm8
  Left = 339
  Top = 152
  Width = 945
  Height = 480
  Caption = 'FormPembelian'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 296
    Top = 72
    Width = 66
    Height = 13
    Caption = 'Kode Supplier'
  end
  object Label2: TLabel
    Left = 56
    Top = 72
    Width = 91
    Height = 13
    Caption = 'Tanggal Pembelian'
  end
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 75
    Height = 13
    Caption = 'Nota Pembelian'
  end
  object Label6: TLabel
    Left = 24
    Top = 120
    Width = 61
    Height = 13
    Caption = 'Kode barang'
  end
  object Label7: TLabel
    Left = 240
    Top = 120
    Width = 67
    Height = 13
    Caption = 'Nama  barang'
  end
  object Label8: TLabel
    Left = 432
    Top = 120
    Width = 34
    Height = 13
    Caption = 'Satuan'
  end
  object Label9: TLabel
    Left = 592
    Top = 120
    Width = 48
    Height = 13
    Caption = 'Harga jual'
  end
  object Label4: TLabel
    Left = 760
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label10: TLabel
    Left = 680
    Top = 24
    Width = 137
    Height = 49
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 384
    Top = 72
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object Edit1: TEdit
    Left = 176
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 72
    Width = 89
    Height = 21
    Date = 42668.519087430560000000
    Format = 'M/d/y'
    Time = 42668.519087430560000000
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 96
    Top = 120
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object BitBtn5: TBitBtn
    Left = 176
    Top = 120
    Width = 33
    Height = 17
    Caption = '...'
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object Edit3: TEdit
    Left = 320
    Top = 120
    Width = 89
    Height = 21
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 488
    Top = 120
    Width = 89
    Height = 21
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 648
    Top = 120
    Width = 89
    Height = 21
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 808
    Top = 120
    Width = 89
    Height = 21
    TabOrder = 8
    OnKeyPress = Edit6KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 400
    Width = 59
    Height = 25
    Caption = 'Tambah'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 400
    Width = 59
    Height = 25
    Caption = 'Simpan'
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 216
    Top = 400
    Width = 59
    Height = 25
    Caption = 'Batal'
    TabOrder = 11
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 304
    Top = 400
    Width = 59
    Height = 25
    Caption = 'Keluar'
    TabOrder = 12
    OnClick = BitBtn4Click
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 168
    Width = 907
    Height = 185
    DataSource = DataModule2.DataSource10
    PopupMenu = PopupMenu1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 344
    Top = 104
    Width = 313
    Height = 345
    Caption = 'Panel1'
    TabOrder = 14
    Visible = False
    object Label14: TLabel
      Left = 24
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Nama Barang'
    end
    object Edit10: TEdit
      Left = 136
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit10KeyPress
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 48
      Width = 273
      Height = 281
      DataSource = DataModule2.DataSource9
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 232
    object D1: TMenuItem
      Caption = 'Delete'
      OnClick = D1Click
    end
  end
end
