{
  imports = [
    ./configurations/bspwm.nix
    ./configurations/sxhkd.nix
    ./configurations/picom.nix
    ./configurations/dunst.nix
  ];

  home.username = "panickk";
  home.homeDirectory = "/home/panickk";

  home.stateVersion = "23.05"; # Please read the comment before changing.

  home.packages = [];

  home.file = {};

  home.sessionVariables = {};

  programs.home-manager.enable = true; 
}
