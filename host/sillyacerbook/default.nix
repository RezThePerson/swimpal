{
  networking.hostName = "sillyacerbook";

  imports = [
    ./hardware-autogen.nix
    ./boot.nix
    ./drivers.nix
  ];
}
