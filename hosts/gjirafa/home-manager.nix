{inputs, ...}: {
  imports = [
    {
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users.jusuf = import "${inputs.self}/home-manager/users/jusuf/jusuf@gjirafa.nix";
      };
    }
    inputs.home-manager.nixosModules.home-manager
  ];
}
