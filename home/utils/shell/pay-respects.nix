{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nix-search-cli
  ];

  programs.pay-respects = {
    enable = true;
    enableZshIntegration = true;
  };
}
