{ stdenv, sdl3 }:

stdenv.mkDerivation {
  pname = "CHIP-8-Emulator";  
  version = "1.0";

  src = ./.;

  buildInputs = [sdl3];
  buildPhase = ''
    gcc *.c -o chip8 -lm -L${sdl3} -lSDL3
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp chip8 $out/bin/chip8
  '';

}
