# swimpal

My simple but yet not so much NixOS rice.

## Info

The DE itself mostly uses the [Caelestia dots](https://github.com/caelestia-dots/shell), but I still spent a decent amount of time putting everything together the way I like it.

## Gallery

| ![]() |     |
| ----- | --- |
|       |     |

## Try it out (In a VM)

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
