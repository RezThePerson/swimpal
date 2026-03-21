{ inputs, ... }:
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  users.mutableUsers = false;

  users.users.rez = {
    isNormalUser = true;
    description = "Rez";
    initialPassword = "nixoverarch";
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "input"
      "tty"
      "audio"
    ];
  };

  home-manager = {
    backupFileExtension = "bak";
    extraSpecialArgs = { inherit inputs; };

    users.rez = import ../home;
  };
}
