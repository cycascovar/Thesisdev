unit FR_VentaDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, QRCtrls, QRPDFFilt, qrpctrls, grimgctrl, ToolWin, ActnMan,
  ActnCtrls, ActnMenus, Menus, pngimage;

type
  TFRVentaDiario = class(TForm)
    ZQVentas: TZQuery;
    QRLabel5: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QMarca: TQRDBText;
    MainMenu1: TMainMenu;
    QuickRep1: TQuickRep;
    QLEmpleado: TQRLabel;
    QFecha: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QEmpleado: TQRLabel;
    QTotal: TQRLabel;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QSucursal: TQRLabel;
    QRBand2: TQRBand;
    QRChildBand1: TQRChildBand;
    ZQVentasFechadeventa: TDateField;
    ZQVentasMarca: TWideStringField;
    ZQVentasModelo: TWideStringField;
    ZQVentasempleado: TWideStringField;
    ZQVentasprecio: TLargeintField;
    ZQVentasICCID: TWideStringField;
    ZQVentassucursal: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRVentaDiario: TFRVentaDiario;

implementation
uses
  FPrincipalEmpleados,FAlmacen_Local;

{$R *.dfm}

procedure TFRVentaDiario.FormCreate(Sender: TObject);
begin
    QEmpleado.Caption := 'Bla bla bla';
end;

procedure TFRVentaDiario.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  total : String;
begin
    //agregar codigo
    QEmpleado.Caption := FPrincipal.Label2.Caption;
    QFecha.Caption := DateToStr(Date());
    ZQVentas.Close;
    ZQVentas.SQL.Clear;
    ZQVentas.SQL.Add('SELECT COUNT(*) AS Total FROM venta_detalle WHERE sucursal="'+Fprincipal.sucursal+'" AND fecha_venta="'+DateToStr(Date())+'"');
    ZQVentas.ExecSQL;
    ZQVentas.Open;

    total := ZQVentas.FieldByName('Total').AsString;
    QTotal.Caption := total;
    QSucursal.Caption := FPrincipal.sucursal;

    ZQVentas.Close();
    ZQVentas.SQL.Clear();
    ZQVentas.SQL.Add('SELECT fecha_venta, marca_celular AS "Marca", modelo_celular AS "Modelo", empleado, precio, iccid_celular AS "ICCID", sucursal');
    ZQVentas.SQL.Add('FROM venta_detalle');
    ZQVentas.SQL.Add('WHERE sucursal="'+FPrincipal.sucursal+'"');
    ZQVentas.SQL.Add('AND fecha_venta="2014-01-05"');
    ZQVentas.ExecSQL();
    ZQVentas.Open();

    QMarca.DataSet := ZQVentas;
    QMarca.DataField := 'Marca';
    //_QMarca.Caption := ZQVentas.FieldByName('Marca').AsString;

    with ZQVentas do
    begin
        First;
        while not EOF do
        begin
            QMarca.Caption := ZQVentas.FieldByName('Marca').AsString+#13;
            Next;
        end;
    end;

    //QMarca.Caption := ZQVentas.FieldByName('Marca').AsString;
//    QMarca.DataField := 'Marca';
end;

procedure TFRVentaDiario.QuickRep1Preview(Sender: TObject);
var
    total : String;
begin
    //agregar
    QMarca.DataSet := ZQVentas;
    QEmpleado.Caption := FPrincipal.Label2.Caption;
    QFecha.Caption := DateToStr(Date());
    ZQVentas.Close;
    ZQVentas.SQL.Clear;
    ZQVentas.SQL.Add('SELECT COUNT(*) AS Total FROM venta_detalle WHERE sucursal="'+Fprincipal.sucursal+'" AND fecha_venta="'+DateToStr(Date())+'"');
    ZQVentas.ExecSQL;
    ZQVentas.Open;

    total := ZQVentas.FieldByName('Total').AsString;
    QTotal.Caption := total;
    QSucursal.Caption := FPrincipal.sucursal;

    ZQVentas.Close();
    ZQVentas.SQL.Clear();
    ZQVentas.SQL.Add('SELECT fecha_venta, marca_celular AS "Marca", modelo_celular AS "Modelo", empleado, precio, iccid_celular AS "ICCID", sucursal');
    ZQVentas.SQL.Add('FROM venta_detalle');
    ZQVentas.SQL.Add('WHERE sucursal="'+FPrincipal.sucursal+'"');
    ZQVentas.SQL.Add('AND fecha_venta="2014-01-05"');
    ZQVentas.ExecSQL();
    ZQVentas.Open();

    QMarca.DataSet := ZQVentas;
    QMarca.DataField := 'Marca';

    with ZQVentas do
    begin
        First;
        while not EOF do
        begin
            QMarca.Caption := ZQVentas.FieldByName('Marca').AsString;
            Next;
        end;
    end;

    //QMarca.Caption := ZQVentas.FieldByName('Marca').AsString;

end;

end.
