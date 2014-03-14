; Demonstrates copying 3 files and creating an icon.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!


; Crea variables globales al estilo C++
#define myApp "Celulares Chapulh"
#define destino "C:\Celulares Chapulh"
#define appExe "CelularesChapulhAdmin.exe"
#define getVersion GetFileVersion('CelularesChapulhAdmin.exe')
#define baseDir "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32"

[Setup]
  AppName={#myApp}
  AppVersion=1.0.0.3
  DefaultDirName={#destino}
  DefaultGroupName={#myApp}
  UninstallDisplayIcon={#destino}\{#appExe}
  Compression=lzma2
  SolidCompression=yes
  OutputDir=S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Instaladores
  OutputBaseFilename = instalador2
  ; VersionInfoVersion = {#getVersion}
  VersionInfoVersion = 1.0.0.3

[Languages]
  Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
  ; Source: "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32\CelularesChapulhAdmin.exe"; DestDir: "{#destino}"
  ; Source: "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32\libmysql.dll"; DestDir: "{#destino}"
  ; Source: "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32\libmysql41.dll"; DestDir: "{#destino}"
  ; Source: "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32\libmySQL50.dll"; DestDir: "{#destino}"
  ; Source: "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32\libmysql51.dll"; DestDir: "{#destino}"
  ; Source: "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32\libmysql55.dll"; DestDir: "{#destino}"

  Source: "{#baseDir}/CelularesChapulhAdmin.exe"; DestDir: "{#destino}"
  Source: "{#baseDir}/libmysql.dll"; DestDir: "{#destino}"
  Source: "{#baseDir}/libmysql41.dll"; DestDir: "{#destino}"
  Source: "{#baseDir}/libmySQL50.dll"; DestDir: "{#destino}"
  Source: "{#baseDir}/libmysql51.dll"; DestDir: "{#destino}"
  Source: "{#baseDir}/libmysql55.dll"; DestDir: "{#destino}"

; Seccion para agregar cosas a la carpeta que se muestra en inicio
[Icons]
  Name: "{group}\Celulares Chapulh"; Filename: "S:\Dropbox\uaeh\Proyecto de fin de carrera I\Proyecto\Celulares chapulh\Debug\Win32\CelularesChapulhAdmin.exe"
  Name: "{group}\{cm:UninstallProgram,{#myApp}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\{#appExe}"; Description: "{cm:LaunchProgram,{#StringChange(myApp, '&', '&&')}}"; Flags: nowait postinstall skipifsilent