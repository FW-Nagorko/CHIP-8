{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in {
  
    packages.x86_64-linux = {
      assembler = pkgs.callPackage ./src/assembler/derivation.nix {};
      disassembler = pkgs.callPackage ./src/disassembler/derivation.nix {};
      emulator = pkgs.callPackage ./src/core/derivation.nix {sdl3 = pkgs.sdl3;};
    };

  };
}
