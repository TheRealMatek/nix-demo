{}:
with import <nixpkgs> {};

python3Packages.buildPythonApplication rec {
 pname= "hello-python";
 version = "1.2";
 src = ./src;
 doCheck = false;
}
