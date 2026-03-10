{
  imports = [
    ./binds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";

      exec-once = [
        "waybar"
        "wl-clip-persist --clipboard regular"
      ];

      monitor = [
      ", preferred, auto, 1"
      ];
    };
  };
}
