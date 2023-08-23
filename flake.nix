{
  inputs = {
    nixpkgs.url = github:nixos/nixpkgs/nixos-23.05;

    home-manager = {
      url = github:nix-community/home-manager/release-23.05;
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { config.allowUnfree = true; };
  in {
    nixosConfigurations.gjirafa = import ./home-manager/hosts/giraffe/default.nix {
      inherit
        nixpkgs
        home-manager
        system
        pkgs
        inputs;
    };
  };
}
