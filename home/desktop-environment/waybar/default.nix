{
  import = [
    ./theme.nix
    ./styles.nix
  ];

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
          tooltip-format = "power: {capacity}%\ntime: {timeTo}";
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
  };
}
