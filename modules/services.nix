{
  services.seatd.enable = true;

  services.cloudflare-warp.enable = true;

  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "yes";
  services.openssh.settings.PasswordAuthentication = true;

  powerManagement.enable = true;
  services.upower.enable = true;
}
