{
  programs.git = {
    enable = true;

    settings = {
      init.defaultBranch = "main";

      user.email = "reztheperson@proton.me";
      user.name = "Rez";
    };
  };

  programs.gh = {
    enable = true;
  };
}
