# Harry Potter and the Chamber of Secrets GBC
a disassembly of the [Gameboy Colour Chamber of Secrets game](https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Chamber_of_Secrets_(GBC))



## Dependencies
- [RGBDS: Game Boy Assembly Toolchain](https://github.com/gbdev/rgbds)

## Building
run
> make

this outputs to build/, if you want to compare hash with the original game, manually put it into the build directory and rename it 'baserom.gbc'.

## Running / Debugging Environment
The emulator [Emulicious](https://emulicious.net/) allows for remote debugging in vscode, [.vscode/](.vscode/) includes the build and launch properties to build and run / attach to Emulicious.

## Resources

- [Gameboy Documentation](https://gbdev.io/pandocs/MBC1.html)
- [Gameboy OpTable](https://gbdev.io/gb-opcodes/optables/)
- [Gameboy Instruction Set](https://rgbds.gbdev.io/docs/v0.9.2/gbz80.7)
- [RGBDS Documentation](https://rgbds.gbdev.io/docs/v0.9.2)

,