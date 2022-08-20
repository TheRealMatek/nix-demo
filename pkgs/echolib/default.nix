{}: with import <nixpkgs> {};

let
  python = python3.withPackages (ps : with ps; [ pybind11 numpy ]);
in stdenv.mkDerivation rec {
  pname = "echolib";
  version = "0.1.1";

  src = fetchgit {
    url = "https://github.com/vicoslab/echolib";
    rev = "db37cff8f635eafb22a4bcb935f9c5935e4a7f11";
    sha256 = "sha256-SaUHJkdkQ2TvzS+YdP4w0mw1UAhdZEeVEv+bjl50fBE=";
  };
  nativeBuildInputs = [ cmake ];

  buildInputs = [ opencv ];

  propagatedBuildInputs = [ python ];
}
