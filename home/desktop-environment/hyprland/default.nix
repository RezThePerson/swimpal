{
  imports = [
    ./binds.nix
    ./animations.nix
    ./decoration.nix
    ./input.nix
    ./misc.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      exec-once = [
        "hyprlock"
        "wl-clip-persist --clipboard regular"
        "wl-paste --watch cliphist store"
        "waybar"
        "[workspace 1 silent] firefox"
        "[workspace 2 silent] zeditor"
        "[workspace 3 silent] kitty"
      ];

      monitor = [
        ", preferred, auto, 1"
      ];
    };
  };
}
