object CRecargas: TCRecargas
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'CRecargas'
  ClientHeight = 430
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    421
    430)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 162
    Height = 13
    Caption = 'Dar de alta c'#243'digos para recargas'
  end
  object Label2: TLabel
    Left = 8
    Top = 222
    Width = 396
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 
      'C'#243'digos para recargas (presionar "enter" despues de ingresar cod' +
      'igo)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 345
    Width = 184
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Los codigos van para la sucursal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 346
  end
  object txtcodigos: TMemo
    Left = 8
    Top = 241
    Width = 405
    Height = 85
    Anchors = [akLeft, akBottom]
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 131
    Top = 375
    Width = 121
    Height = 39
    Anchors = [akLeft, akBottom]
    Caption = 'Dar de alta codigos'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitTop = 376
  end
  object listaSucursales: TDBLookupComboBox
    Left = 207
    Top = 341
    Width = 145
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 2
  end
  object gridCodigosRecargas: TDBGrid
    Left = 8
    Top = 75
    Width = 405
    Height = 144
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
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
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object txtsucursal: TEdit
    Left = 13
    Top = 48
    Width = 76
    Height = 21
    TabOrder = 4
  end
  object DSRecargas: TDataSource
    Left = 152
    Top = 168
  end
  object ZQRecargas: TZQuery
    Params = <>
    Left = 208
    Top = 160
  end
  object ZQSucursales: TZQuery
    Params = <>
    Left = 336
    Top = 296
  end
  object DSSucursales: TDataSource
    Left = 312
    Top = 352
  end
end
