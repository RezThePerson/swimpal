{
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      flex = "fastfetch";
      lsh = "lazyssh";
      c = "qalc";
      y = "yazi";
      audiotui = "pulsemixer";

      build = "sudo nixos-rebuild switch --flake ~/swimpal";
    };

    initContent = "
      fastfetch
    ";
  };
}
