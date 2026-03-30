{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        type = "builtin";
        source = "auto-small";
        padding = {
          top = 0;
          left = 1;
          right = 2;
        };
      };

      display.separator = "";

      modules = [
        "break"

        {
          type = "title";
          key = "╭─ ";
          keyColor = "#ca9ee6";
          format = "{1}@{2}";
        }

        {
          type = "os";
          key = "├─ ";
          keyColor = "#ca9ee6";
          format = "{1}";
        }

        {
          type = "wm";
          key = "╰─ ";
          keyColor = "#ca9ee6";
          format = "{2}";
        }

        "break"

        {
          type = "cpu";
          key = "╭─ ";
          keyColor = "#ca9ee6";
          format = "{1}";
        }

        {
          type = "gpu";
          key = "├─󰢮 ";
          keyColor = "#ca9ee6";
          format = "{2}";
        }

        {
          type = "packages";
          key = "├─󰏖 ";
          keyColor = "#ca9ee6";
          format = "{1} Total Packages";
        }

        {
          type = "memory";
          key = "╰─󰑭 ";
          keyColor = "#ca9ee6";
          format = "{1}/{2} ({3})";
        }
      ];
    };
  };
}
