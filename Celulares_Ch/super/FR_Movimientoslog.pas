unit FR_Movimientoslog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, qrpctrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls;

type
  TFRMovimientosLog = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    ZQLogs: TZQuery;
    QRBand2: TQRBand;
    QRPie: TQRLabel;
    QRTipo: TQRDBText;
    QRLabel4: TQRLabel;
    QRPGrid1: TQRPGrid;
    QRMovimiento: TQRPDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRImage1: TQRImage;
    QRGridReport1: TQRGridReport;
    QRLabel7: TQRLabel;
    QRPGrid2: TQRPGrid;
    QRLabel8: TQRLabel;
    QRPGrid3: TQRPGrid;
    QRSucursal: TQRPDBText;
    QREmpleado: TQRPDBText;
    QRFecha: TQRPDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMovimientosLog: TFRMovimientosLog;

implementation
uses
  F_PrincipalAdmin,FPrincipalEmpleados;

{$R *.dfm}

procedure TFRMovimientosLog.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    ZQLogs.Close;
    ZQLogs.SQL.Clear;
    ZQLogs.SQL.Add('SELECT movimiento AS tipo, movimiento_detalles AS movimiento, sucursal, empleado, fecha FROM empleado_movimiento WHERE empleado = "'+FPrincipal.Label2.Caption+'"');
    ZQLogs.ExecSQL;
    ZQLogs.Open;
    with ZQLogs do
    begin
      First;
      while not EOF do
      begin
        QRTipo.DataField := 'tipo';
        QRMovimiento.DataField := 'movimiento';
        QRSucursal.DataField := 'sucursal';
        QRFecha.DataField := 'fecha';
        QREmpleado.DataField := 'empleado';
        Next;
      end;
    end;
    QRPie.Caption := 'Reporte generado el '+DateToStr(Date())+'a las '+TimeToStr(Time());
end;

end.
