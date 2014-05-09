unit F_Login;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, pngimage, ExtCtrls,ZDbcIntfs,
  EComponent, Buttons,uCore;

type
  TFLogin = class(TForm)
    username: TEdit;
    password: TEdit;
    LUsuario: TLabel;
    LPass: TLabel;
    Label3: TLabel;
    ZCDesarrollo: TZConnection;
    Image1: TImage;
    BitBtn1: TBitBtn;

    procedure loginClick(Sender: TObject);
    procedure exitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure passwordKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ZQLogin: TZQuery;
    ZQMovimiento: TZQuery;
  public
    { Public declarations }
  end;
var
  FLogin: TFLogin;

implementation
uses
    FPrincipalEmpleados, SysUtils;
{$R *.dfm}

procedure TFLogin.BitBtn1Click(Sender: TObject);
begin
    try
        ZQLogin.Close;
        ZQLogin.SQL.Clear;
        ZQLogin.SQL.Add('SELECT idempleado, empleado, idsucursal');
        ZQLogin.SQL.Add('FROM empleado');
        ZQLogin.SQL.Add('WHERE empleado="'+username.Text+'" AND password="'+password.Text+'"');
        ZQLogin.ExecSQL;
        ZQLogin.Open;

        if ZQLogin.FieldByName('idempleado').IsNull <> true then
        begin
            FLogin.Visible := false;
            //FPrincipal.Enabled := false;
            //FPrincipal := TFPrincipal.Create(self);
            FPrincipal.ShowModal;
        end
        else
        begin
            Application.MessageBox('Usuario o contraseña incorrectos.','Acceso denegado', MB_ICONSTOP);
            ZQMovimiento.Close;
            ZQMovimiento.SQL.Clear;
            ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles,empleado,fecha,host,userpc)');
            ZQMovimiento.SQL.Add('VALUES ("Intento de login fallido.","El usuario: '+username.Text+', ingreso datos incorrectos.","'+username.Text+'","'+FormatDateTime('YYYY/MM/DD',Date())+'","'+getHostName()+'","'+GetUserFromWindows()+'")');
            ZQMovimiento.ExecSQL;
        end;
    except
    on E: EZSQLException do
    begin
        raise Exception.Create('Error: No se puede conectar a la base de datos. '+#13+'Contacte al desarrollador del sistema.');
        ZQMovimiento.Close;
        ZQMovimiento.SQL.Clear;
        ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles,host,userpc)');
        ZQMovimiento.SQL.Add('VALUES ("Error SQL.","Se realizó un intento fallido el día '+DateToStr(Date())+'.","'+getHostName()+'","'+GetUserFromWindows()+'")');
        ZQMovimiento.ExecSQL;
    end;
    end;
end;

procedure TFLogin.exitClick(Sender: TObject);
begin
    FLogin.Close;
end;

procedure TFLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ZQLogin := nil;
    ZQLogin.Free;
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  settingUp(); //initial connection
  ZCDesarrollo.Catalog := _CATALOG;
  ZCDesarrollo.Database := _db;
  ZCDesarrollo.HostName := _hostname;
  ZCDesarrollo.User := _u;
  ZCDesarrollo.Password := _p;
end;

procedure TFLogin.FormShow(Sender: TObject);
begin
    SetTitleWindow(self,'Celulares Castillo - Acceso');

    ZQLogin := TZQuery.Create(self);
    ZQLogin.Connection := ZCDesarrollo;

    ZQMovimiento := TZQuery.Create(self);
    ZQMovimiento.Connection := ZCDesarrollo;


end;

procedure TFLogin.loginClick(Sender: TObject);
begin
    try
        ZQLogin.Close;
        ZQLogin.SQL.Clear;
        ZQLogin.SQL.Add('SELECT idempleado, empleado, idsucursal');
        ZQLogin.SQL.Add('FROM empleado');
        ZQLogin.SQL.Add('WHERE empleado="'+username.Text+'" AND password="'+password.Text+'"');
        ZQLogin.ExecSQL;
        ZQLogin.Open;

        if ZQLogin.FieldByName('idempleado').IsNull <> true then
        begin
            FPrincipal.Enabled := false;
            FPrincipal := TFPrincipal.Create(self);
            FPrincipal.ShowModal;
            FLogin.Visible := false;
        end
        else
        begin
            Application.MessageBox('Usuario o contraseña incorrectos.','Acceso denegado', MB_ICONSTOP);
            ZQMovimiento.Close;
            ZQMovimiento.SQL.Clear;
            ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles,empleado,fecha,host,userpc)');
            ZQMovimiento.SQL.Add('VALUES ("Intento de login fallido.","El usuario: '+username.Text+', ingreso datos incorrectos.","'+username.Text+'","'+FormatDateTime('YYYY/MM/DD',Date())+'","'+getHostName()+'","'+GetUserFromWindows()+'")');
            ZQMovimiento.ExecSQL;
        end;
    except
    on E: EZSQLException do
    begin
        raise Exception.Create('Error: No se puede conectar a la base de datos. '+#13+'Contacte al desarrollador del sistema.');
        ZQMovimiento.Close;
        ZQMovimiento.SQL.Clear;
        ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles,host,userpc)');
        ZQMovimiento.SQL.Add('VALUES ("Intento de conexión a la BD.","Se realizó un intento fallido el día '+DateToStr(Date())+'.","'+getHostName()+'","'+GetUserFromWindows()+'")');
        ZQMovimiento.ExecSQL;
    end;
    end;
end;

procedure TFLogin.passwordKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        try
            ZQLogin.Close;
            ZQLogin.SQL.Clear;
            ZQLogin.SQL.Add('SELECT idempleado, empleado');
            ZQLogin.SQL.Add('FROM empleado');
            ZQLogin.SQL.Add('WHERE empleado="'+username.Text+'" AND password="'+password.Text+'"');
            ZQLogin.ExecSQL;
            ZQLogin.Open;

            if ZQLogin.FieldByName('idempleado').IsNull <> true then
            begin
                    FLogin.Visible := false;
                    FPrincipal.Enabled := false;
                    FPrincipal := TFPrincipal.Create(Application);
                    FPrincipal.ShowModal;
            end
            else
            begin
                Application.MessageBox( 'Usuario o contraseña incorrectos.','Acceso denegado', MB_ICONSTOP);
                ZQMovimiento.Close;
                ZQMovimiento.SQL.Clear;
                ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles,empleado,fecha,host,userpc)');
                ZQMovimiento.SQL.Add('VALUES ("Intento de login fallido.","El usuario: '+username.Text+', ingreso datos incorrectos.","'+username.Text+'","'+FormatDateTime('YYYY/MM/DD',Date())+'","'+getHostName()+'","'+GetUserFromWindows()+'")');
                ZQMovimiento.ExecSQL;
            end;
    except
        on E: EZSQLException do
        begin
            raise Exception.Create('Error: No se puede conectar a la base de datos. '+#13+'Contacte al desarrollador del sistema.');
            ZQMovimiento.Close;
            ZQMovimiento.SQL.Clear;
            ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento, movimiento_detalles,empleado,fecha,host,userpc)');
            ZQMovimiento.SQL.Add('VALUES ("Intento de conexión a la BD.","Se realizó un intento fallido el día '+DateToStr(Now())+'.","'+username.Text+'","'+FormatDateTime('YYYY/MM/DD',Date())+'","'+getHostName()+'","'+GetUserFromWindows()+'")');
            ZQMovimiento.ExecSQL;
        end;
        end;
    end;
end;

end.
