{
  services.sxhkd = {
    enable = true;
    keybindings = {
      # Audio
      "XF86AudioRaiseVolume" = "pamixer -i 5 && sh ~/custom-scripts/get-volume.sh volume";
      "XF86AudioLowerVolume" = "pamixer -d 5 && sh ~/custom-scripts/get-volume.sh volume";
      "XF86AudioMute" = "pamixer -m && sh ~/custom-scripts/get-volume.sh volume";
      # Brightness
      "XF86MonBrightnessUp" = "xbacklight -inc 5";
      "XF86MonBrightnessDown" = "xbacklight -dec 5";
      # Launch Applications
      "super + Return" = "alacritty";
      "super + d" = "sh ~/.config/rofi/scripts/appsmenu.sh";
      "super + v" = "alacritty -e nvim";
      # Set a random wallpaper
      "super + w" = "sh ~/custom-scripts/rwall.sh";
      # Close or Kill Nodes / Windows
      "super + {_, shift + } q" = "bspc node -{c,k}";
      # Cycle between Tiled and Monocle layout
      "super + m" = "bspc desktop -l next";
      # Swap current Window / Node with the biggest one
      "super + g" = "bspc node -s biggest";
      # Set the Window / Node state
      "super + {t, shift + t, s, f}" = "bspc node -t {tiled, pseudo_tiled, floating, fullscreen}";
      # Set the Window / Node Flag
      "super + ctrl + {m, x, y, z}" = "bpsc node -g {marked, locked, sticky, private}";
      # Focus or Move the Window / Node
      "super + {Left, Down, Up, Right}" = "bspc node -f {west, south, north, east}";
      "super + shift + {Left, Down, Up, Right}" = "bspc node -s {west, south, north, east}";
      # Cycle Focus between Windows / Nodes in the current workspace
      "super + {_, shift + } c" = "bpsc node -f {next, prev}.local";
      # Cycle Focus between Workspaces in the current monitor
      "super + bracket{left, right}" = "bspc desktop -f {prev, next}.local";
      # Switch Focus to the last Window / Node or Workspaces
      "super + {grave, Tab}" = "bspc {node, desktop} -f last";
      # Switch Workspace
      "super + {1-9,0}" = "bspc desktop -f '^{1-9,10}'";
      # Move focused Window / Node to another Workspace
      "super + shift + {1-9,0}" = "bspc node -d '^{1-9,10}'";
      # Preselect Direction
      "super + ctrl + {Left, Down, Up, Right}" = "bspc node -p {west, south, north, east}";
      # Preselect Ratio
      "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";
      # Cancel Preslection for the focused Window / Node
      "super + ctrl + space" = "bscp node -p cancel";
      # Cancel Preslection for the current Workspace
      "super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";
      # Expand a Window / Node
      "super + alt + {Left, Down, Up, Right}" = "bspc node -z {left -20 0, bottom 0 20, top 0 20, right 20 0}";
      # Contract a Window Node
      "super + alt + shift + {Left, Down, Up, Right}" = "bspc node -z {right -20 0, top 0 20, bottom 0 -20, left 20 0}";
      # Move a Floating Window
      "super + ctrl + alt + {Left, Down, Up, Right}" = "bspc node -v {-20 0, 0 20, 0 -20, 20 0}";
      # Screenshot
      "Print" = "flameshot gui";
    };
  };
}
