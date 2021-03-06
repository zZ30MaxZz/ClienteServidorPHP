; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "socketAPP"
#define MyAppVersion "1.2"
#define MyAppPublisher "Team de Sistemas Distribuidos 2017 I"
#define MyAppExeName "appSocket.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{295E8522-B917-4AD9-8102-58A18993B935}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName=SoftwareSocket\socketAPP
OutputDir=C:\Users\max\Desktop\Aplicacióno Socket 1.2
OutputBaseFilename=SetupAppSocketSistemasDistribuidos
SetupIconFile=C:\Users\max\Desktop\Aplicacióno Socket 1.2\iconos\chat-speech-bubbles_icon-icons.com_54041.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\max\Desktop\Aplicacióno Socket 1.2\appSocket.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\SistemasDistribuidos\Sockets\CHAT ANR\Cliente Java\Pusher\dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\SistemasDistribuidos\Sockets\CHAT ANR\Cliente Java\Pusher\src\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

