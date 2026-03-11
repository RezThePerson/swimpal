# idk

### useage

#### fully use nix os itself

```
git clone github.com/RezThePerson/swimpal ~/swimpal --recurse-submodules
nixos-generate-config --show-hardware-config > ./swimpal/host/<hostname>/hardware-autogen.nix
sudo nixos-rebuild switch --flake ~/swimpal<hostname>
```

#### only ags waybar, and all

check: https://github.com/RezThePerson/swimpal-ags-config

### note to self

to update ags-config
```
git submodule update --remote
```
