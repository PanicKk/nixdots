{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-23.05";

    home-manager = {
      url = "github:nix-community/home-manager?ref=release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {nixpkgs, ...}: {
    nixosConfigurations.gjirafa = nixpkgs.lib.nixosSystem {
      modules = [./hosts/gjirafa ./hosts/shared];
      specialArgs = {inherit inputs;};
    };
    nixosConfigurations.pancake = nixpkgs.lib.nixosSystem {
      modules = [./hosts/pancake ./hosts/shared];
      specialArgs = {inherit inputs;};
    };
    devShells.x86_64-linux = 
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
      "dotnet_shell" = pkgs.mkShell {
        shelHook = ''
          echo "You are now in the .NET development shell!"
        '';
        LD_LIBRARY_PATH = nixpkgs.lib.makeLibraryPath [
          pkgs.openssl
        ];
        packages = [ 
          pkgs.openssl
          pkgs.dotnet-sdk_7
          pkgs.dotnet-sdk
          pkgs.dotnet-runtime_7
          pkgs.dotnet-runtime
          pkgs.dotnet-aspnetcore_7
          pkgs.dotnet-aspnetcore
        ];
      };
    };
  };
}
