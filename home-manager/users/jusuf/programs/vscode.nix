{ pkgs, ...}:

{
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;
    extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "decay";
        version = "1.0.9";
        publisher = "decaycs";
        sha256 = "TwDq8K757CTFEBBBGbP5eOC5nMrQzgf/XYIHi9UCAkU=";
      }
      {
        name = "gitlens";
        version = "2023.9.605";
        publisher = "eamodio";
        sha256 = "dVTJlyzhAbyRYD7eX8i6F3EurPj7NIegzNt+XYS2ztk=";
      }
      # {
      #   name = "csdevkit";
      #   version = "0.3.21";
      #   publisher = "ms-dotnettools";
      #   sha256 = "pDOyVJLLDEcvhjX7EbieA9QEtZLctTIw32gSUv4JsUQ=";
      # }
      {
        name = "vscodeintellicode";
        version = "1.2.30";
        publisher = "VisualStudioExptTeam";
        sha256 = "f2Gn+W0QHN8jD5aCG+P93Y+JDr/vs2ldGL7uQwBK4lE=";
      }
      {
        name = "path-intellisense";
        version = "2.8.4";
        publisher = "christian-kohler";
        sha256 = "FEBYcjJHOwmxVHhhyxqOpk/V6hvtMkhkvLVpmJCMSZw=";
      }
      {
        name = "html-snippets";
        version = "0.2.1";
        publisher = "abusaidm";
        sha256 = "mps1lMruuA6cb4kae0J3bMNJPb1uIQAb7jjy9aDn2Oc=";
      }
      {
        name = "vscode-html-css";
        version = "1.13.1";
        publisher = "ecmel";
        sha256 = "gBfcizgn+thCqpTa8bubh6S77ynBC/Vpc+7n4XOfqzE=";
      }
      {
        name = "vscode-css-peek";
        version = "4.4.1";
        publisher = "pranaygp";
        sha256 = "GX6J9DfIW9CLarSCfWhJQ9vvfUxy8QU0kh3cfRUZIaE=";
      }
      {
        name = "JavaScriptSnippets";
        version = "1.8.0";
        publisher = "xabikos";
        sha256 = "ht6Wm1X7zien+fjMv864qP+Oz4M6X6f2RXjrThURr6c=";
      }
      {
        name = "LiveServer";
        version = "5.7.9";
        publisher = "ritwickdey";
        sha256 = "w0CYSEOdltwMFzm5ZhOxSrxqQ1y4+gLfB8L+EFFgzDc=";
      }
      {
        name = "auto-rename-tag";
        version = "0.1.10";
        publisher = "formulahendry";
        sha256 = "uXqWebxnDwaUVLFG6MUh4bZ7jw5d2rTHRm5NoR2n0Vs=";
      }
      {
        name = "volar";
        version = "1.8.10";
        publisher = "Vue";
        sha256 = "Ne/QpqEWtbuX3366FilLCEgkHcmWykKLopEVjDJeA6Q=";
      }
      {
        name = "es7-react-js-snippets";
        version = "4.4.3";
        publisher = "dsznajder";
        sha256 = "QF950JhvVIathAygva3wwUOzBLjBm7HE3Sgcp7f20Pc=";
      }
      {
        name = "vscode-docker";
        version = "1.26.0";
        publisher = "ms-azuretools";
        sha256 = "RkHKO97so3N61UXc35IekmLEsdPQIOpSxiDzCGL3VTs=";
      }
      {
        name = "docker-explorer";
        version = "0.1.7";
        publisher = "formulahendry";
        sha256 = "+clAvJdar3hAoWVAjkKbY9eS9qhDr+UmAheF5NchEQo=";
      }
      {
        name = "material-icon-theme";
        version = "4.30.1";
        publisher = "PKief";
        sha256 = "ibRGROhFOxZ5koFwSaDOkFqYKM/LpR8axnW9XvMuYJU=";
      }
      {
        name = "python";
        version = "2023.8.0";
        publisher = "ms-python";
        sha256 = "7DgOYn25qcNp/uc5v6yKSyWU7Ln06ZhXY0hL2vqKn3I=";
      }
      {
        name = "vsc-python-indent";
        version = "1.18.0";
        publisher = "KevinRose";
        sha256 = "hiOMcHiW8KFmau7WYli0pFszBBkb6HphZsz+QT5vHv0=";
      }
    ];
    userSettings = {
      workbench.colorTheme = "Default Light Modern";
      workbench.iconTheme = "material-icon-theme";
      editor = {
        fontFamily = "'JetBrains Mono'";
        fontSize = 14;
        fontLigatures = true;
        smoothScrolling = true;
        tabSize = 2;
        bracketPairColorization.enabled = true;
        files.autoSave = "afterDelay";
        minimap.renderCharacters = false;
      };
      terminal.integrated.fontSize = 14;
      terminal.integrated.fontFamily = "'JetBrainsMono Nerd Font Mono'";
    };
  };
}
