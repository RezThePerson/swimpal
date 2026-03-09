{
  description = "My swimpal rice!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        jimmy = nixpkgs.lib.nixosSystem {
          # my acer book 3 or smth idk what it is

          specialArgs = {
            inherit inputs;
            modules = [

            ];
          };
          modules = [
            ./host/jimmy
            ./modules
          ];
        };
      };
    };
}
