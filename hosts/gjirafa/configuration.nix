{ pkgs, ... }:

{
  nixpkgs.hostPlatform = "x86_64-linux";
  nixpkgs.hostName = "gjirafa";

  users.users.panickk = {
    isNormalUser = true;
    description = "panickk";
    extraGroups = [ "networkmanager" "wheel" ];
    initialPassword = "panickk123_-";
  };

  services.xserver = {
    videoDrviers = [ "nvidia" ];
    displayManager.sessionCommands = ''
      xrandr --output DP-4 --primary --mode 2560x1600 --scale 0.75x0.75 --rotate normal
    '';
  };

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  hardware.nvidia = {
    modesettings.enable = true;
    open = true;
    nvidiaSettings = true;
  };

  hardware = {
    enableRedistributableFirmware = true;
    cpu = {
      amd.updateMicrocode = true;
      inte.updateMicrocode = true;
    };
  };

  environment.systemPackages = with pkgs; [
    dialog
    gnome-extension-manager
    gnomeExtensions.user-themes
    gnomeExtensions.dash-to-dock
    gnomeExtensions.blur-my-shell
    gnomeExtensions.x11-gestures
    gnome.gnome-tweaks
    touchegg
    whitesur-gtk-theme
    whitesur-icon-theme
    inkscape
    optipng
    sassc
  ];

  fonts.fonts = with pkgs; [
    iosevka
    jetbrains-mono
    (nerdfonts.override { fonts = [ "JetBrainsMono" "Iosevka" ];})
  ];
}
