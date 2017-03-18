object Form5: TForm5
  Left = 302
  Top = 60
  Width = 936
  Height = 496
  Caption = 'FormPenjualan'
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
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 73
    Height = 13
    Caption = 'Nota Penjualan'
  end
  object Label2: TLabel
    Left = 56
    Top = 72
    Width = 89
    Height = 13
    Caption = 'Tanggal Penjualan'
  end
  object Label3: TLabel
    Left = 296
    Top = 72
    Width = 77
    Height = 13
    Caption = 'Kode Customers'
  end
  object Label4: TLabel
    Left = 608
    Top = 40
    Width = 169
    Height = 41
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 544
    Top = 40
    Width = 49
    Height = 33
    AutoSize = False
    Caption = 'Rp.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 176
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 72
    Width = 89
    Height = 21
    Date = 42668.519087430560000000
    Format = 'M/d/y'
    Time = 42668.519087430560000000
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 112
    Width = 913
    Height = 329
    TabOrder = 2
    object Label5: TLabel
      Left = 296
      Top = 72
      Width = 49
      Height = 13
      Caption = 'Customers'
    end
    object Label6: TLabel
      Left = 0
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Kode barang'
    end
    object Label7: TLabel
      Left = 216
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Nama  barang'
    end
    object Label8: TLabel
      Left = 408
      Top = 8
      Width = 34
      Height = 13
      Caption = 'Satuan'
    end
    object Label9: TLabel
      Left = 568
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Harga jual'
    end
    object Label10: TLabel
      Left = 744
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Jumlah'
    end
    object Label11: TLabel
      Left = 680
      Top = 248
      Width = 53
      Height = 13
      Caption = 'Total bayar'
    end
    object Label12: TLabel
      Left = 680
      Top = 272
      Width = 27
      Height = 13
      Caption = 'Bayar'
    end
    object Label13: TLabel
      Left = 680
      Top = 296
      Width = 37
      Height = 13
      Caption = 'Kembali'
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 288
      Width = 59
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 280
      Top = 288
      Width = 59
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn3: TBitBtn
      Left = 192
      Top = 288
      Width = 59
      Height = 25
      Caption = 'Batal'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 288
      Width = 59
      Height = 25
      Caption = 'Simpan'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object Edit2: TEdit
      Left = 72
      Top = 8
      Width = 73
      Height = 21
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 296
      Top = 8
      Width = 89
      Height = 21
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 464
      Top = 8
      Width = 89
      Height = 21
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 624
      Top = 8
      Width = 89
      Height = 21
      TabOrder = 7
    end
    object Edit6: TEdit
      Left = 800
      Top = 8
      Width = 89
      Height = 21
      TabOrder = 8
      OnKeyPress = Edit6KeyPress
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 889
      Height = 185
      DataSource = DataModule2.DataSource10
      PopupMenu = PopupMenu1
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object BitBtn5: TBitBtn
      Left = 152
      Top = 8
      Width = 33
      Height = 17
      Caption = '...'
      TabOrder = 10
      OnClick = BitBtn5Click
    end
    object Edit7: TEdit
      Left = 744
      Top = 248
      Width = 121
      Height = 21
      TabOrder = 11
    end
    object Edit8: TEdit
      Left = 744
      Top = 272
      Width = 121
      Height = 21
      TabOrder = 12
      OnChange = Edit8Change
    end
    object Edit9: TEdit
      Left = 744
      Top = 296
      Width = 121
      Height = 21
      TabOrder = 13
    end
  end
  object ComboBox1: TComboBox
    Left = 384
    Top = 72
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object Panel2: TPanel
    Left = 288
    Top = 48
    Width = 329
    Height = 401
    TabOrder = 4
    Visible = False
    object Label14: TLabel
      Left = 32
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Nama Barang'
    end
    object Edit10: TEdit
      Left = 144
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit10KeyPress
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 48
      Width = 313
      Height = 337
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
    Left = 184
    Top = 208
    object D1: TMenuItem
      Caption = 'Delete'
      OnClick = D1Click
    end
  end
end
