{
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      flex = "fastfetch";
      ws = "wishlist";
      c = "qalc";
      y = "yazi";

      build = "sudo nixos-rebuild switch --flake ~/swimpal";
    };

    initContent = "
      fastfetch
    ";
  };
}
