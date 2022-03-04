{
  pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs-channels/archive/b58ada326aa612ea1e2fb9a53d550999e94f1985.tar.gz) {}
}:

with pkgs;

let
  packages = rec {
    chord = callPackage ./pkgs/chord {};
    chord_custom_sg = callPackage ./pkgs/chord { simgrid = custom_simgrid; };
    custom_simgrid = callPackage ./pkgs/simgrid/custom.nix {};

    inherit pkgs; # similar to `pkgs = pkgs;` This lets callers use the nixpkgs version defined in this file.
  };
in
  packages
