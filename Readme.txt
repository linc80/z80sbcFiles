Source code for LiNC80 SBC1
===========================

In this repository you will not find the complete source tree for the software
included in ROM and made available for use of CP/M via http://linc.no/go/linc80

The LiNC80 SBC1 ships with the Small Computer Monitor written by
Steven C Cousins as its primary operating environment.
 The source code, and tools needed to build it, are located at http://scc.me.uk

The secondary ROM environment is a slight adjustment of Grant Searle's
ROM Monitor/Loader and BASIC. This software is only for non-commercial use,
and redistribution is permitted only with attribution.

The LiNC80 SBC1 is capable of running CP/M, and the current approach is to use
Grant Searle's CBIOS and related utilities. These are available for
NON COMMERCIAL USE ONLY, and redistribution is permitted only with attribution.

The software in this repository is primarily the work of Grant Searle, with
adaptations specific to the LiNC80 SBC1, and some changes by Jon Langseth
and Steve C Cousins. Please visit http://searle.hostei.com/grant/index.html
to locate the original code.

Compiling code in this repository
---------------------------------

The source code contained here is written for TASM.EXE, an old but reliable
and solid Z80 assembly cross-compiler for MS DOS. The best way to run
TASM.EXE on a modern operating system, is to use DosBox.

A few small utilities are included that work as wrappers for running
DosBox execution of TASM.EXE.

Files required for the GSL ROM page
------------------------------------

The ROM of LiNC80 SBC1 contains two bank pages. The first page contains
the SCMonitor, whose source code is located at http://scc.me.uk
The second page contains the "Grant Searle Loader", aka GSL.

The GLS is built from two parts: monitor.asm and basic.asm
monitor.asm is the ROM Monitor/Loader
basic.asm is a port/conversion of Microsoft BASIC for Nascom

To build these two files on Linux, use the "boxrun.sh" script:: 

  ./boxrun.sh monitor basic

This will start DosBox (if installed), and run _asm.bat. _asm.bat
will execute TASM for each of the files "monitor.asm" and "basic.asm"
in order.

These two files need to be joined to create the ROM page contents.
makerom.sh uses srec_cat to join these into a single HEX file and BIN
file equivalent. This file can be burned alone to a PROM, or it can
be integrated into SCMonitor using the SCWorkshop.  

Files required for CP/M
-----------------------

The remaining files in the directory source/ directory are related to
CP/M. Please visit http://linc.no/go/linc80 and the original source
at http://searle.hostei.com/grant/index.html for information about
what each file does.
