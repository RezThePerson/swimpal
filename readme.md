# swimpal

My simple but yet not so much NixOS rice.

## Info

The DE itself mostly uses the [Caelestia dots](https://github.com/caelestia-dots/shell), but I still spent a decent amount of time putting everything together the way I like it.

## Gallery

| ![](https://cdn.hackclub.com/019d3d38-a21b-72c3-b2d6-9a7095bd5cef/image.png) | ![](https://cdn.hackclub.com/019d3d39-2751-76f7-8dcf-b18887964af8/image.png)    |
| ----- | --- |
|   ![](https://cdn.hackclub.com/019d3d55-12fa-71d7-81db-93df5033cad6/image.png)    |  ![](https://cdn.hackclub.com/019d3d39-89f7-770f-94ae-c0f07190f50d/image.png)   |

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
