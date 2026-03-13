{ inputs, pkgs, ... }:
{
  imports = [ inputs.ags.homeManagerModules.default ];

  programs.ags = {
    enable = true;
    configDir = ./ags-config;
  };

  home.packages = with pkgs; [
    astal.astal4
    astal.hyprland
  ];
}
