{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wishlist
  ];

  home.file.".config/wishlist/config.yaml".source = ./wishlist.yaml;

}
