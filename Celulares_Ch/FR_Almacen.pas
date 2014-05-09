unit FR_Almacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, qrpctrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFRAlmacen = class(TForm)
    QRAlmacen: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRPLabel1: TQRPLabel;
    QRPLabel2: TQRPLabel;
    QRPLabel3: TQRPLabel;
    QRPLabel4: TQRPLabel;
    QRDBText1: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRLoopBand1: TQRLoopBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    ZQuery1: TZQuery;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRPaginas: TQRLabel;
    ChildBand1: TQRChildBand;
    procedure QRAlmacenPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRAlmacen: TFRAlmacen;

implementation
uses
    FPrincipalEmpleados;

{$R *.dfm}

procedure TFRAlmacen.QRAlmacenPreview(Sender: TObject);
begin
{   QRAlmacen.Prepare;}
    QRPaginas.Caption := 'Pagina '+IntToStr(QRAlmacen.QRPrinter.PageNumber)+' de '+IntToStr(QRAlmacen.QRPrinter.PageCount);
    QRAlmacen.PrinterSetup;
    QRAlmacen.Print;
{    QRAlmacen.Print;}
    ZQuery1.Close;
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT modelo_celular as modelo FROM equipo_almacen WHERE idsucursal = 3');
    ZQuery1.ExecSQL;
    ZQuery1.Open;
    QRDBText6.DataSet := ZQuery1;
    QRDBText6.Datafield := 'modelo';
    QRDBText6.Caption := ZQuery1.FieldByName('modelo').AsString;
end;

end.
