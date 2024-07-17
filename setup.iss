[Setup]
AppName=Apache Maven
AppVersion=3.9.8
DefaultDirName={pf}\ApacheMaven
DefaultGroupName=ApacheMaven
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
AppPublisher=The Apache Software Foundation
AppPublisherURL=https://maven.apache.org

[Files]
Source: "apache-maven\apache-maven-3.9.8\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Uninstall ApacheMaven"; Filename: "{uninstallexe}"

[Registry]
; Set the M2_HOME environment variable
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: string; ValueName: "M2_HOME"; ValueData: "{app}"; Flags: preservestringtype
; Update the PATH environment variable to include M2_HOME\bin
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};%M2_HOME%\bin"; Flags: preservestringtype
