currentdir=$(pwd)
cd $EPSRroot
. $EPSRroot/epsrsetup.sh
cd $currentdir
cp system_commands_linux.txt system_commands.txt
$EPSRbin/epsrshell

