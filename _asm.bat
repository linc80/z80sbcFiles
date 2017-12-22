@echo off 
:loop
echo =====================================
echo %1
echo -------------------------------------
tasm -80 source\%1.asm hexFiles\%1.hex
shift
if not "%1"=="" goto loop

