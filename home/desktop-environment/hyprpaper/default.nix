{

  programs.hyprpaper = {
    enable = true;

    settings = {
      wallpaper = [
        {
          monitor = "DP-1";
          path = ./assets/wallpaper.png;
        }
        {
          monitor = "eDP-1";
          path = ./assets/wallpaper.png;
        }
      ];
    };
  };
}
