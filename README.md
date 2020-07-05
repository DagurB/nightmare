# Nightmare
This is a bootloader that repeatedly prints 'Nightmare!'

## Assembly
```bash
nasm -f bin file.asm -o file.bin
```

## Running
```bash
qemu-system-x86_64 -hda file.bin
```
-fda means floppy disk a
-hda means hard disk a

## TODO:
create makefile
turn this into a iso (maybe?)
