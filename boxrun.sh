#!/bin/dash

dosbox -c "keyb no" -c "mount c ${PWD}" -c "c:" -c "_asm.bat $*"
