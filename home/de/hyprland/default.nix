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
      ];
    };
  };

  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
