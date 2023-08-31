{ pkgs, ... }:

{
  services = {
    dunst = {
      enable = true;
      iconTheme = {
        name = "papirus";
        package = pkgs.papirus-icon-theme;
        size = "16x16";
      };
      settings = {
        global = {
          monitor = 0;
          follow = "mouse";
          shrink = false;
          padding = 20;
          horizontal_padding = 20;
          width = 275;
          height = 100;
          offset = "18x100";
          origin = "top-right";
          frame_width = 5;
          progress_bar_frame_width = 0;
          separator_height = 0;
          frame_color = "#70a5eb";
          highlight = "#70a5eb";
          separator_color = "#22262e";
          sort = false;
          font = "Fredoka Medium 12";
          markup = "full";
          format = "<b>%s</b>\\n%b";
          alignment = "center";
          show_age_threshold = 60;
          word_wrap = true;
          ignore_newline = false;
          stack_duplicates = true;
          hide_duplicate_count = false;
          show_indicators = true;
          icon_position = "left";
          max_icon_size = 60;
          sticky_history = false;
          history_length = 10;
          title = "Dunst";
          class = "Dunst";
          corner_radius = 4;
          mouse_left_click = "close_current";
          mouse_middle_click = "do_action";
          mouse_right_click = "close_all";
        };
        urgency_low = {
          background = "#171a1f";
          foreground = "#e05f65";
          timeout = 5;
        };
        urgency_normal = {
          background = "#171a1f";
          foreground = "#f5f5f5";
          timeout = 10;
        };
        urgency_critical = {
          background = "#171a1f";
          foreground = "#ff2740";
          timeout = 20;
        };
      };
    };
  };
}
