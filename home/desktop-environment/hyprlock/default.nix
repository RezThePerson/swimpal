{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        hide_cursor = true;
      };

      background = {
        monitor = "";
        path = ".wallpaper.png";
        blur_passes = 2;
        blur_size = 4;
      };

      label = [
        {
          monitor = "";
          text = "$TIME12";
          color = "rgb(cdd6f4)";
          font_size = 90;
          font_family = "JetBrainsMono Nerd Font";
          position = "-30, 40";
          halign = "right";
          valign = "bottom";
        }

        {
          monitor = "";
          text = ''cmd[update:43200000] date +"%A, %d %B %Y"'';
          color = "rgb(f5c2e7)";
          font_size = 25;
          font_family = "JetBrainsMono Nerd Font";
          position = "-30, 20";
          halign = "right";
          valign = "bottom";
        }

        {
          monitor = "";
          text = "Get back to cooking <span foreground=\"##f5c2e7\">$USER</span>!";
          color = "rgb(cdd6f4)";
          font_size = 50;
          font_family = "JetBrainsMono Nerd Font";
          position = "30, -15";
          halign = "left";
          valign = "top";
        }
      ];

      image = {
        monitor = "";
        path = ".face.png";
        size = 100;
        border_color = "rgb(f5c2e7)";
        position = "0, 75";
        halign = "center";
        valign = "center";
      };

      input-field = {
        monitor = "";
        size = "350, 60";
        dots_center = true;
        outer_color = "rgb(f5c2e7)";
        inner_color = "rgb(313244)";
        font_color = "rgb(cdd6f4)";
        font_family = "JetBrainsMono Nerd Font";
        fade_on_empty = false;
        check_color = "rgb(f5c2e7)";
        fail_color = "rgb(f38ba8)";
        capslock_color = "rgb(f9e2af)";
        position = "0, -47";
        placeholder_text = "<i>Enter Your Password...</i>";
        fail_text = "<i>$FAIL <b>($ATTEMPTS)</b></i>";
      };
    };
  };
}
