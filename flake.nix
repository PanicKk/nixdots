{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-23.05";

    home-manager = {
      url = "github:nix-community/home-manager?ref=release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {nixpkgs, ...}: {
    nixosConfigurations.giraffe = nixpkgs.lib.nixosSystem {
      modules = [./hosts/giraffe ./hosts/shared];
      specialArgs = {inherit inputs;};
    };
  };
}
