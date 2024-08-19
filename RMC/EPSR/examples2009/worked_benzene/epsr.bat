set EPSRroot=C:\EPSR18
set currentdir=%CD%

cd %EPSRroot%

call epsrsetup

cd %currentdir%

copy system_commands_windows.txt system_commands.txt
title EPSR in %CD%

%EPSRbin%\epsrshell
