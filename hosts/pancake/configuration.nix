{ pkgs, ... }:

{
  networking.hostName = "pancake";
  nixpkgs.hostPlatform = "x86_64-linux";

  users.users.panickk = {
    isNormalUser = true;
    description = "panickk";
    extraGroups = [ "networkmanager" "wheel"];
    initialHashedPassword = "";
  };

  system.stateVersion = "23.05";

  services = {
    xserver = {
      videoDrivers = ["nvidia"];
      displayManager = {
        gdm.enable = true;
        gdm.wayland = false;
        defaultSession = "none+bspwm";
        #sessionCommands = ''
        #  xrandr --output DP-4 --primary --mode 2560x1600 --scale 0.75x0.75 --rotate normal
        #'';
      };
      windowManager.bspwm.enable = true;
      windowManager.bspwm.configFile = "/home/panickk/.config/bspwm/bspwmrc";
      windowManager.bspwm.sxhkd.configFile = "/home/panickk/.config/sxhkd/sxhkdrc";
      libinput = {
        enable = true;
        touchpad = {
          tapping = true;
          horizontalScrolling = true;
          naturalScrolling = false;
          disableWhileTyping = true;
          middleEmulation = true;
        };
      };
    };
  };
  
  hardware = {
    enableRedistributableFirmware = true;
    cpu = {
      amd.updateMicrocode = true;
      intel.updateMicrocode = true;
    };
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
    };
    nvidia = {
      modesetting.enable = true;
      open = true;
      nvidiaSettings = true;
    };
  };

  environment.systemPackages = with pkgs; 
    let 
      dotfiles = pkgs.callPackage ../../derivations/dotfiles.nix {inherit pkgs;}; 
    in [
     gcc
     ripgrep
     cargo
     xorg.xbacklight
     dunst
     neofetch
     htop
     xfce.xfce4-power-manager
     flameshot
     zathura
     xfce.thunar
     sxhkd
     alacritty
     picom
     eww
     wmutils-core
     wmutils-opt
     wmutils-libwm
     ueberzug
     rofi
     pamixer
     #dotfiles
  ];

  fonts.fonts = with pkgs; [
    iosevka
    jetbrains-mono
    font-awesome
    ( nerdfonts.override {
        fonts = [
          "JetBrainsMono"
          "Iosevka"
        ];
      })
  ];
}
