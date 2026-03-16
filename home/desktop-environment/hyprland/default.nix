{
  imports = [
    ./binds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = [
        "wl-clip-persist --clipboard regular"
        "wl-paste --watch cliphist store"
        "waybar"
      ];

      monitor = [
        ", preferred, auto, 1"
      ];
    };
  };
}
