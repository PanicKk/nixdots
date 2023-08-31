{
  xsession = {
    windowManager = {
      bspwm = {
        enable = true;
        settings = {
          window_gap = 20;
          split_ratio = 0.52;
          focus_follows_pointer = true;
          # top_padding = 20;
        };
        monitors = {
          DP-4 = [
            "1" "2" "3" "4"
          ];
        };
        rules = {
          "Plank" = {
            layer = "above";
            manage = true;
            border = false;
          };
          "network" = {
            state = "floating";
          };
        };
        startupPrograms = [
          "dunst"
        ];
        extraConfigEarly = ''
          sh ~/.config/bspwm/scripts/autostart.sh
        '';
        extraConfig = ''
          sh ~/.config/bspwm/scripts/borders
        '';
      };
    };
  };
}
