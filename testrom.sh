#!/bin/bash
../minipro/minipro -p "D27256 @DIP28" -r test.bin
hd test.bin
rm test.bin
