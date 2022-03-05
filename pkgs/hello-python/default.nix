with import <nixpkgs> {};

python3Packages.buildPythonPackage {
 pname= "hello-python";
 version = "1.1";
 src = ./src;
 doCheck = false;
}
