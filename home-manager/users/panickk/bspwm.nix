{ pkgs, ...}:

{
  services.xserver.windowManager = {
    bspwm.enable = true;
    bspwm.configFile = "/home/panickk/.config/bspwm/bspwmrc";
    bspwm.sxhkd.configFile = "/home/panickk/.config/sxhkd/sxhkdrc";
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
}
