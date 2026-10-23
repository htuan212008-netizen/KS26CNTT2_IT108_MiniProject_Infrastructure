@echo off
chcp 65001 > nul

if not exist ../backup mkdir ../backup

echo ================================================ > ..\backup\bao-cao-su-co.txt
echo         BAO CAO SU CO HE THONG - LOG REPORT        >> ..\backup\bao-cao-su-co.txt
echo         Thoi gian: %date% - %time%                 >> ..\backup\bao-cao-su-co.txt
echo ================================================ >> ..\backup\bao-cao-su-co.txt
echo >> ../backup\bao-cao-su-co.txt

findstr /i "CRITICAL ERROR" application.log >> ..\backup\bao-cao-su-co.txt

echo Hoan tat qua trinh loc log va ghi bao cao!

pause