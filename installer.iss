; Inno Setup Script para API Secure Conex
; Genera instalador en Windows 11 con ejecución automática

[Setup]
AppName=API Secure Conex
AppVersion=1.0
DefaultDirName={pf}\API Secure Conex
DefaultGroupName=API Secure Conex
OutputDir=dist
OutputBaseFilename=api-secure-conex-installer
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin

[Files]
Source: "dist\api-secure-conex.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "run_server.bat"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\API Secure Conex"; Filename: "{app}\run_server.bat"
Name: "{commondesktop}\API Secure Conex"; Filename: "{app}\run_server.bat"

[Run]
Filename: "{app}\run_server.bat"; Description: "Iniciar API Secure Conex"; Flags: nowait postinstall skipifsilent
