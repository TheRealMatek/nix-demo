{ stdenv, fetchgit, cmake, simgrid, boost }:

stdenv.mkDerivation rec {
  pname = "chord";
  version = "0.1.0";

  src = fetchgit {
    url = "https://gitlab.inria.fr/adfaure/chord-tuto-nix-2019";
    rev = "cbe903e7f8839794fbe572ea4c811e2c802a4038";
    sha256 = "1xp9c6nlsy2j8m4rrjy1xnv21hm67fhxxg0b9va45apqcrgb88ng";
  };

  buildInputs = [
    cmake
    simgrid
    boost
  ];
}
