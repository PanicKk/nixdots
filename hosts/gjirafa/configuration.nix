{pkgs, ...}: {
  networking.hostName = "gjirafa";
  nixpkgs.hostPlatform = "x86_64-linux";
  

  users.users.jusuf = {
    isNormalUser = true;
    description = "jusuf";
    extraGroups = ["networkmanager" "wheel"];
    initialHashedPassword = "";
  };

  system.stateVersion = "23.05";

  services = {
    xserver = {
      videoDrivers = ["nvidia"];
      displayManager = {
        gdm.enable = true;
        gdm.wayland = false;
        defaultSession = "gnome";
        sessionCommands = ''
          xrandr --output DP-4 --primary --mode 2560x1600 --scale 0.75x0.75 --rotate normal
        '';
      };
      desktopManager.gnome.enable = true;
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

  environment.systemPackages = with pkgs; [
    dialog
    gnome-extension-manager
    gnomeExtensions.blur-my-shell
    gnomeExtensions.dash-to-dock
    gnomeExtensions.user-themes
    gnomeExtensions.x11-gestures
    gnome.gnome-tweaks
    inkscape
    jetbrains.rider
    jre8
    optipng
    sassc
    touchegg
    whitesur-gtk-theme
    whitesur-icon-theme
  ];
  
  fonts.fonts = with pkgs; [
    iosevka
    jetbrains-mono
    (nerdfonts.override {fonts = ["JetBrainsMono" "Iosevka"];})
  ];
}
