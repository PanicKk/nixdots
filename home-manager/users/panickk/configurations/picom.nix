{ pkgs, ...}:

{
  services.picom = {
    enable = true;
    backend = "glx";
    vSync = true;
    shadow = true;
    shadowOpacity = 0.75;
    fade = true;
    fadeDelta = 5;
    fadeSteps = [ 0.05 0.05 ];
    wintypes = {
      tooltip = {
        fade = true;
        shadow = false;
        opacity = 0.85;
        focus = true;
      };
      fullscreen = {
        fade = true;
        shadow = false;
        opacity = 1;
        focus = true;
      };
    };
    settings = {
      # GLX
      glx-no-stencil = true;
      glx-no-rebind-pixmap = true;
      # Shadow
      shadow-radius = 15;
      shadow-offset-x = -15;
      shadow-offset-y = -15;
      shadow-ignore-shaped = false;
      # Window Opactiy
      inactive-opacity = 0.8;
      active-opacity = 1;
      frame-opacity = 1;
      inactive-opacity-override = false;
      # Blur
      blur-background = true;
      blur-method = "dual_kawase";
      blur-kern = "5,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1";
      blur-deviation = true;
      blur-strength = 7;
      blur-background-fixed = false;
      # Active Window Management
      mark-wmwin-focused = false;
      mark-overdir-focused = true;
      use-ewmh-active-win = true;
      detect-rounded-corners=true;
      detect-client-opactity=true;
      dbe = false;
      unredir-if-possible = true;
      detect-transient = true;
      detect-client-leader = true;
      # Rounded Corners
      round-border = 10.0;
      corner-radius = 10.0;
      rounded-corners-exclude = [
        "window_type = 'desktop'"
        "window_type = 'toolbar'"
      ];
    };
  };
}
