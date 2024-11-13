{
  description = "An experimental wiki for the hdg community";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    inputs.utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
        inherit (pkgs) lib;
      in {
        devShells.default = let
          name = "hdg-wiki";
        in pkgs.mkShell {
          inherit name;

          packages = [
            pkgs.hugo
            pkgs.go
          ];
        };
      });
}
