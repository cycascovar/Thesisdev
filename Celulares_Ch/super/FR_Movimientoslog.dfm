object FRMovimientosLog: TFRMovimientosLog
  Left = 0
  Top = 0
  Caption = 'FRMovimientosLog'
  ClientHeight = 782
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = ZQLogs
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRPGrid3: TQRPGrid
      Left = 440
      Top = 152
      Width = 285
      Height = 96
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        254.000000000000000000
        1164.166666666667000000
        402.166666666666600000
        754.062500000000000000)
      XLColumn = 0
      FixBottomPosition = False
      StretchHeightWithBand = False
      CellHorizAlignment = haNone
      CellVertAlignment = vaNone
      Columns = 3
      Rows = 3
      DrawFirstRowLine = True
      FirstRowColor = clWhite
      FirstColumnColor = clWhite
      FirstCellColor = clWhite
      FirstColumnJoined = False
      FirstRowJoined = False
      Transparent = False
    end
    object QRPGrid1: TQRPGrid
      Left = 48
      Top = 152
      Width = 705
      Height = 96
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        254.000000000000000000
        127.000000000000000000
        402.166666666666600000
        1865.312500000000000000)
      XLColumn = 0
      FixBottomPosition = False
      StretchHeightWithBand = False
      CellHorizAlignment = haNone
      CellVertAlignment = vaNone
      Columns = 3
      Rows = 3
      DrawFirstRowLine = True
      FirstRowColor = clWhite
      FirstColumnColor = clWhite
      FirstCellColor = clWhite
      FirstColumnJoined = False
      FirstRowJoined = False
      Transparent = False
    end
    object QRPGrid2: TQRPGrid
      Left = 521
      Top = 152
      Width = 285
      Height = 96
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        254.000000000000000000
        1378.479166666667000000
        402.166666666666600000
        754.062500000000000000)
      XLColumn = 0
      FixBottomPosition = False
      StretchHeightWithBand = False
      CellHorizAlignment = haNone
      CellVertAlignment = vaNone
      Columns = 3
      Rows = 3
      DrawFirstRowLine = True
      FirstRowColor = clWhite
      FirstColumnColor = clWhite
      FirstCellColor = clWhite
      FirstColumnJoined = False
      FirstRowJoined = False
      Transparent = False
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 184
        Top = 168
        Width = 140
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          444.500000000000000000
          370.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reporte de movimientos'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 184
        Top = 168
        Width = 140
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333400000
          444.500000000000000000
          370.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reporte de movimientos'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRLabel3: TQRLabel
      Left = 277
      Top = 46
      Width = 348
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333340000
        732.895833333333400000
        121.708333333333300000
        920.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Reporte de movimientos de usuarios'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 15
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 78
      Width = 740
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1957.916666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
    end
    object QRPie: TQRLabel
      Left = 38
      Top = 94
      Width = 189
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        63.500000000000000000
        100.541666666666700000
        248.708333333333300000
        500.062500000000100000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Reporte generado a las 23:08 p.m'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRTipo: TQRDBText
      Left = 48
      Top = 190
      Width = 66
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        502.708333333333400000
        174.625000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = ZQLogs
      DataField = 'movimiento'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 48
      Top = 167
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        441.854166666666700000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Tipo'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRMovimiento: TQRPDBText
      Left = 293
      Top = 190
      Width = 118
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        775.229166666666800000
        502.708333333333400000
        312.208333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = ZQLogs
      DataField = 'movimiento_detalles'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      SuppressRepeatedValues = False
      ReprintOnNewPage = False
      ReprintOnNewGroup = False
      BlankIfZero = False
      FixBottomPosition = False
      StretchHeightWithBand = False
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 521
      Top = 167
      Width = 59
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1378.479166666667000000
        441.854166666666700000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Empleado'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 293
      Top = 167
      Width = 66
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        775.229166666666800000
        441.854166666666700000
        174.625000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Movimiento'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRImage1: TQRImage
      Left = 664
      Top = 13
      Width = 147
      Height = 105
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        277.812500000000000000
        1756.833333333333000000
        34.395833333333340000
        388.937500000000000000)
      XLColumn = 0
    end
    object QRLabel7: TQRLabel
      Left = 640
      Top = 167
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1693.333333333333000000
        441.854166666666700000
        137.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Sucursal'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRSucursal: TQRPDBText
      Left = 617
      Top = 190
      Width = 118
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1632.479166666667000000
        502.708333333333400000
        312.208333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = ZQLogs
      DataField = 'movimiento_detalles'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      SuppressRepeatedValues = False
      ReprintOnNewPage = False
      ReprintOnNewGroup = False
      BlankIfZero = False
      FixBottomPosition = False
      StretchHeightWithBand = False
      FontSize = 10
    end
    object QREmpleado: TQRPDBText
      Left = 521
      Top = 190
      Width = 118
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1378.479166666667000000
        502.708333333333400000
        312.208333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = ZQLogs
      DataField = 'movimiento_detalles'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      SuppressRepeatedValues = False
      ReprintOnNewPage = False
      ReprintOnNewGroup = False
      BlankIfZero = False
      FixBottomPosition = False
      StretchHeightWithBand = False
      FontSize = 10
    end
    object QRFecha: TQRPDBText
      Left = 721
      Top = 190
      Width = 118
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1907.645833333333000000
        502.708333333333400000
        312.208333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = ZQLogs
      DataField = 'movimiento_detalles'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      SuppressRepeatedValues = False
      ReprintOnNewPage = False
      ReprintOnNewGroup = False
      BlankIfZero = False
      FixBottomPosition = False
      StretchHeightWithBand = False
      FontSize = 10
    end
  end
  object QRLabel8: TQRLabel
    Left = 749
    Top = 167
    Width = 37
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1981.729166666667000000
      441.854166666666700000
      97.895833333333340000)
    XLColumn = 0
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'Fecha'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FontSize = 10
  end
  object ZQLogs: TZQuery
    Connection = FPrincipalAdmin.ZConexion
    Params = <>
    Left = 264
    Top = 280
  end
  object QRGridReport1: TQRGridReport
    ReportTitle = 'Equipos menos vendidos'
    ReportTitleDate = False
    PrintGridLines = True
    QuickRep = QuickRep1
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    AutoStretchMemos = False
    UseExprForDatafields = False
    DBGrid = FPrincipalAdmin.gridequipos
    SelectedRecordsOnly = False
    SpanPagesHorizontally = False
    Left = 464
    Top = 296
  end
end
