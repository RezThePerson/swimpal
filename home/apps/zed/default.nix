{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "Catppuccin"
      "Catppuccin Icons"
      "Svelte"
    ];

    settings = {
      format_on_save = true;

      features = {
        copilot = false;
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
    };
  };
}
