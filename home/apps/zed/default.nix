{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "caatppuccin"
      "catppuccin-icons"
      "svelte"
      "nix"
      "astro"
      "go"
    ];

    userSettings = {
      format_on_save = "on";
      autosave = {
        after_delay = {
          milliseconds = 200;
        };
      };

      telemetry = {
        metrics = false;
      };

      buffer_font_family = "JetBrainsMono Nerd Font Mono";
      ui_font_family = "JetBrainsMono Nerd Font Mono";
      ui_font_size = 16;
      buffer_font_size = 16;
      terminal = {
        font_family = "JetBrainsMono Nerd Font Mono";
        font_size = 16;
      };

      icon_theme = "Catppuccin Mocha";
      theme = "Catppuccin Mocha";

      session = {
        trust_all_worktrees = true;
      };

      git = {
        inline_blame = {
          enabled = false;
        };
      };

      disable_ai = true;

    };
  };
}
