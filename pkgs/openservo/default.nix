{}: with import (import ../../nix/sources.nix).nixpkgs {};

stdenv.mkDerivation rec {
  pname = "open-servo";
  version = "0.1.1";

  src = fetchgit {
    url = "https://github.com/manus-project/openservo";
    rev = "7f86b2c355778fd4a78b4726cfcddb79f0a893c7";
    sha256 = "sha256-NU4vbJU77DNiBX+g/mYeagAMKDUtYnQiuSYrwNzI8wA=";
  };

  buildInputs = [
    cmake
  ];
}
