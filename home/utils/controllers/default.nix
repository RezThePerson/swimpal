{ pkgs, ... }:
{
  home.packages = with pkgs; [
    brightnessctl
    playerctl
    
    bluetui
    pulsemixer
  ];
}
