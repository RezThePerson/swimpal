{
  imports = [
    ./binds.nix
  ];

  programs.ags = {
    enable = true;

    configDir = ./config;
  };
}
