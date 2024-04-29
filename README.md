# RunBySmartScreen ver. 5.0.1.1 (January 2024)
https://github.com/AndyFul/Run-By-Smartscreen/raw/master/RunBySmartscreen_5011.exe

# RunBySmartScreen ver. 5.0.0.0 (July 2023)
https://github.com/AndyFul/Run-By-Smartscreen/raw/master/RunBySmartscreen_5000.exe

# RunBySmartScreen ver. 4.1.1.1 (May 2023)
https://github.com/AndyFul/Run-By-Smartscreen/raw/master/RunBySmartscreen_4111.exe

## PROGRAM INFO

'Run By SmartScreen' works only with Windows 8 and higher versions.
It is based on a very simple idea to open/run safely the new files when using the right-click Explorer context menu. It covers in a smart 
way file opening in the User Space ( = everything outside %WinDir%, %ProgramFiles%, and %ProgramFiles(x86)% ). 
This program can manage files in the User Space, as follows:
1. Run/check executables with SmartScreen.
2. Block files with potentially dangerous extensions.
3. Open vulnerable files with the warning instructions.
4. Prevent DLL hijacking of EXE files.
5. Safe files are run/opened without warnings.

Advanced users can apply 'Run By SmartScreen' for EXE and MSI installers (from sources not supported by SmartScreen) to force the 
SmartScreen check. Not Advanced users should consistently use 'Run By SmartScreen' for all new files.


## Why the SmartScreen?

The SmartScreen technology is one of the best for fighting 0-day malware files.

## Why 'Run By SmartScreen'?

This technology is only halfway adopted in Windows. SmartScreen for Explorer can check executables with the "Mark of the Web", which is 
attached to files after downloading from the Internet by popular Web Browsers, Windows Store, or Windows OneDrive. There are many cases 
when files do not have a "Mark of the Web", and then SmartScreen Filter simply ignores them on the run (see REMARKS).


## INSTALLATION

Run the executable  RunBySmartScreen_????.exe . The message: *Do you want to add the 'Run By SmartScreen' option in the Explorer 
context menu?* will be shown. Choose the 'YES' button. After that, the 'Run By SmartScreen' option should appear in the right-click 
Explorer context menu.


## UNINSTALLATION

Run the executable  RunBySmartScreen_????.exe . The message: *Do you want to add the 'Run By SmartScreen' option in the Explorer 
context menu?* will be shown. Choose the 'NO' button.


--------------------------------------------------------------------------------------------------------------------------------------

## How it works

This program is intended to help inexperienced users to open all new files. If the user tries to open the file with 'Run By SmartScreen' it works as follows:
1. Executables (COM, EXE, MSI, and SCR files) located in the System Space (= inside %WinDir%, %ProgramFiles%, and %ProgramFiles(x86)%) are opened normally, without SmartScreen check.
2. The above executables located in the User Space (= outside %WinDir%, %ProgramFiles%, and %ProgramFiles(x86)%) are checked by
   SmartScreen before running.
3. Files from the User Space, with potentially dangerous extensions (scripts, most MS Office files, etc.), are not allowed to open 
   (similarly to Software Restriction Policies), and the program shows an alert.
4. Shortcuts with a command line in the 'Target' area, are always blocked and the program shows an alert.
5. Compressed archives not supported by Windows build-in unpacker  (.7z, .arj, .bz, .bzip, .bz2, .bzip2, .fat, .lha, .lzh, .rar, 
   .r00-09, .rev, .xz, .zipx) are not opened - only the short instruction is displayed.
6. Popular formats related to MS Office and Adobe Acrobat Reader (DOC, DOCX, XLS, XLSX, PUB, PPT, PPTX, ONE, ACCDB, PDF) are opened 
   with the warning instruction, and the MOTW is added to the file. When the standalone version is used, these documents are always 
   opened via 'Run By SmartScreen' in 'Protected View'. 
7. The disk image files (.img, .iso, .ntfs, .vhd, .vhdx) are not opened - only the short instruction is displayed.
8. Other files (ZIP archives, media, photos, etc.) are opened normally without warnings.

The program has a hardcoded list of unsafe (potentially dangerous) file extensions:
ACCDA, ACCDE, ACCDR, ACCDT, ACCDU, ACM, AD, ADE, ADN, ADP, AIR, APP, APPLICATION, APPREF-MS, APPX, APPXBUNDLE, ARC, ASA, ASP, ASPX, 
ASX, AX, BAS, BAT, BGI, CAB, CDB, CER, CFG, CHI, CHM, CLA, CLASS, CLB, CMD, CNT, CNV, COMMAND, CPL, CPX, CRAZY, CRT, CRX, CSH, CSV, 
DB, DCR, DER, DESKLINK, DESKTOP, DIAGCAB, DIF, DIR, DLL, DMG, DOCB, DOCM, DOT, DOTM, DOTX, DQY, DRV, ECF, ELF, FON, FXP, GADGET, GLK, 
GRP, GZ, HEX, HLP, HPJ, HQX, HTA, HTC, HTM, HTT, IE, IME, INF, INI, INS, IQY, ISP, ITS, JAR, JNLP, JOB, JS, JSE, KSH, LACCDB, LDB, 
LIBRARY-MS, LOCAL, MAD, MAF, MAG, MAM, MANIFEST, MAPIMAIL, MAQ, MAR, MAS, MAT, MAU, MAV, MAW, MAY, MCF, MDA, MDB, MDE, MDF, MDN, MDT, 
MDW, MDZ, MHT, MHTML, MMC, MOF, MSC, MSH, MSH1, MSH1XML, MSH2, MSH2XML, MSHXML, MSIX, MSIXBUNDLE, MSP, MST, MSU, MUI, MYDOCS, NLS, 
NSH, OCX, ODS, ONE, OPS, OQY, OSD, PCD, PERL, PA, PI, PIF, PKG, PL, PLG, POT, POTM, POTX, PPA, PPAM, PPS, PPSM, PPSX, PPTM, PRF, PRG, 
PRINTEREXPORT, PRN, PS1, PS1XML, PS2, PS2XML, PSC1, PSC2, PSD1, PSDM1, PST, PSTREG, PXD, PY, PY3, PYC, PYD, PYDE, PYI, PYO, PYP, PYT, 
PYW, PYWZ, PYX, PYZ, PYZW, RB, REG, RPY, RQY, RTF, SCF, SCT, SEA, SEARCH-MS, SEARCHCONNECTOR-MS, SETTINGCONTENT-MS, SHB, SHS, SIT, 
SLDM, SLDX, SLK, SPL, STM, SWF, SYS, TAR, TAZ, TBZ, TERM, TERMINAL, TGZ, THEME, TLB, TMP, TOOL, TPZ, TSP, TXZ, TZ, URL, VB, VBE, VBP, 
VBS, VSMACROS, VSS, VST, VSW, VXD, WAS, WBK, WEBLOC, WEBPNP, WEBSITE, WIZ, WLL, WS, WSC, WSF, WSH, WWL, XBAP, XLA, XLAM, XLB, XLC, 
XLD, XLL, XLM, XLSB, XLSM, XLT, XLTM, XLTX, XLW, XML, XNK, XPI, XPS, XSL, Z, ZFSENDTOTARGET, ZLO, ZOO

The above list is based on SRP, Outlook Web Access, Gmail, and Adobe Acrobat Reader file extension blacklists.


## REMARKS

The SmartScreen Filter in Windows 8+ allows some vectors of infection listed below:

A) You have got the executable file by using:
* the downloader or torrent application (EagleGet, torrent, etc.);
* container format file (ZIP, 7Z, ARJ, RAR, etc.), except for some unpackers like Windows built-in unpacker.
* CD/DVD/Blue-ray disc;
* CD/DVD/Blue-ray disc image (iso, bin, etc.);
* non NTFS USB storage device (FAT32 pendrive, FAT32 USB disk);
* Memory Card;
so the file does not have the proper Alternate Data Stream attached ('Mark of the Web').

B) You have run the executable file with runas.exe (Microsoft), AdvancedRun (Nirsoft), RunAsSystem.exe (AprelTech.com), etc.

'Run By SmartScreen' covers all vectors of infection listed in point A).



## REGISTRY CHANGES:

HKCR\\*\shell\Run By SmartScreen\

HKCR\Application.Reference!IsShortcut

HKCR\Application.Reference!NoIsShortcut

HKCR\IE.AssocFile.URL!IsShortcut

HKCR\IE.AssocFile.URL!NoIsShortcut

HKCR\IE.AssocFile.WEBSITE!IsShortcut

HKCR\IE.AssocFile.WEBSITE!NoIsShortcut

HKCR\InternetShortcut!IsShortcut

HKCR\InternetShortcut!NoIsShortcut

HKCR\Microsoft.Website!IsShortcut

HKCR\Microsoft.Website!NoIsShortcut

HKCR\piffile!IsShortcut

HKCR\piffile!NoIsShortcut

HKCR\WSHFile!IsShortcut

HKCR\WSHFile!NoIsShortcut


The standalone installation changes the policies in the HKLM Registry Hive to set Protected View in Adobe Acrobat Reader.

