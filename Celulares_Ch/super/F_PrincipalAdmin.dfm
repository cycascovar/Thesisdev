object FPrincipalAdmin: TFPrincipalAdmin
  Left = 0
  Top = 0
  Caption = 'Sistema para administradores: Res'#250'men general'
  ClientHeight = 458
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    858
    458)
  PixelsPerInch = 96
  TextHeight = 13
  object Garantias: TPageControl
    Left = 5
    Top = 8
    Width = 845
    Height = 425
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Garantias'
      DesignSize = (
        837
        397)
      object dbgrid1: TDBGrid
        Left = 0
        Top = 3
        Width = 758
        Height = 300
        Anchors = [akLeft, akTop, akRight]
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
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Visible = True
          end>
      end
      object botonclientesgtia: TBitBtn
        Left = 0
        Top = 309
        Width = 97
        Height = 34
        Caption = 'Ver clientes'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 616
        Top = 309
        Width = 142
        Height = 34
        Anchors = [akTop, akRight]
        Caption = 'Equipos entregados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Reparaciones'
      ImageIndex = 1
      ExplicitLeft = 0
      DesignSize = (
        837
        397)
      object gridreparaciones: TDBGrid
        Left = 3
        Top = 0
        Width = 761
        Height = 278
        Anchors = [akLeft, akTop, akRight]
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
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 3
        Top = 284
        Width = 97
        Height = 34
        Caption = 'Ver clientes'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
      end
      object Button2: TButton
        Left = 619
        Top = 284
        Width = 145
        Height = 34
        Anchors = [akTop, akRight]
        Caption = 'Equipos entregados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ventas'
      ImageIndex = 2
      DesignSize = (
        837
        397)
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
        Left = 370
        Top = 40
        Width = 117
        Height = 13
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = 'Equipos menos vendidos'
        ExplicitLeft = 419
      end
      object gridmenosv: TDBGrid
        Left = 364
        Top = 59
        Width = 423
        Height = 230
        Align = alCustom
        Anchors = [akTop, akRight]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
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
            FieldName = 'Precio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sucursal'
            Visible = True
          end>
      end
      object gridmasv: TDBGrid
        Left = 3
        Top = 59
        Width = 275
        Height = 230
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object botonclientes: TBitBtn
        Left = 203
        Top = 295
        Width = 75
        Height = 41
        Anchors = [akTop, akRight]
        Caption = 'Ver clientes'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = botonclientesClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Almacenes'
      ImageIndex = 3
      DesignSize = (
        837
        397)
      object Label4: TLabel
        Left = 3
        Top = 3
        Width = 98
        Height = 13
        Caption = 'Equipos por sucursal'
      end
      object BitBtn1: TBitBtn
        Left = 478
        Top = 201
        Width = 75
        Height = 25
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
      end
      object gridequipos: TDBGrid
        Left = 3
        Top = 22
        Width = 831
        Height = 291
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
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
            FieldName = 'ICCID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Precio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero'
            Visible = True
          end>
      end
      object Button3: TButton
        Left = 328
        Top = 324
        Width = 105
        Height = 41
        Anchors = [akLeft]
        Caption = 'Agregar equipo'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
  end
  object ZQGarantias: TZQuery
    Connection = ZConexion
    Params = <>
    Left = 112
    Top = 256
  end
  object DSGarantias: TDataSource
    DataSet = ZQGarantias
    Left = 144
    Top = 208
  end
  object ZConexion: TZConnection
    Protocol = 'mysql-5'
    Left = 496
    Top = 336
  end
  object ZQReparaciones: TZQuery
    Connection = ZConexion
    Params = <>
    Left = 672
    Top = 192
  end
  object DSReparaciones: TDataSource
    DataSet = ZQReparaciones
    Left = 720
    Top = 256
  end
end
