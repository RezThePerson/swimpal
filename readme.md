# swimpal

a simple but not so much nixos rice

## Try it out

### if you only want to test it ones on a vm

1. install nix os and select no desktop.
2. go ahead with the default settings
3. login and run the below 

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

4. login with the username `rez` and the default password `nixoverarch`
5. enjoy!

