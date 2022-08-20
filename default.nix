# Main package list for channel
{}: with import (import ./nix/sources.nix).nixpkgs {};

let
  packages = rec {
    ary = callPackage ./pkgs/ary {};
    echolib = callPackage ./pkgs/echolib {};
    openservo = callPackage ./pkgs/openservo {};
    # Doesn't work currently, cmake outputs install DIRECTORY given no DESTINATION
    # in Cmake file of python directory, line 9
    # manus-core = callPackage ./pkgs/manus-core {};
  };
in
  packages
