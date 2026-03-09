{
  programs.firefox = {
    enable = true;

    preferences = {
      "DisableFirefoxAccounts" = true;
    };

    autoConfig = [
      "lockPref('browser.homepage.disable_button.bookmark_page', true);"
    ];
  };
}
