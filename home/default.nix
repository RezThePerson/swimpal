{ ... }:
{
  home.username = "rez";
  home.homeDirectory = "/home/rez";
  home.stateVersion = "25.05";

  imports = [
    ./desktop-environment
    ./utils
    ./apps
  ];
}
