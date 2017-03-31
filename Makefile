
all: clean bb.bin bb.hex

bb.bin: boot_sect.asm
	nasm boot_sect.asm -f bin -o bb.bin

bb.hex: bb.bin
	xxd bb.bin >| bb.hex

clean:
	-rm -f bb.bin
