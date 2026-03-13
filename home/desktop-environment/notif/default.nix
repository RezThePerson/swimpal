{ pkgs, ... }:
{
  home.packages = with pkgs; [
    libnotify
    dunst
  ];
}
