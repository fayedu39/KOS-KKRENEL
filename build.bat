@echo off
echo Entering source directory
cd src
echo Building bootloader
nasm boot\bootloader.asm -o ..\bootloader.img
echo Building whole kernel
nasm combo.asm -o ..\KKrenel.img
echo Going back in KK directory
cd ..