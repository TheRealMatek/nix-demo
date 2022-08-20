{}: with import <nixpkgs> {};

stdenv.mkDerivation rec {
  pname = "ary";
  version = "0.1.1";

  src = fetchgit {
    url = "https://github.com/lukacu/ary";
    rev = "106921f5d334ecf2f1aab5516fee8b086380e343";
    sha256 = "sha256-qY1R0fIIY5Ib65fjfbR8y/2vEbHl6Ene3KQC26tcloA=";
  };

  buildInputs = [
    cmake
    opencv
  ];
}
