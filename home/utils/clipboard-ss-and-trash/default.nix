{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wl-clip-persist
    grim
    slurp
    trash-cli
  ];
}
