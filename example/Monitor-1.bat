@echo off

C:
cd "%ChocolateyInstall%\lib\monitorswitcher\tools"
.\MonitorSwitcher.exe -load:%USERPROFILE%\AppData\Roaming\MonitorSwitcher\Profiles\%~n0.xml

exit
