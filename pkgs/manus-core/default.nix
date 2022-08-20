{}: with import <nixpkgs> {};

let demo = import <demo> {};
in stdenv.mkDerivation rec {
  pname = "manus-core";
  version = "0.1.1";

  src = fetchgit {
    url = "https://github.com/manus-project/manus-core";
    rev = "ae898bdd613881214611529a395307127b7c3ac1";
    sha256 = "sha256-rtFXZyrOE717R8/aV80WjQ30waA4hB0V681gOD/5iJY=";
  };

  buildInputs = [
    demo.pkgs.echolib
    orocos-kdl
    opencv
    cmake
  ];
}
