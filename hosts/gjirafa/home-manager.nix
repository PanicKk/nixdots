{ inputs, ...}:

{
  imports = [
    {
      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        users.panickk = import "${inputs.self}/home-manager/users/panickk@gjirafa.nix";
      };
    }
    inputs.home-manager.nixosModules.home-manager
  ];
}
