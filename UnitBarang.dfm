object Form2: TForm2
  Left = 388
  Top = 162
  Width = 928
  Height = 480
  Caption = 'Form Barang'
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
    Left = 40
    Top = 24
    Width = 62
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 65
    Height = 13
    Caption = 'Nama Barang'
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 34
    Height = 13
    Caption = 'Satuan'
  end
  object Label4: TLabel
    Left = 40
    Top = 144
    Width = 49
    Height = 13
    Caption = 'Harga Beli'
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 51
    Height = 13
    Caption = 'Harga Jual'
  end
  object Edit1: TEdit
    Left = 112
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 112
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 112
    Top = 104
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Pcs'
      'Kg'
      'Dus')
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 320
    Width = 75
    Height = 25
    Caption = 'bitbtn1'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 320
    Width = 75
    Height = 25
    Caption = 'bitbtn2'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 296
    Top = 320
    Width = 75
    Height = 25
    Caption = 'bitbtn3'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object DBGrid1: TDBGrid
    Left = 392
    Top = 40
    Width = 409
    Height = 209
    DataSource = DataModule2.DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
