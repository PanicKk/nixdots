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
  };
  users.defaultUserShell = pkgs.zsh;
}
