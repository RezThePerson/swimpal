{ config, ... }:
{
  programs.rofi = {
    enable = true;

    terminal = "kitty";
    font = "JetBrainsMono Nerd Font";
    location = 0;

    modes = [
      "run"
      "drun"
      "window"
    ];

    extraConfig = {
      show-icons = true;
      drun-display-format = "{icon} {name}";
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   Apps ";
      display-run = "   Run ";
      display-window = " 󰕰  Window ";
      sidebar-mode = true;
    };

    theme =
      let
        inherit (config.lib.formats.rasi) mkLiteral;
      in
      {
        "*" = {
          bg = mkLiteral "#1e1e2e";
          fg = mkLiteral "#45475a";
          highlight = mkLiteral "#cba6f7";
        };

        window = {
          width = mkLiteral "30%";
          border = 2;
          border-radius = 12;
          padding = 20;
          background-color = mkLiteral "@bg";
        };

        inputbar = {
          children = map mkLiteral [
            "prompt"
            "entry"
          ];
        };

        prompt = {
          text-color = mkLiteral "@highlight";
          font = "JetBrainsMono Nerd Font";
        };

        entry = {
          placeholder = "Search...";
        };

        listview = {
          lines = 8;
        };

        "element selected" = {
          background-color = mkLiteral "@highlight";
          text-color = mkLiteral "@bg";
        };

        "element-icon" = {
          size = 40;
        };
      };
  };
}
