{ config, ... }:
{
  programs.rofi = {
    enable = true;

    terminal = "kitty";
    font = "JetBrainsMono Nerd Font 12";
    location = "center";

    modes = [
      "drun"
    ];

    extraConfig = {
      show-icons = true;
      drun-display-format = "{icon}  {name}";
      disable-history = false;
      hide-scrollbar = true;
    };

    theme =
      let
        inherit (config.lib.formats.rasi) mkLiteral;
      in
      {
        "*" = {
          background-color = mkLiteral "#1e1e2e";
          foreground-color = mkLiteral "#cdd6f4";
          text-color = mkLiteral "#cdd6f4";
          highlight = mkLiteral "#cba6f7";
        };

        element = {
          orientation = "vertical";
          spacing = 2;
          margin = mkLiteral "0px 0px 5px 0px";
        };

        window = {
          width = mkLiteral "40%";
          border = 2;
          border-radius = 12;
          padding = 10;
          background-color = mkLiteral "@background-color";
        };

        inputbar = {
          children = map mkLiteral [
            "entry"
          ];
        };

        prompt = {
          text-color = mkLiteral "@highlight";
          font = "JetBrainsMono Nerd Font";
        };

        entry = {
          placeholder = "Search...";
          text-color = mkLiteral "@highlight";
        };

        listview = {
          lines = 10;
        };

        "element selected" = {
          background-color = mkLiteral "@highlight";
          text-color = mkLiteral "#1e1e2e";
        };

        "element-icon" = {
          size = 20;
        };
      };
  };
}
