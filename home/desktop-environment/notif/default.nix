{ pkgs, ... }:
{
  home.packages = with pkgs; [
    libnotify
    inotify-tools
  ];
}
