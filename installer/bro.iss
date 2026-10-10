#define MyAppName "Bro"
#ifndef MyAppVersion
  #define MyAppVersion "0.1.0"
#endif

[Setup]
AppId={{6436BCEE-AE10-4B83-979E-7860C49DFAE6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher=is-leeroy-jenkins
DefaultDirName={localappdata}\Programs\Bro
DefaultGroupName=Bro
OutputDir=..\dist-installer
OutputBaseFilename=Bro-Setup-{#MyAppVersion}
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
WizardStyle=modern
UninstallDisplayName=Bro
UninstallDisplayIcon={app}\Bro.exe
CloseApplications=yes

[Files]
Source: "..\dist\Bro\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"

[Icons]
Name: "{group}\Bro"; Filename: "{app}\Bro.exe"
Name: "{autodesktop}\Bro"; Filename: "{app}\Bro.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Bro.exe"; Description: "Launch Bro"; Flags: nowait postinstall skipifsilent
