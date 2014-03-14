unit F_PrincipalAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, Buttons;

type
  TFPrincipalAdmin = class(TForm)
    ZQGarantias: TZQuery;
    DSGarantias: TDataSource;
    ZConexion: TZConnection;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    Catalogos1: TMenuItem;
    Clientesgarantia1: TMenuItem;
    Clientesreparacion1: TMenuItem;
    Salir1: TMenuItem;
    Usuarios1: TMenuItem;
    Inventario1: TMenuItem;
    N1: TMenuItem;
    Equiposengarantia1: TMenuItem;
    Equiposenreparacin1: TMenuItem;
    Garantias: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    botonclientesgtia: TBitBtn;
    N2: TMenuItem;
    Ventas1: TMenuItem;
    TabSheet4: TTabSheet;
    gridreparaciones: TDBGrid;
    ZQReparaciones: TZQuery;
    DSReparaciones: TDataSource;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure GarantiasChange(Sender: TObject);
    procedure Clientesgarantia1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Inventario1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalAdmin: TFPrincipalAdmin;

implementation
uses
    F_Usuarios, CClientesGarantia,F_AltaEquipos;


{$R *.dfm}

procedure TFPrincipalAdmin.Clientesgarantia1Click(Sender: TObject);
begin
    C_ClientesGarantia.Enabled := false;
    C_ClientesGarantia := TC_ClientesGarantia.Create(self);
    C_ClientesGarantia.ShowModal;
end;

procedure TFPrincipalAdmin.FormShow(Sender: TObject);
begin
//
    ZQGarantias.Close;
    ZQGarantias.SQL.Clear;
    ZQGarantias.SQL.Add('SELECT Sucursal, empleado AS "Recibido por", marca_equipo AS Marca, modelo_equipo AS Modelo, imei_equipo AS IMEI, nombre_cliente AS Titular, Observaciones');
    ZQGarantias.SQL.Add('FROM sucursal');
    ZQGarantias.SQL.Add('JOIN equipo_garantia ON equipo_garantia.idsucursal = sucursal.idsucursal');
    ZQGarantias.SQL.Add('JOIN cliente_garantia ON cliente_garantia.idequipo_garantia = equipo_garantia.idequipo_garantia');
    ZQGarantias.SQL.Add('JOIN empleado ON empleado.idempleado = equipo_garantia.idempleado');
    ZQGarantias.ExecSQL;
    ZQGarantias.Open;
    DBGrid1.Update;

    gridReparaciones.Columns[0].Width := 80;
    gridReparaciones.Columns[1].Width := 80;
    gridReparaciones.Columns[2].Width := 100;
    gridReparaciones.Columns[3].Width := 100;
    gridReparaciones.Columns[4].Width := 90;
    gridReparaciones.Columns[5].Width := 100;
    gridReparaciones.Columns[6].Width := 120;

    ZQReparaciones.Close;
    ZQReparaciones.SQL.Clear;
    ZQReparaciones.SQL.Add('SELECT Sucursal, empleado AS "Recibido por", marca_equipo AS Marca, modelo_equipo AS Modelo, imei_equipo AS IMEI, nombre_cliente AS Titular, Observaciones');
    ZQReparaciones.SQL.Add('FROM sucursal');
    ZQReparaciones.SQL.Add('JOIN equipo_reparacion ON equipo_reparacion.idsucursal = sucursal.idsucursal');
    ZQReparaciones.SQL.Add('JOIN cliente_reparacion ON cliente_reparacion.idequipo_reparacion = equipo_reparacion.idequipo_reparacion');
    ZQReparaciones.SQL.Add('JOIN empleado ON empleado.idempleado = equipo_reparacion.idempleado');
    ZQReparaciones.ExecSQL;
    ZQReparaciones.Open;
    gridReparaciones.Update;
end;

procedure TFPrincipalAdmin.GarantiasChange(Sender: TObject);
begin
//
end;

procedure TFPrincipalAdmin.Inventario1Click(Sender: TObject);
begin
    FAltaEquipo.Enabled := false;
    FAltaEquipo := TFAltaEquipo.Create(self);
    FaltaEquipo.ShowModal;
end;

procedure TFPrincipalAdmin.Usuarios1Click(Sender: TObject);
begin
    FUsuarios.Enabled := false;
    FUsuarios := TFUsuarios.Create(self);
    FUsuarios.ShowModal;
end;

end.
