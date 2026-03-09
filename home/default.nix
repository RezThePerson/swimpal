{ ... }:
{
  home.username = "rez";
  home.homeDirectory = "/home/rez";
  home.stateVersion = "25.05";

  imports = [
    ./de
    ./apps
    ./gui-apps
  ];
}
