{
  programs.kitty = {
    enable = true;

    font = { name = "JetBrains Mono Nerd Font";
        size = 16;
    };
    themeFile = "Catppuccin-Mocha";

    settings = {
        confirm_os_window_close = 0;
        shell = "zsh";
    }
  };
}
