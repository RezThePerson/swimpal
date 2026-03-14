{ inputs, pkgs, ... }:
{
  imports = [ inputs.ags.homeManagerModules.default ];

  programs.ags = {
    enable = true;
    configDir = ./ags-config;

    extraPackages = [
      inputs.astal.packages.${pkgs.system}.hyprland
    ];
  };
}
