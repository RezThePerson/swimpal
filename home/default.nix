{ ... }:
{
  home.username = "rez";
  home.homeDirectory = "/home/rez";
  home.stateVersion = "26.05";

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./desktop-environment
    ./utils
    ./apps
  ];
}
