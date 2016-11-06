# Run-By-Smartscreen

'Run By Smartscreen' is a very simple idea to run new executable files with SmartScreen check using right click Explorer context menu. It covers in a smart way file execution in the User Space ( = everything outside C:\Windows, C:\Program Files, C:\Program Files (x86)), that is welcome because dropping files to the User Space is not guarded by UAC.

Why the SmartScreen?

The SmartScreen technology is one of the best for fighting 0-day malware files.

Why 'Run By SmartScreen'?

This technology is only half-way adopted in Windows. SmartScreen on the run can check executables with "Mark of the Web", that is attached to files after downloading from the Internet by popular Web Browsers, Windows Store or Windows OneDrive. There are many cases when files do not have "Mark of the Web", and then SmartScreen Filter simply ignore them on the run (see REMARKS).


INSTALLATION

'Run By Smartscreen' works only with Windows 8 and higher versions.
Unzip the RunBySmartscreen.zip - there should be 4 files in unpacked RunBySmartscreen folder: RunBySmartscreen.au3 (source script), RunBySmartScreen(x64).exe (for 64Bit system), RunBySmartScreen(x86).exe (for 32Bit system), and RunBySmartscreenHelp.txt (help file).

For 64Bit OS

Copy RunBySmartScreen(x64).exe to C:\Windows, and then run this file with Administrative Rights ('Run As Administrator' option in Explorer context menu).
After that, the 'Run by SmartScreen' option should appear in Explorer context menu. If not, the log out/log on procedure should help.
Please do not change the name and the path of  RunBySmartScreen(x64).exe - they are hard-coded in the program, and are necessary to its proper functioning.

For 32Bit OS

Do as in the case of 64Bit, but choose RunBySmartScreen(x86).exe

Running one of above executables adds/removes "Run By SmartScreen" option to Explorer context menu. This option forces file execution with SmartScreen check for: BAT, CMD, COM, CPL, DLL, EXE, JSE, MSI, OCX, SCR and VBE files, located in the User Space. Files with other extensions will not be allowed to execute. If the file is located in the System Space (inside C:\Windows, C:\Program Files, C:\Program Files (x86)), then it is executed without SmartScreen check.

UNINSTALLATION

For 64 Bit OS

Navigate to RunBySmartScreen(x64).exe in C:\Windows folder, and run this file with Administrative Rights. The message:
"Do you want to have 'Run By SmartScreen' option in Explorer context menu?" will be shown.
Choose NO button to disable it.

For 32Bit OS

Do as in the case of 64Bit, but choose RunBySmartScreen(x86).exe

After that the executable can be deleted.

REMARKS

The SmartScreen Filter in Windows 8+ allows some vectors of infection listed below:

A) You have got the executable file (BAT, CMD, COM, CPL, DLL, EXE, JSE, MSI, OCX, PIF, SCR and VBE) using:
* the downloader or torrent application (EagleGet, utorrent etc.);
* container format file (zip, 7z, arj, rar, etc.);
* CD/DVD/Blue-ray disc;
* CD/DVD/Blue-ray disc image (iso, bin, etc.);
* non NTFS USB storage device (FAT32 pendrive, FAT32 usb disk);
* Memory Card;
so the file does not have the proper Alternate Data Stream attached ('Mark of the Web').

B) You have run the executable file with runas.exe (Microsoft), AdvancedRun (Nirsoft), RunAsSystem.exe (AprelTech.com), etc.


'Run By SmartScreen' covers all vectors of infection listed in the A) point.
Alternatively to "Run By SmartScreen", you may simply upload the file to One Drive (or mailbox) , and download it again. This procedure also activates SmartScreen check automatically.

Registry changes:

HKEY_CLASSES_ROOT\*\shell\Run By SmartScreen\


PROGRAM INFO

'Run By Smartscreen' was coded and compiled with AutoIt v3.3.14.2 (see RunBySmartscreen.au3 source file).
This is the second beta version, updated in 6 November 2016.
In the new version the write access check is added, to avoid running files without SmartScreen check, if the program could not add 'Mark of the Web' (ACL or another write access restrictions).
