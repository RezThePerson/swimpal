{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        type = "small";
        padding = {
          top = 2;
          left = 2;
          right = 3;
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
          type = "packages";
          key = "├─󰏖 ";
          keyColor = "#ca9ee6";
          format = "{1} Total Packages";
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
          type = "disk";
          key = "├─ ";
          keyColor = "#ca9ee6";
          format = "{1}/{2} ({3})";
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
