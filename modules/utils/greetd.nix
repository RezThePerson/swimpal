{ pkgs, ... }:
{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time -g --greeting --cmd start-hyprland";
        user = "greeter";
      };
    };
  };
}