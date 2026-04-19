{
  services.hyprpaper = {
    enable = true;

    settings = {
      wallpaper = [
        {
          monitor = "DP-1";
          path = ".wallpaper.png";
        }
        {
          monitor = "eDP-1";
          path = ".wallpaper.png";
        }
      ];
    };
  };
}
