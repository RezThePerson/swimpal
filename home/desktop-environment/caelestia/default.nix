{ pkgs, ... }:
{
  home.packages = [
    caelestia-shell.packages.${pkgs.system}.default
  ];
}
