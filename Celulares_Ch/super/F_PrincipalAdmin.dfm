object FPrincipalAdmin: TFPrincipalAdmin
  Left = 0
  Top = 0
  Caption = 'FPrincipalAdmin'
  ClientHeight = 485
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 176
    Top = 336
    Width = 41
    Height = 13
    Caption = 'Usuarios'
  end
  object Garantias: TPageControl
    Left = 5
    Top = 8
    Width = 792
    Height = 312
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = GarantiasChange
    object TabSheet1: TTabSheet
      Caption = 'Garantias'
      ExplicitWidth = 637
      object DBGrid1: TDBGrid
        Left = 11
        Top = 9
        Width = 758
        Height = 169
        DataSource = DSGarantias
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Sucursal'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recibido por'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Marca'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modelo'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMEI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titular'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observaciones'
            Width = 154
            Visible = True
          end>
      end
      object botonclientesgtia: TBitBtn
        Left = 3
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Ver clientes'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Reparaciones'
      ImageIndex = 1
      ExplicitWidth = 637
      object gridreparaciones: TDBGrid
        Left = 3
        Top = 3
        Width = 734
        Height = 238
        DataSource = DSReparaciones
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Sucursal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recibido por'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Marca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modelo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMEI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observaciones'
            Width = 115
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ventas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitWidth = 637
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 107
        Height = 13
        Caption = 'Estadisticas de ventas'
      end
      object Label2: TLabel
        Left = 3
        Top = 40
        Width = 105
        Height = 13
        Caption = 'Equipos mas vendidos'
      end
      object Label3: TLabel
        Left = 507
        Top = 40
        Width = 117
        Height = 13
        Caption = 'Equipos menos vendidos'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Almacenes'
      ImageIndex = 3
      object BitBtn1: TBitBtn
        Left = 328
        Top = 232
        Width = 75
        Height = 25
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
      end
    end
  end
  object ZQGarantias: TZQuery
    Connection = ZConexion
    Params = <>
    Left = 24
    Top = 168
  end
  object DSGarantias: TDataSource
    DataSet = ZQGarantias
    Left = 24
    Top = 128
  end
  object ZConexion: TZConnection
    Catalog = 'chdesarrollo'
    Protocol = 'mysql-5'
    HostName = '192.168.1.70'
    Database = 'chdesarrollo'
    User = 'root'
    Password = 'toor'
    Left = 624
    Top = 336
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 336
    object Catalogos1: TMenuItem
      Caption = 'Catalogos'
      object Clientesgarantia1: TMenuItem
        Caption = 'Clientes garantia'
        OnClick = Clientesgarantia1Click
      end
      object Clientesreparacion1: TMenuItem
        Caption = 'Clientes reparacion'
      end
      object Usuarios1: TMenuItem
        Caption = 'Empleados'
        OnClick = Usuarios1Click
      end
      object Inventario1: TMenuItem
        Caption = 'Celulares en inventario'
        OnClick = Inventario1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Equiposengarantia1: TMenuItem
        Caption = 'Equipos en garantia'
      end
      object Equiposenreparacin1: TMenuItem
        Caption = 'Equipos en reparaci'#243'n'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Ventas1: TMenuItem
        Caption = 'Clientes ventas'
      end
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
    end
  end
  object ZQReparaciones: TZQuery
    Connection = ZConexion
    Params = <>
    Left = 592
    Top = 128
  end
  object DSReparaciones: TDataSource
    DataSet = ZQReparaciones
    Left = 592
    Top = 168
  end
end
