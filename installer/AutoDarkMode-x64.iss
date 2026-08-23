#define MyAppVersion GetEnv("ADM_VERSION")

[Setup]
AppId={{B0C6C0C2-5B17-4E7B-9C0E-7D9B13F8D8A4}
AppName=Auto Dark Mode
AppVersion={#MyAppVersion}
AppPublisher=AutoDarkMode
AppPublisherURL=https://github.com/AutoDarkMode/Windows-Auto-Night-Mode
DefaultDirName={localappdata}\Programs\AutoDarkMode
DefaultGroupName=Auto Dark Mode
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputDir=..\bin\Artifacts
OutputBaseFilename=AutoDarkMode_Setup_{#MyAppVersion}_x64
SetupIconFile=..\AutoDarkModeIcon.ico
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\adm-app\ui\AutoDarkModeApp.exe
ChangesAssociations=no

[Files]
Source: "..\bin\Publish\x64\adm-app\*"; DestDir: "{app}\adm-app"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\bin\Publish\x64\adm-updater\*"; DestDir: "{app}\adm-updater"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Auto Dark Mode"; Filename: "{app}\adm-app\ui\AutoDarkModeApp.exe"
Name: "{autodesktop}\Auto Dark Mode"; Filename: "{app}\adm-app\ui\AutoDarkModeApp.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional icons:"; Flags: unchecked

[Run]
Filename: "{app}\adm-app\ui\AutoDarkModeApp.exe"; Description: "Launch Auto Dark Mode"; Flags: nowait postinstall skipifsilent
