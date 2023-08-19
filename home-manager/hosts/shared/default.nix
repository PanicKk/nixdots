 { config, hostname, pkgs, home-manager, inputs, ... }:

 {
   imports = [
    (import ./configuration.nix { inherit config hostname pkgs; })
    (import ./home-manager.nix { inherit home-manager inputs pkgs; })
    (import ./pkgs.nix { inherit pkgs; })
    (import ./shell.nix { inherit pkgs; })
   ];
 }
