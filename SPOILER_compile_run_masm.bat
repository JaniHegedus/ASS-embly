echo off
cls
set inputPath=%~d1%~p1
set inputPath=%inputPath:~0,-1%
set inputFile=%~n1%~x1

set objFile=%~n1.OBJ
set mapFile=%~n1.MAP
set executableFile=%~n1.EXE
del %asmOutput%

echo Assembling: MASM
echo 	Input Path: %inputPath%
echo 	Input File: %inputFile%

echo Running DOSBox
:: Gimesi, hogy basznám meg azt a jó édes kibaszot riherongy kurva anyádat a szőrös hátadon te hormonzavaros agykárosult lelkinyomorék
:: down kóros fogyatékos balfasz a kibaszott 19-KIBASZOTT-82-es elcseszett programoddal. Ha ekkora fasz vagy, menj haza és hozogasd a pöcörődet a
:: DOS-ra te majom, a leendő programozóket meg hagyjad már használni a szájbakúrt MODERN programokat.
:: Utóirat: Te fasz.
DosBOX\DOSbox.exe -c "mount C %inputPath%" -c "C:" -c "copy %inputFile% masm611\BIN\%inputFile%" -c "cd masm611\BIN" -c "del %executableFile%" -c "masm.exe %inputFile%" -c "link.exe %objFile%,%executableFile%,,,," -c "%executableFile%" -c "pause" -c "del %inputFile%" -c "del %objFile%" -c "del %mapFile%" -c "del %executableFile%" -noconsole -exit

del stdout.txt
del stderr.txt