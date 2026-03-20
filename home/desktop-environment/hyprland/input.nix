{
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "us";
      numlock_by_default = false;
      repeat_delay = 250;
      repeat_rate = 35;

      focus_on_close = 1;

      touchpad = {
        natural_scroll = true;
        disable_while_typing = false;
        scroll_factor = 1.0;
      };
    };

    binds = {
      scroll_event_delay = 0;
    };

    cursor = {
      hotspot_padding = 1;
    };

    gestures = {
      workspace_swipe_distance = 700;
      workspace_swipe_cancel_ratio = 0.15;
      workspace_swipe_min_speed_to_force = 5;
      workspace_swipe_direction_lock = true;
      workspace_swipe_direction_lock_threshold = 10;
      workspace_swipe_create_new = true;
    };

    gesture = [
      "3, horizontal, workspace"
      "3, up, special, special"
      "3, down, dispatcher, exec, caelestia toggle specialws"
      "4, down, dispatcher, exec, systemctl suspend-then-hibernate"
    ];
  };
}
