#Run-By-Smartscreen

'Run By Smartscreen' is a very simple idea to safely open/run the new files via the option on the Explorer right click context menu. 'Run By Smartscreen' can mark files with MOTW, so they are treated as downloaded from the Internet. This forces SmartScreen check before running the exexutable with MOTW. Furthermore, the popular documents marked with MOTW will be opened in 'Protected View', if the document application has such ability (like MS Office 2010+ and Adobe Acrobat Reader 10+). 'Run By Smartscreen' can also block the files with unsafe extensions (over 250 extensions).


Why the SmartScreen?

The SmartScreen technology is one of the best for fighting 0-day malware files.

Why 'Run By SmartScreen'?

This technology is only half-way adopted in Windows. SmartScreen Application Reputation can check executables if they have 'Mark of the Web', that is attached to files after downloading from the Internet by popular Web Browsers, Windows Store or Windows OneDrive. Yet, there are many cases when files do not have 'Mark of the Web', and then SmartScreen Filter will simply ignore them on the run (see REMARKS).


INSTALLATION

'Run By Smartscreen' works only with Windows 8 and higher versions. Download the right installer: RunBySmartScreen(x64).exe (for 64-bit system), RunBySmartScreen(x86).exe (for 32-bit system).

For 64-bit OS

Run executable  RunBySmartScreen(x64).exe with Administrative Rights ('Run As Administrator' option in Explorer context menu). After that, the 'Run by SmartScreen' option should appear in Explorer context menu. If not, the 'log out'/'log on' procedure should help. 

For 32-bit OS

Do as in the case of 64-bit, but choose RunBySmartScreen(x86).exe

---------------------------------------------------------------------------------------------------------------------------------------
The main idea of 'Run By SmartScreen' did not change. This program is intended to help the users to safely open all new files. There are
some changes as compared to previous versions. The new version works as follows:

1. Executables (COM, EXE, MSI, and SCR files) located in the System Space (= inside 'C:\Windows', 'C:\Program Files', 'C:\Program Files
(x86)') are opened normally, without SmartScreen check.

2. The above executables located in the User Space (= outside 'C:\Windows', 'C:\Program Files', 'C:\Program Files (x86)') are checked by
SmartScreen before running.

3. Files located in the User Space with potentially dangerous extensions (scripts, most MS Office files, etc.), are not allowed to open
(similarly to Software Restriction Policies), and the program shows an alert.

4. Shortcuts with a command line in the 'Target' area, are always blocked and the program shows an alert.

5. Compressed archives not supported by Windows build-in unpacker  (.7z, .arj, .rar, .zipx) are not opened - only the short instruction
is displayed.

6. Popular formats related to MS Office and Adobe Acrobat Reader (DOC, DOCX, XLS, XLSX, PUB, PPT, PPTX, ACCDB, PDF) are opened with the
warning instruction, and the MOTW is added to the file.

7. During the installation, 'Run By SmartScreen' changes the Adobe Reader 10+/DC 'Protected View' setting, similarly to the default 'Protected View' setting in MS Office 2010+. So, 'Protected View' is applied when MS Office and Adobe Acrobat Reader 10+/DC are used for
opening the popular documents (DOC, DOCX, XLS, XLSX, PUB, PPT, PPTX, ACCDB, PDF). Other MS Office documents are considered as dangerous
(see point 3).

8. Other files (ZIP archives, media, photos, etc.) are opened normally without warnings.


The program has hardcoded list of dangerous file extensions:

ACCDA, ACCDE, ACCDR, ACCDT, ACM, AD, ADE, ADN, ADP, AIR, APP, APPLICATION, APPREF-MS, ARC, ASA, ASP, ASPX, ASX, AX, BAS, BAT, BZ, BZ2,
CAB, CDB, CER, CFG, CHI, CHM, CLA, CLASS, CLB, CMD, CNT, CNV, COM, COMMAND, CPL, CPX, CRAZY, CRT, CRX, CSH, CSV, DB, DCR, DER, DESKLINK,
DESKTOP, DIAGCAB, DIF, DIR, DLL, DMG, DOCB, DOCM, DOT, DOTM, DOTX, DQY, DRV, EXE, FON, FXP, GADGET, GLK, GRP, GZ, HEX, HLP, HPJ, HQX,
HTA, HTC, HTM, HTT, IE, IME, INF, INI, INS, IQY, ISP, ITS, JAR, JNLP, JOB, JS, JSE, KSH, LACCDB, LDB, LIBRARY-MS, LOCAL, LZH, MAD, MAF,
MAG, MAM, MANIFEST, MAPIMAIL, MAQ, MAR, MAS, MAT, MAU, MAV, MAW, MAY, MCF, MDA, MDB, MDE, MDF, MDN, MDT, MDW, MDZ, MHT, MHTML, MMC, MOF,
MSC, MSH, MSH1, MSH1XML, MSH2, MSH2XML, MSHXML, MSI, MSP, MST, MSU, MUI, MYDOCS, NLS, NSH, OCX, ODS, OPS, OQY, OSD, PCD, PERL, PI, PIF,
PKG, PL, PLG, POT, POTM, POTX, PPAM, PPS, PPSM, PPSX, PPTM, PRF, PRG, PRINTEREXPORT, PRN, PS1, PS1XML, PS2, PS2XML, PSC1, PSC2, PSD1,
PSDM1, PST, PSTREG, PXD, PY, PY3, PYC, PYD, PYDE, PYI, PYO, PYP, PYT, PYW, PYWZ, PYX, PYZ, PYZW, RB, REG, RPY, RQY, RTF, SCT, SEA,
SEARCH-MS, SEARCHCONNECTOR-MS, SETTINGCONTENT-MS, SHB, SHS, SIT, SLDM, SLDX, SLK, SPL, STM, SWF, SYS, TAR, TAZ, TERM, TERMINAL, TGZ,
THEME, TLB, TMP, TOOL, TSP, URL, VB, VBE, VBP, VBS, VSMACROS, VSS, VST, VSW, VXD, WAS, WBK, WEBLOC, WEBPNP, WEBSITE, WS, WSC, WSF, WSH,
XBAP, XLA, XLAM, XLB, XLC, XLD, XLL, XLM, XLSB, XLSM, XLT, XLTM, XLTX, XLW, XML, XNK, XPI, XPS, Z, ZFSENDTOTARGET, ZLO, ZOO.


The above list is based on SRP, Outlook Web Access, Gmail, and Adobe Acrobat Reader file extension blacklists.

The files with extensions: BAT, CMD, CPL, DLL, JSE, OCX, and VBE are supported by SmartScreen Application Reputation. But, their
SmartScreen detection is not good, so they are added to the list of dangerous file extensions. Even if they are accepted by SmartScreen,
then will be blocked with notification.



UNINSTALLATION

For 64 Bit OS

Navigate to RunBySmartScreen(x64).exe in C:\Windows folder, and run this file with Administrative Rights. The message: "Do you want to
have 'Run By SmartScreen' option in Explorer context menu?" will be shown. Choose 'NO' button. After that, the executable can be deleted.

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

'Run By SmartScreen' covers all vectors of infection listed in the point A).

REGISTRY CHANGES:

HKCR\\*\shell\Run By SmartScreen\

HKCR\Application.Reference!IsShortcut

HKCR\Application.Reference!NoIsShortcut

HKCR\IE.AssocFile.URL!IsShortcut

HKCR\IE.AssocFile.URL!NoIsShortcut

HKCR\InternetShortcut!IsShortcut

HKCR\InternetShortcut!NoIsShortcut

HKCR\Microsoft.Website!IsShortcut

HKCR\Microsoft.Website!NoIsShortcut

HKCR\WSHFile!IsShortcut

HKCR\WSHFile!NoIsShortcut


PROGRAM INFO

'Run By Smartscreen' was coded and compiled with AutoIt v3.3.14.2 (see RunBySmartscreen.au3 source file). 
This is the the stable version 3.0.0.0, updated in October 2018.
