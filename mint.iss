; https://github.com/DomGries/InnoDependencyInstaller


; requires netcorecheck.exe and netcorecheck_x64.exe (see CodeDependencies.iss)
#define public Dependency_Path_NetCoreCheck "dependencies\"

; requires dxwebsetup.exe (see CodeDependencies.iss)
;#define public Dependency_Path_DirectX "dependencies\"
#include "CodeDependencies.iss"
[Setup]
#define MyAppSetupName "Minty"
#define MyAppVersion "1.11"
#define MyAppPublisher "KW Team"
#define MyAppExeName "Minty.exe"

AppName={#MyAppSetupName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppSetupName} {#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
AppPublisher={#MyAppPublisher}
DefaultGroupName={#MyAppSetupName}
DefaultDirName={autopf}\{#MyAppSetupName}
UninstallDisplayIcon={app}\MyProgram.exe
AllowNoIcons=yes
OutputDir=C:\Users\Blair\Desktop\Mintlauncherinstaller
OutputBaseFilename=Minty
SetupIconFile=C:\Users\Blair\source\repos\Launcher\WpfApp1\virus.ico
Compression=lzma
SolidCompression=yes
DisableWelcomePage=False
PrivilegesRequired=admin

; remove next line if you only deploy 32-bit binaries and dependencies
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: en; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\Blair\source\repos\Launcher\WpfApp1\bin\Debug\net6.0-windows10.0.17763.0\Minty.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Blair\source\repos\Launcher\WpfApp1\bin\Debug\net6.0-windows10.0.17763.0\Minty.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Blair\source\repos\Launcher\WpfApp1\bin\Debug\net6.0-windows10.0.17763.0\Minty.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Debug\net6.0-windows10.0.17763.0\icon.ico"; DestDir: "{app}"

[Icons]
Name: "{group}\{#MyAppSetupName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppSetupName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppSetupName}"; Filename: "{app}\{#MyAppSetupName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppSetupName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppSetupName, '&', '&&')}}"

[Code]
function InitializeSetup: Boolean;
begin
  // comment out functions to disable installing them

#ifdef Dependency_Path_NetCoreCheck
  Dependency_AddDotNet70;
  Dependency_AddDotNet70Asp;
  Dependency_AddDotNet70Desktop;
#endif

  Result := True;
end;
