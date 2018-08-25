#Run-By-Smartscreen

'Run By Smartscreen' is a very simple idea to open new files with SmartScreen check using right click Explorer context menu. It covers in a smart way file opening in the User Space ( = everything outside 'C:\Windows', 'C:\Program Files', 'C:\Program Files (x86)'), that is welcome because dropping files to the User Space is not guarded by UAC.

Why the SmartScreen?

The SmartScreen technology is one of the best for fighting 0-day malware files.

Why 'Run By SmartScreen'?

This technology is only half-way adopted in Windows. 'SmartScreen App Reputation on Run' can check executables with 'Mark of the Web', that is attached to files after downloading from the Internet by popular Web Browsers, Windows Store or Windows OneDrive. Yet, there are many cases when files do not have 'Mark of the Web', and then SmartScreen Filter simply ignore them on the run (see REMARKS).


INSTALLATION

'Run By Smartscreen' works only with Windows 8 and higher versions. Unzip the RunBySmartscreen.zip - there should be 5 files in unpacked RunBySmartscreen folder: RunBySmartscreen.au3 (source script), RunBySmartScreen(x64).exe (for 64Bit system), RunBySmartScreen(x86).exe (for 32Bit system), RunBySmartscreenHelp.txt (help file), and What_Is_New.txt.

For 64 Bit OS

Run executable  RunBySmartScreen(x64).exe with Administrative Rights ('Run As Administrator' option in Explorer context menu). After that, the 'Run by SmartScreen' option should appear in Explorer context menu. If not, the 'log out'/'log on' procedure should help. After installation, the unzipped RunBySmartscreen folder can be deleted. 

For 32Bit OS

Do as in the case of 64Bit, but choose RunBySmartScreen(x86).exe


"Run By SmartScreen" option in Explorer context menu forces file execution with SmartScreen check for: BAT, CMD, COM, CPL, DLL, EXE, JSE, MSI, OCX, SCR and VBE files, located in the User Space. For DLL and OCX files 'Run By Smartscreen' adds only 'Mark of the Web'. Those files cannot be run directly from Explorer, but now running them by any program will trigger the SmartScreen check. 

This program is prepared to help inexperienced users to open all new files. If the user tries to open the file with "Run By SmartScreen" it works as enumerated below:

1. Files located in the System Space (= inside 'C:\Windows', 'C:\Program Files', 'C:\Program Files (x86)') are opened normally, without SmartScreen check.
2. The executables located in the User Space (= outside 'C:\Windows', 'C:\Program Files', 'C:\Program Files (x86)') are checked by SmartScreen before the run.
3. Files located in the User Space with somewhat dangerous extensions (not supported by SmartScreen), are not allowed to open (similarly to Software Restriction Policies), and the program shows an alert. 
4. Shortcuts with command line in 'Target' area are always blocked, and the program shows an alert.
5. Other files (media, photos, documents, etc.) are opened normally, without SmartScreen check.

The program has hard-coded list of dangerous extensions (not supported by 'SmartScreen App Reputation on Run'):

WSH, WSF, WSC, WS, VBS, VB, SHS, SCT, REG, PS1, PCD, MST, MSP, MSC, MDE, MDB, JS, JAR, ISP, INS, INF, HTA, HLP, CRT, CHM, BAS, ADP, ADE


UNINSTALLATION

For 64 Bit OS

Navigate to RunBySmartScreen(x64).exe in C:\Windows folder, and run this file with Administrative Rights. The message: "Do you want to have 'Run By SmartScreen' option in Explorer context menu?" will be shown. Choose 'NO' button. After that, the executable can be deleted.

For 32Bit OS

Do as in the case of 64Bit, but choose RunBySmartScreen(x86).exe



REMARKS

The SmartScreen Filter in Windows 8+ allows some vectors of infection listed below:

A) You have got the executable file (BAT, CMD, COM, CPL, DLL, EXE, JSE, MSI, OCX, SCR and VBE) using:

* the downloader or torrent application (EagleGet, utorrent etc.);

* container format file (zip, 7z, arj, rar, etc.), with the exception of built-in Windows decompressing option for ZIP files.

* CD/DVD/Blue-ray disc;

* CD/DVD/Blue-ray disc image (iso, bin, etc.);

* non NTFS USB storage device (FAT32 pendrive, FAT32 usb disk);

* Memory Card; so the file does not have the proper Alternate Data Stream attached ('Mark of the Web').

B) You have run the executable file with runas.exe (Microsoft), AdvancedRun (Nirsoft), RunAsSystem.exe (AprelTech.com), etc.

'Run By SmartScreen' covers all vectors of infection listed in the A) point. Alternatively to 'Run By SmartScreen', you may simply upload the file to One Drive (or mailbox) , and download it again. This procedure also activates SmartScreen check automatically.

Registry changes:

HKCR\\*\shell\Run By SmartScreen\

HKCR\WSHFile!IsShortcut

HKCR\WSHFile!NoIsShortcut


PROGRAM INFO

'Run By Smartscreen' was coded and compiled with AutoIt v3.3.14.2 (see RunBySmartscreen.au3 source file). 
This is the the stable version 2.0.1, updated: 28 November 2016.
