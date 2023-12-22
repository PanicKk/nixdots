{
  imports = [
    ./programs/git.nix
    ./programs/xresources.nix
    ./programs/vscode.nix
    ./programs/firefox.nix   
    ./programs/direnv.nix
  ]; 

  home.username = "jusuf";
  home.homeDirectory = "/home/jusuf";

  home.stateVersion = "23.05";

  home.packages = [];

  home.file = {
    "Lens.desktop" = {
      source = "/home/jusuf/.local/share/applications/Lens.desktop";
      target = ".local/share/applications/Lens.desktop";
    };
  };

  home.sessionVariables = {};

  programs.home-manager.enable = true;

  dconf.settings = {
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
      titlebar-font = "Roboto Regular 11";
    };
    "org/gnome/desktop/interface" = {
      gtk-theme = "Orchis";
      icon-theme = "Papirus";
      clock-show-date = true;
      font-name = "Roboto Regular 11";
      monospace-font-name = "JetBrains Mono Medium 11";
    };
    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      center-new-windows = true;
    };
  };
}
