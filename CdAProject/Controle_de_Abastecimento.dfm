object Form1: TForm1
  Left = 0
  Top = 0
  Width = 656
  Height = 455
  AutoScroll = True
  AutoSize = True
  Caption = 'Controle de Abastecimento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 640
    Height = 375
    ActivePage = Tabela
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 217
        Height = 298
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 0
          Width = 59
          Height = 13
          Caption = 'Funcion'#225'rio:'
        end
        object Label7: TLabel
          Left = 43
          Top = 243
          Width = 28
          Height = 13
          Caption = 'Total:'
        end
        object Button1: TButton
          Left = 96
          Top = 271
          Width = 54
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 156
          Top = 271
          Width = 58
          Height = 25
          Caption = 'Limpar'
          TabOrder = 1
        end
        object Listname: TListBox
          Left = 139
          Top = 3
          Width = 74
          Height = 30
          ItemHeight = 13
          Items.Strings = (
            'Felipe'
            'Maria'
            'Jo'#227'o')
          TabOrder = 2
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 48
          Width = 81
          Height = 44
          Caption = 'Tank'
          TabOrder = 3
          object A: TRadioButton
            Left = 3
            Top = 19
            Width = 25
            Height = 17
            Caption = 'A'
            TabOrder = 0
            OnClick = AClick
          end
          object B: TRadioButton
            Left = 47
            Top = 19
            Width = 25
            Height = 17
            Caption = 'B'
            TabOrder = 1
            OnClick = BClick
          end
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 98
          Width = 185
          Height = 49
          Caption = 'Combustivel'
          TabOrder = 4
          object Gasolina: TRadioButton
            Left = 11
            Top = 21
            Width = 56
            Height = 17
            Caption = 'Gasolina'
            TabOrder = 0
            OnClick = GasolinaClick
          end
          object cdie: TRadioButton
            Left = 89
            Top = 21
            Width = 72
            Height = 17
            Caption = #211'leo Diesel'
            TabOrder = 1
            OnClick = cdieClick
          end
        end
        object GroupBox4: TGroupBox
          Left = 16
          Top = 168
          Width = 185
          Height = 65
          Caption = 'Valor'
          TabOrder = 5
          object Label2: TLabel
            Left = 11
            Top = 20
            Width = 25
            Height = 13
            Caption = 'Litro:'
          end
          object Label3: TLabel
            Left = 11
            Top = 39
            Width = 43
            Height = 13
            Caption = 'Dinheiro:'
          end
          object vdin: TEdit
            Left = 60
            Top = 39
            Width = 122
            Height = 21
            ReadOnly = True
            TabOrder = 0
          end
          object vlitro: TEdit
            Left = 60
            Top = 14
            Width = 122
            Height = 21
            ReadOnly = True
            TabOrder = 1
            OnExit = vlitroExit
          end
        end
        object total: TEdit
          Left = 77
          Top = 239
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 6
        end
      end
      object GroupBox5: TGroupBox
        Left = 440
        Top = 222
        Width = 184
        Height = 105
        Caption = 'Taxas'
        TabOrder = 1
        object Label4: TLabel
          Left = 20
          Top = 24
          Width = 65
          Height = 13
          Caption = 'Gasolina(R$):'
        end
        object Label5: TLabel
          Left = 7
          Top = 52
          Width = 78
          Height = 13
          Caption = #211'leo Diesel(R$):'
        end
        object Label6: TLabel
          Left = 23
          Top = 76
          Width = 62
          Height = 13
          Caption = 'Imposto(%):'
        end
        object tgas: TEdit
          Left = 87
          Top = 19
          Width = 86
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = '3,89'
        end
      end
      object tdie: TEdit
        Left = 527
        Top = 268
        Width = 86
        Height = 21
        ReadOnly = True
        TabOrder = 2
        Text = '3,2'
      end
      object timp: TEdit
        Left = 527
        Top = 295
        Width = 86
        Height = 21
        ReadOnly = True
        TabOrder = 3
        Text = '13'
      end
    end
    object Tabela: TTabSheet
      Caption = 'Tabela'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 632
        Height = 113
        Align = alTop
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GroupBox6: TGroupBox
        Left = 17
        Top = 168
        Width = 185
        Height = 105
        Caption = 'Tank A'
        TabOrder = 1
        object Label10: TLabel
          Left = 54
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Total:'
        end
        object tkatotal: TEdit
          Left = 88
          Top = 44
          Width = 89
          Height = 21
          TabOrder = 0
          Text = '6819'
        end
      end
      object GroupBox7: TGroupBox
        Left = 224
        Top = 168
        Width = 185
        Height = 105
        Caption = 'Tank B'
        TabOrder = 2
        object Label8: TLabel
          Left = 51
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Total:'
        end
        object tkbtotal: TEdit
          Left = 88
          Top = 44
          Width = 89
          Height = 21
          TabOrder = 0
          Text = '5613'
        end
      end
      object GroupBox8: TGroupBox
        Left = 428
        Top = 168
        Width = 185
        Height = 105
        Caption = 'Total'
        TabOrder = 3
        object Label9: TLabel
          Left = 59
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Total:'
        end
        object tktotal: TEdit
          Left = 93
          Top = 44
          Width = 89
          Height = 21
          TabOrder = 0
          Text = '12432'
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 41
    Align = alTop
    Caption = 'Posto ABC'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = Listname
      Track = True
      FillDataSource = BindSourceDB1
      FillDisplayFieldName = 'nome'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'round(imposto,2)'
      Control = timp
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'round(val_gas,2)'
      Control = tgas
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'round(val_die,2)'
      Control = tdie
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB5
      FieldName = 'sum(val_din)'
      Control = tktotal
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'sum(val_din)'
      Control = tkbtotal
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'sum(val_din)'
      Control = tkatotal
      Track = True
    end
  end
  object ConConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Windows\Temp\DB_posto.db'
      'ConnectionDef=con')
    Connected = True
    LoginPrompt = False
    Left = 192
    Top = 47
  end
  object Tb_funTable: TFDQuery
    Active = True
    Connection = ConConnection
    SQL.Strings = (
      'SELECT * FROM tb_fun')
    Left = 238
    Top = 30
    object Tb_funTableid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Tb_funTablenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 32767
    end
    object Tb_funTablesetor: TStringField
      FieldName = 'setor'
      Origin = 'setor'
      Required = True
      Size = 32767
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = Tb_funTable
    ScopeMappings = <>
    Left = 376
    Top = 32
  end
  object Tb_taxasTable: TFDQuery
    Active = True
    Connection = ConConnection
    SQL.Strings = (
      
        'SELECT round(imposto,2), round(val_gas,2), round(val_die,2)FROM ' +
        'tb_taxas;')
    Left = 566
    Top = 248
    object Tb_taxasTableroundimposto2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'round(imposto,2)'
      Origin = '"round(imposto,2)"'
      ProviderFlags = []
      ReadOnly = True
    end
    object Tb_taxasTableroundval_gas2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'round(val_gas,2)'
      Origin = '"round(val_gas,2)"'
      ProviderFlags = []
      ReadOnly = True
    end
    object Tb_taxasTableroundval_die2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'round(val_die,2)'
      Origin = '"round(val_die,2)"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = Tb_taxasTable
    ScopeMappings = <>
    Left = 480
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = Form2.FDQuery1
    Left = 584
    Top = 40
  end
  object FDQtka: TFDQuery
    Active = True
    Connection = ConConnection
    SQL.Strings = (
      'select sum(val_din) from tb_posto where tank like '#39'A'#39)
    Left = 244
    Top = 329
    object FDQtkasumval_din: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'sum(val_din)'
      Origin = '"sum(val_din)"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDtkb: TFDQuery
    Active = True
    Connection = ConConnection
    SQL.Strings = (
      'select sum(val_din) from tb_posto where tank like '#39'B'#39)
    Left = 316
    Top = 329
    object FDtkbsumval_din: TFloatField
      FieldName = 'sum(val_din)'
      ReadOnly = True
    end
  end
  object FDQtktotal: TFDQuery
    Active = True
    Connection = ConConnection
    SQL.Strings = (
      'select sum(val_din) from tb_posto')
    Left = 500
    Top = 345
    object FDQtktotalsumval_din: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'sum(val_din)'
      Origin = '"sum(val_din)"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = FDQtka
    ScopeMappings = <>
    Left = 304
    Top = 216
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = FDtkb
    ScopeMappings = <>
    Left = 304
    Top = 152
  end
  object BindSourceDB5: TBindSourceDB
    DataSet = FDQtktotal
    ScopeMappings = <>
    Left = 392
    Top = 216
  end
end
