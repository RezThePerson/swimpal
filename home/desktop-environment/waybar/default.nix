{
  programs.waybar = {
    enable = true;

    settings = [
      {
        position = "left";
        layer = "top";
        width = 45;

        modules-left = [ "hyprland/workspaces" ];

        "hyprland/workspaces" = {
          format = "";
          on-click = "activate";
          persistent-workspaces = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
          };
          sort-by-number = true;
        };

        modules-center = [ "hyprland/window" ];

        "hyprland/window" = {
          rotate = 90;
          max-length = 50;
        };

        modules-right = [
          "clock"
          "group/info"
        ];

        clock = {
          format = "{:%I\n%M\n——\n%d\n%m}";
          tooltip = false;
        };

        "group/info" = {
          orientation = "vertical";
          modules = [
            "battery"
            "network"
          ];
        };

        battery = {
          states = {
            warning = 40;
            critical = 15;
          };

          format = "{icon}";
          format-charging = "󰂄";

          tooltip-format = ''
            power: {capacity}%
            time: {timeTo}
          '';

          format-icons = [
            "󰂎"
            "󰁺"
            "󰁻"
            "󰁼"
            "󰁽"
            "󰁾"
            "󰁿"
            "󰂀"
            "󰂁"
            "󰂂"
            "󰁹"
          ];
        };

        network = {
          tooltip = false;
          format = "";

          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];

          format-wifi = "{icon}";
          format-ethernet = "󰈁";
          format-disconnected = "󰤭";
        };
      }
    ];

    style = ''
      @define-color rosewater #f2d5cf;
      @define-color flamingo #eebebe;
      @define-color pink #f4b8e4;
      @define-color mauve #ca9ee6;
      @define-color red #e78284;
      @define-color maroon #ea999c;
      @define-color peach #ef9f76;
      @define-color yellow #e5c890;
      @define-color green #a6d189;
      @define-color teal #81c8be;
      @define-color sky #99d1db;
      @define-color sapphire #85c1dc;
      @define-color blue #8caaee;
      @define-color lavender #babbf1;
      @define-color text #c6d0f5;
      @define-color subtext1 #b5bfe2;
      @define-color subtext0 #a5adce;
      @define-color overlay2 #949cbb;
      @define-color overlay1 #838ba7;
      @define-color overlay0 #737994;
      @define-color surface2 #626880;
      @define-color surface1 #51576d;
      @define-color surface0 #414559;
      @define-color base #303446;
      @define-color mantle #292c3c;
      @define-color crust #232634;

      * {
        font-family: "JetBrains Mono Nerd Font";
        color: @text;
      }

      window#waybar {
        background-color: alpha(@base, 0.75);
      }

      #clock, #info {
        background-color: alpha(@surface0, 0.75);
        border-radius: 20px;
        margin: 5px;
        padding: 10px 0px;
      }

      #battery {
        padding: 0px 10px 5px 10px;
      }

      window#waybar.battery-warning {
        background-color: shade(@yellow, 1);
      }

      window#waybar.battery-critical {
        background-color: shade(@red, 1);
      }

      #workspaces {
        background-color: alpha(@surface0, 0.75);
        border-radius: 20px;
        margin: 5px;
      }

      #workspaces button {
        border-radius: 0px;
        padding: 5px 8px;
        box-shadow: none;
        text-shadow: none;
        border: none;
      }

      #workspaces button:first-child {
        border-radius: 20px 20px 0px 0px;
      }

      #workspaces button:last-child {
        border-radius: 0px 0px 20px 20px;
      }

      #workspaces button:hover {
        transition: none;
        background: alpha(@surface1, 0.75);
      }

      #workspaces button.active {
        background-color: alpha(@mauve, 0.75);
      }
    '';
  };
}
