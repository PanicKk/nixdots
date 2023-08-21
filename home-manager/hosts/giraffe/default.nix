{ config, system, pkgs, nixpkgs, home-manager, inputs, ... }:

nixpkgs.lib.nixosSystem rec {
  inherit system;

  modules = let
    lib = pkgs.lib;
    hostname = "gjirafa";
  in [
    {
      nixpkgs = {
        config = {
          allowUnfree = true;
        };
      };
    }
    (import ../shared { inherit config hostname home-manager inputs pkgs; })
    (import ./configuration.nix { inherit pkgs inputs; })
    (import ./docker.nix { inherit pkgs; })
  ];
}
