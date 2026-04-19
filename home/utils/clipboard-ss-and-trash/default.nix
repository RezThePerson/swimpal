{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wl-clipboard
    wl-clip-persist
    wtype
    hyprpicker
    cliphist
    grim
    gpu-screen-recorder
    slurp
    trash-cli
  ];
}
