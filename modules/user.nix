{ inputs, ... }:
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  users.users.rez = {
    isNormalUser = true;
    description = "Rez";
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
    useGlobalPkgs = true;
    useUserPackages = true;

    users.rez = import ../home;
  };
}
