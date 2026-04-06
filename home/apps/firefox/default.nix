{

  programs.firefox = {
    enable = true;
    policies = {
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;

      BrowserDataBackup = {
        AllowBackup = false;
        AllowRestore = false;
      };

      CaptivePortal = false;
      Cookies.Behavior = "reject-tracker-and-partition-foreign";

      DisableBuiltinPDFViewer = true;
      DisableFeedbackCommands = true;
      DisableFirefoxAccounts = true;
      DisableFirefoxStudies = true;
      DisableForgetButton = true;
      DisableFormHistory = true;
      DisableProfileImport = true;
      DisableSetDesktopBackground = true;
      DisableTelemetry = true;

      DisplayBookmarksToolbar = "never";
      DisplayMenuBar = "default-off";

      DNSOverHTTPS = {
        Enabled = true;
        Fallback = false;
        ProviderURL = "https://cloudflare-dns.com/dns-query";
      };

      EnableTrackingProtection = {
        Category = "strict";
        Cryptomining = true;
        EmailTracking = true;
        Fingerprinting = true;
        SuspectedFingerprinting = true;
        Value = true;
      };

      EncryptedMediaExtensions.Enabled = true;

      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          default_area = "menupanel";
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/latest.xpi";
          private_browsing = true;
        };

        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          default_area = "navbar";
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
        };

        "sponsorBlocker@ajay.app" = {
          default_area = "menupanel";
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/sponsorblock/latest.xpi";
        };

        "{bbb880ce-43c9-47ae-b746-c3e0096c5b76}" = {
          default_area = "menupanel";
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/en-US/firefox/addon/catppuccin-web-file-icons/latest.xpi";
        };

        "{76aabc99-c1a8-4c1e-832b-d4f2941d5a7a}" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/en-US/firefox/addon/catppuccin-mocha-mauve-git/latest.xpi";
        };

      };

      FirefoxHome = {
        Highlights = false;
        Search = false;
        SponsoredStories = false;
        SponsoredTopSites = false;
        Stories = false;
        TopSites = true;
      };

      FirefoxSuggest = {
        ImproveSuggest = false;
        SponsoredSuggestions = false;
        WebSuggestions = false;
      };

      GenerativeAI.Enabled = false;
      HardwareAcceleration = true;

      InstallAddonsPermission = {
        Default = false;
        Allow = [ "https://addons.mozilla.org" ];
      };

      NetworkPrediction = false;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;

      OverrideFirstRunPage = "";
      OverridePostUpdatePage = "";

      PasswordManagerEnabled = false;

      PictureInPicture.Enabled = false;
      PopupBlocking.Default = true;
      PostQuantumKeyAgreementEnabled = true;

      Preferences = {
        "browser.compactmode.show" = true;
        "browser.newtabpage.activity-stream.system.showWeather" = false;
        "browser.newtabpage.activity-stream.topSitesRows" = 2;
        "browser.tabs.firefox-view" = false;
        "browser.tabs.tabmanager.enabled" = false;

        "browser.uiCustomization.state" = builtins.toJSON {
          placements = {
            nav-bar = [
              "back-button"
              "forward-button"
              "stop-reload-button"
              "urlbar-container"
              "downloads-button"
              "unified-extensions-button"
            ];
            TabsToolbar = [ "tabbrowser-tabs" ];
          };
          currentVersion = 20;
        };

        "sidebar.verticalTabs" = true;
        "extensions.activeThemeID" = "{76aabc99-c1a8-4c1e-832b-d4f2941d5a7a}";
      };

      PrimaryPassword = false;
      RequestedLocales = [ "en-US" ];

      SanitizeOnShutdown = {
        Cache = true;
        Downloads = true;
        FormData = true;
      };

      SearchBar = "unified";

      SearchEngines.Remove = [
        "Amazon.com"
        "Bing"
        "eBay"
        "Perplexity"
      ];

      SearchSuggestEnabled = false;
      ShowHomeButton = false;
      SkipTermsOfUse = true;
      TranslateEnabled = true;

      UserMessaging = {
        ExtensionRecommendations = false;
        FeatureRecommendations = false;
        UrlbarInterventions = false;
        SkipOnboarding = true;
        MoreFromMozilla = false;
        FirefoxLabs = false;
      };
    };
  };

}
