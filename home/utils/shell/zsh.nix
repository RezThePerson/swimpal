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


      ls = "echo 'dawg use l instead'";
      l = "eza -1 --icons";
      la = "eza -1 --icons -a";
      ll = "eza -1 --icons -l";
      lt = "eza -1 --tree --level=2 --icons";
    };

    initContent = "
      fastfetch
    ";
  };
}
