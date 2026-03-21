{
  networking.hostName = "tester";

  imports = [
    ./hardware-autogen.nix
    ./boot.nix
  ];
}
