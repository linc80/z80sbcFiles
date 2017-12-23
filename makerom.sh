#!/bin/bash
srec_cat hexFiles/MONITOR.HEX -intel hexFiles/BASIC.HEX -intel -o rom.hex -intel
srec_cat rom.hex -intel -fill 0xFF 0x0 0x8000 -o rom.bin --binary
