# swimpal

A simple but not so much NixOS rice.

## Try it out

### If you just want to test it in a VM

1. Install [NixOS](https://nixos.org/download/#nixos-iso) and select "no desktop environment".
2. Make sure to create a user with the username `rez`.
3. Continue with the default settings for the remaining options.
4. Log in as `rez` using the password you set, then run:

```bash
# Install git temporarily
nix-shell -p git

# You'll need to paste the next commands again because this opens a new shell

# Clone the dotfiles
git clone https://github.com/RezThePerson/swimpal.git ~/swimpal

# Generate hardware config
nixos-generate-config --show-hardware-config > ./swimpal/host/tester/hardware-autogen.nix

# Rebuild system (this may take ~30 minutes)
sudo nixos-rebuild switch --extra-experimental-features "nix-command flakes" --flake ~/swimpal#tester

# Reboot to apply changes
sudo reboot
```

5. Log back in with the username `rez` and your password.
6. Enjoy.

## Todo

- [ ] Add Firefox customizations, including:
  - [https://addons.mozilla.org/en-US/firefox/addon/catppuccin-mocha-mauve-git](https://addons.mozilla.org/en-US/firefox/addon/catppuccin-mocha-mauve-git)