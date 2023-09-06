{
  imports = [
    ./programs/git.nix
    ./programs/xresources.nix
  ]; 

  home.username = "jusuf";
  home.homeDirectory = "/home/jusuf";

  home.stateVersion = "23.05";

  home.packages = [];

  home.file = {};

  home.sessionVariables = {};

  programs.home-manager.enable = true;

  dconf.settings = {
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
      titlebar-font = "Fredoka Bold 11";
    };
    "org/gnome/desktop/interface" = {
      font-name = "Fredoka 11";
      monospace-font-name = "JetBrainsMono Nerd Font Mono Medium 11";
    };
    # "org/gnome/mutter" = {
    #   experimental-features = [ 
    #     "scale-monitor-framebuffer" 
    #     "x11-randr-fractional-scaling"
    #   ];
    # };
  };
}
