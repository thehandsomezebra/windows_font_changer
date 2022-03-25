echo Windows Registry Editor Version 5.00 >"c:/newfont.reg"
echo  [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts] >>"c:/newfont.reg"
echo  "Segoe UI (TrueType)"="" >>"c:/newfont.reg"
echo  "Segoe UI Bold (TrueType)"="" >>"c:/newfont.reg"
echo  "Segoe UI Bold Italic (TrueType)"="" >>"c:/newfont.reg"
echo  "Segoe UI Italic (TrueType)"="" >>"c:/newfont.reg"
echo  "Segoe UI Light (TrueType)"="" >>"c:/newfont.reg"
echo  "Segoe UI Semibold (TrueType)"="" >>"c:/newfont.reg"
echo  "Segoe UI Symbol (TrueType)"="" >>"c:/newfont.reg"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes] >>"c:/newfont.reg"
echo "Segoe UI"="Verdana Bold">>"c:/newfont.reg"


REGEDIT c:/newfont.reg

del c:/newfont.reg
