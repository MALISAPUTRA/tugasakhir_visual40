object Form7: TForm7
  Left = 244
  Top = 171
  Width = 1044
  Height = 599
  Caption = 'TABEL HUBUNGAN'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 64
    Top = 128
    Width = 75
    Height = 16
    Caption = 'STATUS HUB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 64
    Top = 176
    Width = 77
    Height = 16
    Caption = 'KETERANGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 64
    Top = 48
    Width = 56
    Height = 16
    Caption = 'ID SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 64
    Top = 88
    Width = 49
    Height = 16
    Caption = 'ID ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 64
    Top = 216
    Width = 85
    Height = 16
    Caption = 'STATUS ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 200
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 200
    Top = 176
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 56
    Top = 272
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 160
    Top = 272
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 264
    Top = 272
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = b3Click
  end
  object b4: TButton
    Left = 368
    Top = 272
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = b4Click
  end
  object b5: TButton
    Left = 472
    Top = 272
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = b5Click
  end
  object dg1: TDBGrid
    Left = 56
    Top = 336
    Width = 617
    Height = 169
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object b6: TButton
    Left = 576
    Top = 272
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 8
    OnClick = b6Click
  end
  object c1: TComboBox
    Left = 200
    Top = 48
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      '')
  end
  object c2: TComboBox
    Left = 200
    Top = 88
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      '')
  end
  object Edit3: TEdit
    Left = 200
    Top = 216
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 504
    Top = 160
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'database_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\semester 4\visual2\tugas akhir\libmysql.dll'
    Left = 504
    Top = 64
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_hubungan')
    Params = <>
    Left = 504
    Top = 112
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_siswa')
    Params = <>
    Left = 576
    Top = 176
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_ortu')
    Params = <>
    Left = 624
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DataSet = frxdbdtst1
    DataSetName = 'frxdbdtst1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45105.745186273150000000
    ReportOptions.LastChange = 45106.637636724540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 128
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 340.157700000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Id')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Siswa id')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 245.669450000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ortu id')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Status hubungan')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Status anak')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 151.181200000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'siswa_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."siswa_id"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 245.669450000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'ortu_id'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."ortu_id"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 340.157700000000000000
          Top = 7.559060000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'status_hub_anak'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."status_hub_anak"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'keterangan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."keterangan"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'status_ortu'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."status_ortu"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 576
    Top = 80
  end
end
