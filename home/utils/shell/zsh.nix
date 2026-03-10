{
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      flex = "fastfetch";
      c = "qalc";
      y = "yazi";

      rb = "reboot";
      rb-jimmy = "sudo nixos-rebuild switch --flake ~/swimpal#jimmy";
    };

    initContent = "
      fastfetch
    ";
  };
}
