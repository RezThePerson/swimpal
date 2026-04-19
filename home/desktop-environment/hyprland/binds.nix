{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    bind = [
      # apps
      "$mod, d, exec, rofi -show drun"
      "$mod, return, exec, kitty"

      # window management
      "$mod, q, killactive"
      "$mod, f, togglefloating"

      # clipbaord
      "Super, v, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy && wl-paste --no-newline | wtype -"
      
      # picker
      "Super, p, exec, hyprpicker | wl-copy"
      
      # screenshot
      "$mod, s, exec, grim -g \"$(slurp)\" - | wl-copy"

      # lock
      "$mod, l, exec, hyprlock"
      ", XF86PowerOff, exec, hyprlock"

      # windows
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      # move to window
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"
    ];

    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    bindl = [
      ", switch:off:Lid Switch, exec, hyprctl keyword monitor 'eDP-1, preferred, auto, 1'"
      ", switch:on:Lid Switch, exec, hyprctl keyword monitor 'eDP-1, disable'"

      "Super, up, exec, wpctl set-volume @DEFAULT_SINK@ 5%+"
      "Super, down, exec, wpctl set-volume @DEFAULT_SINK@ 5%-"

      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_SINK@ 5%-"

      "Super, minus, exec, brightnessctl s +5%"
      "Super, equal, exec, brightnessctl s -5%"

      ", XF86MonBrightnessUp, exec, brightnessctl s +5%"
      ", XF86MonBrightnessDown, exec, brightnessctl s -5%"

      "Super, space, exec, playerctl play-pause"
      "Super, left, exec, playerctl previous"
      "Super, right, exec, playerctl next"

      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86AudioNext, exec, playerctl next"
    ];
  };
}
