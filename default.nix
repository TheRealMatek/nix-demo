# Main package list for channel
{
  pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs-channels/archive/b58ada326aa612ea1e2fb9a53d550999e94f1985.tar.gz) {}
}:

with pkgs;

let
  packages = rec {
    ary = callPackage ./pkgs/ary {};
    echolib = callPackage ./pkgs/echolib {};
    openservo = callPackage ./pkgs/openservo {};
    #manus-core = callPackage ./pkgs/manus-core {};
  };
in
  packages
