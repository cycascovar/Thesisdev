unit F_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Menus, CustomizeDlg, Ribbon,
  RibbonLunaStyleActnCtrls, ToolWin, ActnMan, ActnCtrls, ImgList;

type
  TFMain = class(TForm)
    resumengral: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Descripcion: TLabel;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Menu11: TMenuItem;
    codigosrecargas: TBitBtn;
    Label3: TLabel;
    cbtodos: TCheckBox;
    cblocal: TCheckBox;
    Ayuda1: TMenuItem;
    Verayuda1: TMenuItem;
    gestionusuarios: TBitBtn;
    ImageList1: TImageList;
    test1: TMenuItem;
    test2: TMenuItem;
    Garantia1: TMenuItem;
    Reparacion1: TMenuItem;
    Ventas1: TMenuItem;
    CodigosRecargas1: TMenuItem;
    Celulares1: TMenuItem;
    Entregados1: TMenuItem;
    Reparacion2: TMenuItem;
    Garantia2: TMenuItem;
    Contactocondesarrollador1: TMenuItem;
    procedure resumengralClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gestionusuariosMouseEnter(Sender: TObject);
    procedure gestionusuariosMouseLeave(Sender: TObject);
    procedure resumengralMouseEnter(Sender: TObject);
    procedure resumengralMouseLeave(Sender: TObject);
    procedure gestionusuariosClick(Sender: TObject);
    procedure codigosrecargasMouseEnter(Sender: TObject);
    procedure codigosrecargasMouseLeave(Sender: TObject);
    procedure codigosrecargasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Contactocondesarrollador1Click(Sender: TObject);
    procedure Garantia1Click(Sender: TObject);
    procedure Ventas1Click(Sender: TObject);
    procedure Reparacion1Click(Sender: TObject);
    procedure test2Click(Sender: TObject);
    procedure Entregados1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation
uses
    F_PrincipalAdmin,F_Usuarios,C_Recargas, FA_Login, F_AContacto,
    CClientesGarantia, CClientesReparacion, FC_EquiposEntregados;

{$R *.dfm}

procedure TFMain.codigosrecargasClick(Sender: TObject);
begin
  CRecargas.Enabled := false;
  CRecargas := TCRecargas.Create(self);
  CRecargas.ShowModal;
end;

procedure TFMain.codigosrecargasMouseEnter(Sender: TObject);
begin
    descripcion.Caption := 'En �ste m�dulo, Ud. puede ver los c�digos que tienen asigados la sucursal local o bien '+#13+'todas las sucursales. Podr� agregar uno o m�s codigos tambi�n.';
end;

procedure TFMain.codigosrecargasMouseLeave(Sender: TObject);
begin
    descripcion.Caption := '';
end;

procedure TFMain.Contactocondesarrollador1Click(Sender: TObject);
begin
    if Contactocondesarrollador1.Enabled = false then
        ShowMessage('Espere la siguiente versi�n de Celulares Castillo para poder usar este m�dulo.')
    else
    begin
        FAContacto.Enabled := false;
        FAContacto := TFAContacto.Create(self);
        FAContacto.ShowModal;
    end;
end;

procedure TFMain.Entregados1Click(Sender: TObject);
begin
  FCEquiposEntregados.Enabled := false;
  FCEquiposEntregados := TFCEquiposEntregados.Create(self);
  FCEquiposEntregados.ShowModal;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FALogin.Close;
end;

procedure TFMain.FormCreate(Sender: TObject);
begin
//    SetWindowLong(Handle, GWL_EXSTYLE, WS_EX_APPWINDOW);
end;

procedure TFMain.FormShow(Sender: TObject);
begin
    gestionusuarios.Caption := '&Gesti�n de usuarios'+#13+'y movimientos';
    descripcion.Caption := '';

    codigosrecargas.Caption := '&Dar de alta '+#13+'c�digos de recargas.';
    label3.Caption := 'Ojo: Si Ud. selecciona cargar los datos de todas las sucursales y no cuenta con una conexi�n a internet, el programa posiblemente'
                        +#13+'tendr� un error.'
end;

procedure TFMain.Garantia1Click(Sender: TObject);
begin
    C_ClientesGarantia.Enabled := false;
    C_ClientesGarantia := TC_ClientesGarantia.Create(self);
    C_ClientesGarantia.ShowModal;
end;

procedure TFMain.gestionusuariosClick(Sender: TObject);
begin
{    if (cblocal.Checked = false) and (cbtodos.Checked = false) then
        ShowMessage('Seleccione si los datos ser�n locales o de todas las sucursales')
    else if (cblocal.Checked = true) and (cbtodos.Checked = true)then
        ShowMessage('No puede seleccionar ambos!')
    else
    begin}
    FUsuarios.Enabled := false;
    FUsuarios := TFUsuarios.Create(self);
    FUsuarios.ShowModal;
//    end;


end;

procedure TFMain.gestionusuariosMouseEnter(Sender: TObject);
begin
    descripcion.Caption := 'En �ste m�dulo, Ud. puede ver los movimientos que han hecho los empleados de su sucursales o bien s�lo '+#13+'los movimientos de la sucursal actual. Ud tambi�n puede eliminar, modificar o agregar empleados.';
end;

procedure TFMain.gestionusuariosMouseLeave(Sender: TObject);
begin
    descripcion.Caption := '';
end;

procedure TFMain.Reparacion1Click(Sender: TObject);
begin
    C_ClientesReparacion.Enabled := false;
    C_ClientesReparacion := TC_ClientesReparacion.Create(self);
    C_ClientesReparacion.ShowModal;
end;

procedure TFMain.resumengralClick(Sender: TObject);
begin
    FPrincipalAdmin.Enabled := false;
    FPrincipalAdmin := TFPrincipalAdmin.Create(self);
    FPrincipalAdmin.ShowModal;
end;

procedure TFMain.resumengralMouseEnter(Sender: TObject);
begin
    descripcion.Caption :=
    'En �ste m�dulo, Ud. puede ver un res�men general sobre: '
    +#13+#42+' Equipos en garant�a.'
    +#13+#42+' Equipos en reparaci�n.'
    +#13+#42+' Equipos mas y menos vendidos por sucursal o en todas las sucursal local.'
    +#13+#42+' Equipos en sucursal local o en todas las sucursales.';
end;

procedure TFMain.resumengralMouseLeave(Sender: TObject);
begin
    descripcion.Caption := '';
end;

procedure TFMain.test2Click(Sender: TObject);
begin
  FUsuarios.Enabled := false;
  FUsuarios := TFUsuarios.Create(self);
  FUsuarios.ShowModal;
end;

procedure TFMain.Ventas1Click(Sender: TObject);
begin
{    C_ClientesGarantia.Enabled := false;
    C_ClientesGarantia := TC_ClientesGarantia.Create(self);
    ShowModal;}
end;

end.
