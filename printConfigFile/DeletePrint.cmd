@ echo off
%1 %2
ver|find "5.">nul&&goto :Admin
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :Admin","","runas",1)(window.close)&goto :eof
:Admin
net stop spooler
del /q /s %systemroot%\system32\spool\printers\*.*
net start spooler
exit