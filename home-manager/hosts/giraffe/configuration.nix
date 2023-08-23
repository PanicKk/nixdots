{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    libinput
    libglibutil
    libxml2
    glib
    imagemagick
    dialog
    optipng
    inkscape
    sassc
    touchegg
    gnome.gnome-tweaks
    gnome-extension-manager
    gnomeExtensions.user-themes
    gnomeExtensions.dash-to-dock
    gnomeExtensions.blur-my-shell
    gnomeExtensions.x11-gestures
    whitesur-gtk-theme
    whitesur-icon-theme
    dotnet-sdk_7
    dotnet-sdk
    dotnet-runtime_7
    dotnet-runtime
    dotnet-aspnetcore_7
    dotnet-aspnetcore 
    jre8
    #jetbrains.rider
  ];
}
