unit uCore;

interface
//Éste es el núcleo de la aplicación, contiene todas las funciones del sistema.
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, pngimage, ZAbstractConnection, ZConnection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,Grids, DBGrids, Winsock;

type
    TDBGrid = class (DBGrids.TDBGrid)
    private
        procedure WmVScroll(var Message: TWMVScroll);
        message WM_VSCROLL;
end;

var
    ZQMovimiento : TZquery;
    suc : String;
    _hostname : String;
    _p,_u : String;
    _catalog, _db : String;

    procedure settingUp();

    procedure creaZQuery(Conexion : TZConnection);
    procedure agregaMovimiento(tipoUsuario : Integer; Movimiento : String; Detalles : String; Sucursal : String; Usuario : TCaption; Fecha : TDate; Hora: TDateTime); overload; //Movimiento, movimiento_detalles,usuario
    procedure agregaMovimiento(tipoUsuario : Integer; Movimiento : String; Detalles : String; Usuario : TCaption; Fecha : TDate; Hora: TDateTime); overload;
//    procedure setUserID(Form: TForm);
    procedure eliminaZQuery(ZQuery : TZQuery);
    procedure setTitleWindow(form: TForm; title: TCaption);
    procedure setSucursal(sucursal : String);

    function getSucursal(): String;
    function FuncAvail(_dllname, _funcname: string; var _p: pointer): boolean; //Verifica si la aplicación está conectada a Internet
    function verificaInternet(): boolean;
    function obtieneMes(Fecha: TDate): Integer;
    function cambiaFecha(Fecha: TDate):String;
    function getHostname():String;
    function GetUserFromWindows(): String;


implementation

procedure settingUp();
begin
  _CATALOG := 'chdesarrollo';
  _db := 'chdesarrollo';
  _hostname := 'localhost';
  _p := 'toor';
  _u := 'root';
end;

//   This function is useful if you want to use the TDBGrid's scroll to move through the data in the grid component.
procedure TDBGrid.WmVScroll(var Message: TWMVScroll);
begin
    if Message.ScrollCode = SB_THUMBTRACK then
        Message.ScrollCode := SB_THUMBPOSITION;
    inherited;
end;

//   Receives a TZConnection compontent to make the main connection.
procedure creaZQuery(Conexion : TZConnection);
begin
    ZQMovimiento := TZQuery.Create(nil);
    ZQMovimiento.Connection := Conexion;
end;

procedure agregaMovimiento(tipoUsuario : Integer; Movimiento : String; Detalles : String; Sucursal : String; Usuario : TCaption; Fecha : TDate; Hora : TDateTime); //Movimiento, movimiento_detalles,usuario
begin
//    Employee's movements.
    ZQMovimiento.Close;
    ZQMovimiento.SQL.Clear;
    ZQMovimiento.SQL.Add('INSERT INTO empleado_movimiento (movimiento,movimiento_detalles, sucursal, empleado, fecha)');
    ZQMovimiento.SQL.Add('VALUES ("'+Movimiento+'","'+Detalles+'","'+Sucursal+'","'+Usuario+'","'+FormatDateTime('YYYY/MM/DD',Fecha)+'")');
    ZQMovimiento.ExecSQL;
end;

procedure agregaMovimiento(tipoUsuario : Integer; Movimiento : String; Detalles : String; Usuario : TCaption; Fecha : TDate; Hora: TDateTime);
begin
//    Administrator's movements.
    ZQMovimiento.Close;
    ZQMovimiento.SQL.Clear;
    ZQMovimiento.SQL.Add('INSERT INTO administrador_movimiento (tipo,movimiento,fecha,usuario)');
    ZQMovimiento.SQL.Add('VALUES ("'+Movimiento+'","'+Detalles+'","'+FormatDateTime('YYYY/MM/DD',Fecha)+'","'+Usuario+'")');
    ZQMovimiento.ExecSQL;
end;

//    Frees any TZQuery component sent
procedure eliminaZQuery(ZQuery : TZQuery);
begin
    ZQuery := nil;
    ZQuery.Free;
end;

procedure setTitleWindow(form: TForm; title: TCaption); //with 'self' as a parameter, it should get the given form's name
begin
  form.Caption := title;
end;

procedure setSucursal(sucursal : String);
begin
    suc := sucursal;
end;


function getSucursal():String;
begin
  Result := suc;
end;
function FuncAvail(_dllname, _funcname: string; var _p: pointer): boolean;
  {return True if _funcname exists in _dllname}
var _lib: tHandle;
begin
    Result := false;
    if LoadLibrary(PChar(_dllname)) = 0 then exit;
        _lib := GetModuleHandle(PChar(_dllname)) ;
    if _lib <> 0 then begin
        _p := GetProcAddress(_lib, PChar(_funcname)) ;
    if _p <> NIL then Result := true;
    end;
end;

function verificaInternet(): boolean;
var
    InetIsOffline: function(dwFlags: DWORD): BOOL; stdcall;
begin
    if FuncAvail('URL.DLL','InetIsOffline',@InetIsOffline) then
    begin
        if InetIsOffline(0) = true
        then
            verificaInternet := false
        else
            verificaInternet := true;
    end;
end;

function obtieneMes(Fecha: TDate): Integer;
var
  mes : Integer;
  aux,month : String;
begin
  month := DateToStr(Fecha);
  aux := copy(month,4,2);
  mes := StrToInt(aux);
  obtieneMes := mes;
end;

function cambiaFecha(Fecha: TDate):String;
var
  aux,fechaNueva : String;
begin
  //12/02/2014
    //copiar el año, mes y dia en tres variables y luego adaptarlas al formato de mysql; retornar fecha mysql
  aux := DateToStr(Fecha);
  fechaNueva := copy(aux,7,4)+'-'+copy(aux,4,2)+'-'+copy(aux,1,2); //DD/MM/YYYY cambia a YYYY/MM/DD
  cambiaFecha := fechaNueva;
end;

  {
  Call SHELL32.DLL for Win < Win98
  otherwise call URL.dll
  }

function getHostname(): String;
var
  buffer: array[0..255] of char;
size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

Function GetUserFromWindows: string;
Var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PChar(UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'Unknown';
End;
end.
