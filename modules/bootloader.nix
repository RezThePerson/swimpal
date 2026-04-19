{ pkgs, ... }:
let
  catppuccin-grub = pkgs.fetchFromGitHub {
    owner = "catppuccin";
    repo = "grub";
    rev = "main";
    sha256 = "sha256-jgM22pvCQvb0bjQQXoiqGMgScR9AgCK3OfDF5Ud+/mk=";
  };
in
{
  boot.loader.systemd-boot.configurationLimit = 14;

  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;

    theme = "${catppuccin-grub}/src/catppuccin-mocha-grub-theme";
  };
}
