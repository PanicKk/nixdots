{pkgs, ...}: {
  networking.hostName = "giraffe";
  nixpkgs.hostPlatform = "x86_64-linux";

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

    /*
    # Use a devShell for these, do not install them system-wide!

    libinput
    libglibutil
    libxml2
    glib
    imagemagick
    */

    /*
    # Theses ones are kinda ok... still not ideal
    dotnet-sdk_7
    dotnet-sdk
    dotnet-runtime_7
    dotnet-runtime
    dotnet-aspnetcore_7
    dotnet-aspnetcore
    */
  ];
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.panickk = {
    isNormalUser = true;
    description = "panickk";
    extraGroups = ["networkmanager" "wheel"];
  };

  system.stateVersion = "23.05"; # Did you read the comment?

  # Nvidia config
  services.xserver = {
    videoDrivers = ["nvidia"];
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
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
  };

  fonts.fonts = with pkgs; [
    iosevka
    jetbrains-mono
    (nerdfonts.override {fonts = ["JetBrainsMono" "Iosevka"];})
  ];

  hardware = {
    enableRedistributableFirmware = true; #System will probably be un-bootable without this
    cpu = {
      amd.updateMicrocode = true;
      intel.updateMicrocode = true;
    };
  };
}
