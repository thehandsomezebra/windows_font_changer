:: reverting.. just to keep a baseline.

echo Windows Registry Editor Version 5.00 > "c:/revertfont.reg"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts] >> "c:/revertfont.reg"
echo "Segoe UI (TrueType)"="segoeui.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Black (TrueType)"="seguibl.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Black Italic (TrueType)"="seguibli.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Bold (TrueType)"="segoeuib.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Bold Italic (TrueType)"="segoeuiz.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Emoji (TrueType)"="seguiemj.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Historic (TrueType)"="seguihis.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Italic (TrueType)"="segoeuii.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Light (TrueType)"="segoeuil.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Light Italic (TrueType)"="seguili.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Semibold (TrueType)"="seguisb.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Semibold Italic (TrueType)"="seguisbi.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Semilight (TrueType)"="segoeuisl.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Semilight Italic (TrueType)"="seguisli.ttf" >> "c:/revertfont.reg"
echo "Segoe UI Symbol (TrueType)"="seguisym.ttf" >> "c:/revertfont.reg"
echo "Segoe MDL2 Assets (TrueType)"="segmdl2.ttf" >> "c:/revertfont.reg"
echo "Segoe Print (TrueType)"="segoepr.ttf" >> "c:/revertfont.reg"
echo "Segoe Print Bold (TrueType)"="segoeprb.ttf" >> "c:/revertfont.reg"
echo "Segoe Script (TrueType)"="segoesc.ttf" >> "c:/revertfont.reg"
echo "Segoe Script Bold (TrueType)"="segoescb.ttf" >> "c:/revertfont.reg"
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes] >> "c:/revertfont.reg"
echo "Segoe UI"=- >> "c:/revertfont.reg"


REGEDIT c:/revertfont.reg

del c:/revertfont.reg

:: new type

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

:: echo "Segoe UI"="Verdana Bold">>"c:/newfont.reg"

@echo off
set /p NewFontChoice=Please type the name of the font you want... then hit ENTER
echo "Segoe UI"=%NewFontChoice% >>"c:/newfont.reg"

REGEDIT c:/newfont.reg

del c:/newfont.reg
