{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  allowUnfree = true;

  programs.nix-ld.enable = true;
}
