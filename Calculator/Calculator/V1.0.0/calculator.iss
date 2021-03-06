; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "C# Calculator - Version 1.0.0"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "TheDarkGamerYT"
#define MyAppURL "https://github.com/TheDarkGamerYT/calculator-csharp"
#define MyAppExeName "Calculator.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{579294F0-147F-4A27-9582-CAB37C3E442F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\jonat\Desktop\Calculator\Calculator\V1.0.0\Calculator.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\jonat\Desktop\Calculator\Calculator\V1.0.0\Calculator.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\jonat\Desktop\Calculator\Calculator\V1.0.0\Calculator.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\jonat\Desktop\Calculator\Calculator\V1.0.0\Calculator.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\jonat\Desktop\Calculator\Calculator\V1.0.0\Calculator.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

