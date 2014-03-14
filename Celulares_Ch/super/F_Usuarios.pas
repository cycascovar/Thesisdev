unit F_Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids;

type
  TFUsuarios = class(TForm)
    Label1: TLabel;
    nombreEmpleado: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    PasswordEmpleado: TEdit;
    Button1: TButton;
    DSEmpleados: TDataSource;
    ZQEmpleados: TZQuery;
    listaSucursales: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DSSucursal: TDataSource;
    ZQSucursal: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation
uses
    F_PrincipalAdmin;

{$R *.dfm}

procedure TFUsuarios.Button1Click(Sender: TObject);
var
    idSucursal : Integer;
begin
    idSucursal := listaSucursales.KeyValue;

    ZQEmpleados.Close;
    ZQEmpleados.SQL.Clear;
    ZQEmpleados.SQL.Add('INSERT INTO empleado (empleado,password,idsucursal)');
    ZQEmpleados.SQL.Add('VALUES ("'+nombreEmpleado.Text+'","'+passwordEmpleado.Text+'",'+IntToStr(idSucursal)+')');
    ZQEmpleados.ExecSQL;

    ZQEmpleados.SQL.Clear;
    ZQEmpleados.SQL.Add('SELECT empleado AS Usuario, Sucursal');
    ZQEmpleados.SQL.Add('FROM empleado');
    ZQEmpleados.SQL.Add('JOIN sucursal ON sucursal.idsucursal = empleado.idsucursal');
    ZQEmpleados.ExecSQL;
    ZQEmpleados.Open;
    dbgrid1.Refresh;

    Application.MessageBox('Usuario agregado exitosamente.','Información',MB_ICONINFORMATION);
end;

procedure TFUsuarios.FormShow(Sender: TObject);
begin
//Agregar el LookupComboBox
    ZQEmpleados.Close;
    ZQEmpleados.SQL.Clear;
    ZQEmpleados.SQL.Add('SELECT empleado AS Usuario, Sucursal');
    ZQEmpleados.SQL.Add('FROM empleado');
    ZQEmpleados.SQL.Add('JOIN sucursal ON sucursal.idsucursal = empleado.idsucursal');
    ZQEmpleados.ExecSQL;
    ZQEmpleados.Open;
    dbgrid1.Refresh;

    ZQSucursal.Close;
    ZQSucursal.SQL.Clear;
    ZQSucursal.SQL.Add('SELECT * FROM sucursal');
    ZQSucursal.ExecSQL;
    ZQSucursal.Open;

    listaSucursales.ListField := 'sucursal';
    listaSucursales.KeyField := 'idsucursal';
end;
end.
