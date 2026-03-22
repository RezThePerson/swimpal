# swimpal

a simple but not so much nixos rice

## Try it out

### if you only want to test it ones on a vm

1. install nix os and select no desktop.
2. make sure to create the user directory with the username `Rez`
3. go ahead with the default settings for the rest options
4. login using `Rez` and the password you set, and run the below

```bash
# installs git temporarly
nix-shell -p git

# you will have to repaste the bellow due to going to a new shell
# clone the dotfiles
git clone https://github.com/RezThePerson/swimpal.git ~/swimpal

# load the local hardware configs
nixos-generate-config --show-hardware-config > ./swimpal/host/tester/hardware-autogen.nix

# rebuild and wait for about 15mins for it to install everything
sudo nixos-rebuild switch --flake ~/swimpal#tester

# time to try it
sudo reboot
```

4. login with the username `rez` and the password you set
5. enjoy!

## Todo

- [ ] add https://addons.mozilla.org/en-US/firefox/addon/catppuccin-mocha-mauve-git/ and more to the fire fox customization
- [ ] asperite
