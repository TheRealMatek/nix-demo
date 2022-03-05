with import <nixpkgs> {};

mkShell {
 name= "python-build-env";
 version = "1.1";
 src = ./src;
}
