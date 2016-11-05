; 'Run By Smartscreen' can run the executable file with SmartScreen check even if it does not have 
;'Mark of the Web'.

#include <Array.au3>
#include <File.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>

Local $FileDrive='' 
Local $Filename=''
Local $FilePath=''
Local $FileExt=''
Local $IsSmartScreenEnabled = 1

;Test the Windows version
If not (@OSVersion="WIN_10" or  @OSVersion="WIN_81" or @OSVersion="WIN_8") Then
   MsgBox(0, "", "Only Windows 10, Windows 8.1, and Windows 8 are supported")
EndIf

;Test if Smartscreen is enabled
Local $ES1 = RegRead('HKLM\SOFTWARE\Policies\Microsoft\Windows\System', 'EnableSmartScreen')
Local $ES2 = RegRead('HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer', 'SmartScreenEnabled')
If @error<>0 Then $ES2 = 'ERROR'
If $ES1="0" Then
      $IsSmartScreenEnabled = 0
Else 
    IF ($ES2='Off' or $ES2='ERROR') Then
      $IsSmartScreenEnabled = 0
    EndIf
EndIf
If $IsSmartScreenEnabled = 0 Then
   MsgBox(0,"","The SmartScreen is disabled. Please enable it to make use of 'Run By Smartscreen'. ")
   Exit
EndIf

;Commandline parameters check
If $CmdLine[0] = 0 Then 
    Local $YesNo = MsgBox(4,"","Do you want to have 'Run By SmartScreen' option in Explorer context menu?")
   Switch $YesNo
       case 6
          If @OSArch="X64" Then Local $value = @WindowsDir & '\RunBySmartscreen(x64).exe "%1" %*'
          If @OSArch="X86" Then Local $value = @WindowsDir & '\RunBySmartscreen(x86).exe "%1" %*'
          Local $keyname = 'HKEY_CLASSES_ROOT\*\shell\Run By SmartScreen\command'
          Local $valuename = ""
          Local $keynameIcon = 'HKCR\*\shell\Run By SmartScreen'
          Local $valueIcon = @WindowsDir & '\system32\SmartScreenSettings.exe'
          RegWrite($keynameIcon, 'Icon','REG_SZ',$valueIcon)
          RegWrite($keyname, '','REG_SZ',$value) 
          MsgBox(0, "", "'Run By SmartScreen' is enabled. Please, choose this option in Explorer right click context menu to run executables with SmartScreen check." )  
          Exit    
       case 7
          RegDelete('HKEY_CLASSES_ROOT\*\shell\Run By SmartScreen')
          MsgBox(0, "", "'Run By SmartScreen' is disabled" )  
          Exit
   EndSwitch 

EndIf

_PathSplit ( $CmdLine[1], $FileDrive, $FilePath, $Filename, $FileExt)
Local $FileSystem = DriveGetFileSystem ($FileDrive)

;MsgBox(0,"",$Cmdline[1] & @CRLF & $FilePath & @CRLF & $Filename & @CRLF & $FileExt )

$FileExt = StringLower($FileExt)

;Manage non NTFS drives = copy file to @TempDir on the system hard drive.
If not ($FileSystem="NTFS") Then 
FileCopy ( $CmdLine[1], @TempDir & '\' & $Filename & $FileExt)
$CmdLine[1] = @TempDir & '\' & $Filename & $FileExt
EndIf

;Trim file path to compare next with Windows, Program Files, and Program Files (x86).
Local $x = StringLeft($CmdLine[1],11)
Local $y = StringLeft($CmdLine[1],17)
Local $z = StringLeft($CmdLine[1],23)
Local $PF86=1
Local $Smartscreen = 1

;Check for false "Program Files (x86)" folder in 32Bit Windows
If (@OSArch='X86' and FileExists ( @ProgramFilesDir & ' (x86)\') = 1) then $PF86=0

;Exclude System Space from SmartScreen check
If StringLower($x) = StringLower(@WindowsDir & '\') Then $Smartscreen = 0
If StringLower($y)=StringLower(@ProgramFilesDir & '\') Then $Smartscreen = 0
If ($PF86=1 and StringLower($z)=StringLower(@ProgramFilesDir & ' (x86)\')) then $Smartscreen = 0

;Manage Alternate Data Stream (Mark of the Web) to force SmartScreen check
If $Smartscreen = 1 Then
   If not ($FileExt = ".bat" or $FileExt = ".cmd" or $FileExt = ".com" or $FileExt = ".cpl" or $FileExt = ".dll" or $FileExt = ".exe" or $FileExt = ".jse" or $FileExt = ".msi"  or $FileExt = ".ocx" or $FileExt = ".pif" or $FileExt = ".vbe") Then
      MsgBox(0,"", "The  " & StringUpper($FileExt) & "  files are not supported by SmartScreen App on the run.")
      Exit
   EndIf
   FileSetAttrib($CmdLine[1],"-RHS")
   ADS_Delete($CmdLine[1])   
   ADS_ADD($CmdLine[1])
EndIf

;Finally, run the file
ShellExecute($CmdLine[1],"",$FileDrive & $FilePath)



; Functions

Func ADS_ADD($sFilename)
;Add "Mark of the Web"

    Local $sZoneIDFileName
    ; Streams are assembled as "filename" + ":" + "Stream_ID"
    $sZoneIDFileName = FileWriteLine($sFilename & ":Zone.Identifier","[ZoneTransfer]")
    $sZoneIDFileName = FileWriteLine($sFilename & ":Zone.Identifier","ZoneId=3") 
EndFunc


Func ADS_Delete($sFilename)
;Delete Alternate Data Stream (Zone.Identifier) used by Smartscreen to mark files
    
    Local $aRet, $sZoneIDFileName
    ; Streams are assembled as "filename" + ":" + "Stream_ID"
    $sZoneIDFileName = $sFilename & ":Zone.Identifier"

    ; Make sure the stream exists
    If FileExists($sZoneIDFileName) Then
        ; While FileExists() works, FileDelete() doesn't, probably due to some internal sanity checks
        $aRet = DllCall("kernel32.dll", "bool", "DeleteFileW", "wstr", $sZoneIDFileName)
        If @error Then Return SetError(2, @error,0)
        Return $aRet[0]
    EndIf
    Return 0
EndFunc