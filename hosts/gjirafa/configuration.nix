{pkgs, ...}: 

{
  system.stateVersion = "23.05";
  nixpkgs.hostPlatform = "x86_64-linux";
  
  networking.hostName = "gjirafa";
  
  users.users.jusuf = {
    isNormalUser = true;
    description = "jusuf";
    extraGroups = ["networkmanager" "wheel"];
    initialHashedPassword = "";
  };

  services = {
    xserver = {
      videoDrivers = ["nvidia"];
      displayManager = {
        gdm.enable = true;
        gdm.wayland = false;
        defaultSession = "gnome";
        # sessionCommands = ''
        #   xrandr --output DP-4 --primary --mode 2560x1600 --scale 0.75x0.75 --rotate normal
        # '';
        sessionCommands = ''
          xrandr --output DP-4 --primary --mode 2560x1600 --scale 0.85x0.85 --dpi 127 --rotate normal
        '';
      };
      desktopManager.gnome = {
      	enable = true;
      };
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
  
  # programs.seahorse.enable = false;
  programs.ssh.askPassword = "";
  
  environment.systemPackages = with pkgs; [
    dialog
    touchegg
    gnome-extension-manager
    gnomeExtensions.blur-my-shell
    gnomeExtensions.dash-to-dock
    gnomeExtensions.user-themes
    gnomeExtensions.x11-gestures
    gnome.gnome-tweaks
    gnome.dconf-editor
    whitesur-gtk-theme
    whitesur-icon-theme
    orchis-theme
    papirus-icon-theme
    jre8
    inkscape
    dotnet-sdk_7
    dotnet-sdk
    dotnet-runtime_7
    dotnet-runtime
    dotnet-aspnetcore_7
    dotnet-aspnetcore
    jetbrains.rider
    jetbrains.datagrip
    lens
    postman
    discord
    notion-app-enhanced
    obs-studio
    #sassc
  ];
  
  
  fonts.fonts = with pkgs;
  let
    fredoka = pkgs.callPackage ../../derivations/fredoka.nix { inherit pkgs; };
  in [
    iosevka
    jetbrains-mono
    fredoka
    (nerdfonts.override {fonts = ["JetBrainsMono" "Iosevka"];})
  ];
}
