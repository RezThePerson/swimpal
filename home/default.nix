{ ... }:
{
  home.username = "rez";
  home.homeDirectory = "/home/rez";
  home.stateVersion = "26.05";

  imports = [
    ./desktop-environment
    ./utils
    ./apps
  ];
}
