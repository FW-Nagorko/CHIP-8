{ stdenv }:

stdenv.mkDerivation {
  pname = "CHIP-8-Assembler";  
  version = "1.0";

  src = ./.;
  buildPhase = ''
    gcc assembler.c -o assembler
  '';

  installPhase  = ''
    mkdir -p $out/bin
    cp assembler $out/bin/assembler 
  '';
}
