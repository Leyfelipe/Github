﻿object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Windows\Temp\DB_posto.db'
      'DriverID=SQLite')
    Connected = True
    Left = 304
    Top = 32
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select data as '#39'DATA'#39',funcionario AS '#39'Funcionario'#39',tank as '#39'Tanq' +
        'ue'#39',combustivel as '#39'Combustivel'#39',round(val_din,2) as '#39#211'leo Diese' +
        'l'#39',round(val_litro,2) as '#39'Litro'#39' from tb_posto order by id desc')
    Left = 384
    Top = 32
    object FDQuery1DATA: TStringField
      DisplayWidth = 10
      FieldName = 'DATA'
      Origin = 'data'
      Required = True
      Size = 32767
    end
    object FDQuery1Funcionario: TStringField
      DisplayWidth = 10
      FieldName = 'Funcionario'
      Origin = 'funcionario'
      Required = True
      Size = 32767
    end
    object FDQuery1Tanque: TStringField
      DisplayWidth = 10
      FieldName = 'Tanque'
      Origin = 'tank'
      Required = True
      FixedChar = True
      Size = 32767
    end
    object FDQuery1Combustivel: TStringField
      DisplayWidth = 10
      FieldName = 'Combustivel'
      Origin = 'combustivel'
      Required = True
      Size = 32767
    end
    object FDQuery1ÓleoDiesel: TFloatField
      AutoGenerateValue = arDefault
      FieldName = #211'leo Diesel'
      Origin = '"'#211'leo Diesel"'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1Litro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Litro'
      Origin = 'Litro'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 464
    Top = 32
  end
  object selectfunc: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select nome from tb_fun where setor like '#39'Frentista'#39)
    Left = 16
    Top = 24
  end
end
