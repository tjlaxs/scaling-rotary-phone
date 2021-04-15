{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/46e4c824cb71fdc1119632faf5c20cc50fac54a4.tar.gz") {}
, ghc8104 ? pkgs.haskell.compiler.ghc8104
}:

pkgs.haskell.lib.buildStackProject {
  inherit ghc8104;
  name = "HaskellStackWithNix";
  buildInputs = [ pkgs.zlib pkgs.glpk pkgs.pcre pkgs.stack ];
}
