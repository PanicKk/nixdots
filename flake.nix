{
  inputs = {
    nixpkgs.url = github:nixos/nixpkgs/release-23.05;

    home-manager = {
      url = github:nix-community/home-manager/release-23.05;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations.gjirafa = import ./home-manager/hosts/giraffe {
      inherit
        nixpkgs
        home-manager
        system
        pkgs
        inputs;
    };
  };
}
