# idk

### useage

#### fully use nix os itself

```
git clone https://github.com/RezThePerson/swimpal.git ~/swimpal
nixos-generate-config --show-hardware-config > ./swimpal/host/tester/hardware-autogen.nix
sudo nixos-rebuild switch --flake ~/swimpal#tester
```

#### only ags waybar, and all

check: https://github.com/RezThePerson/swimpal-ags-config

### note to self

to update ags-config
```
git submodule update --remote
```
