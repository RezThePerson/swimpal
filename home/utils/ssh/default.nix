{ pkgs, ... }:
{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        SetEnv TERM=xterm-256color

      Host Pi
        HostName 192.168.0.10
        User rpi
        Port 22
    '';
  };

  home.packages = with pkgs; [
    wishlist
  ];
}
