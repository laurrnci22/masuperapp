with import <nixpkgs> {};

let
  masuperlib-src = fetchTarball "https://github.com/laurrnci22/masuperlib/releases/tag/v0.1";
  # masuperlib-src = ../masuperlib;

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

