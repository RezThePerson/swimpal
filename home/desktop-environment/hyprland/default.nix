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
        "wl-clip-persist --clipboard regular"
        "wl-paste --watch cliphist store"
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
