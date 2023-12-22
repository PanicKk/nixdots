{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "history"
        "command-not-found"
        "composer"
        "npm"
        "macos"
        "sudo"
        "vagrant"
        "z"
      ];
    };
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    shellAliases = {
      gjirafaDev = "nix develop .#dotnet_shell";
    };
  };
  users.defaultUserShell = pkgs.zsh;
}
