{ stdenv }:
stdenv.mkDerivation {
  pname = "CHIP-8-Disassembler";
  version = "1.0";  

  src = ./.;
  buildPhase = ''
    gcc *.c -o disassembler
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp disassembler $out/bin/disassembler
  '';
}
