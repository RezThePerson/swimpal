{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wl-clipboard
    wl-clip-persist
    cliphist
    grim
    gpu-screen-recorder
    slurp
    trash-cli
  ];
}
