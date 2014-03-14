object FUsuarios: TFUsuarios
  Left = 0
  Top = 0
  Caption = 'FUsuarios'
  ClientHeight = 281
  ClientWidth = 227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 144
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label2: TLabel
    Left = 16
    Top = 208
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object Label3: TLabel
    Left = 16
    Top = 176
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object nombreEmpleado: TEdit
    Left = 72
    Top = 141
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object PasswordEmpleado: TEdit
    Left = 72
    Top = 173
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 240
    Width = 105
    Height = 25
    Caption = 'Agregar usuario'
    TabOrder = 2
    OnClick = Button1Click
  end
  object listaSucursales: TDBLookupComboBox
    Left = 72
    Top = 200
    Width = 137
    Height = 21
    ListSource = DSSucursal
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 212
    Height = 120
    DataSource = DSEmpleados
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Usuario'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sucursal'
        Width = 76
        Visible = True
      end>
  end
  object DSEmpleados: TDataSource
    DataSet = ZQEmpleados
    Left = 168
    Top = 80
  end
  object ZQEmpleados: TZQuery
    Connection = FPrincipalAdmin.ZConexion
    Params = <>
    Left = 168
    Top = 32
  end
  object DSSucursal: TDataSource
    DataSet = ZQSucursal
    Left = 192
    Top = 216
  end
  object ZQSucursal: TZQuery
    Connection = FPrincipalAdmin.ZConexion
    Params = <>
    Left = 16
    Top = 232
  end
end
