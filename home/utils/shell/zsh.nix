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

      build = "sudo nixos-rebuild switch --flake ~/swimpal";
    };

    initContent = "
      fastfetch
    ";
  };
}
