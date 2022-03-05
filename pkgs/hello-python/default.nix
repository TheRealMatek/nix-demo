{}:
with import <nixpkgs> {};

python3Packages.buildPythonApplication rec {
 pname= "hello-python";
 version = "1.3";
 src = ./src;
 doCheck = false;
}
