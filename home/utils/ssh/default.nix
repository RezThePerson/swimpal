{ pkgs, ... }:
{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        SetEnv TERM=xterm-256color
        IdentityFile ~/.ssh/id_ed25519

      Host Pi
        HostName 192.168.0.10
        User rpi
        Port 22
    '';
  };

  home.packages = with pkgs; [
    lazyssh
  ];
}
