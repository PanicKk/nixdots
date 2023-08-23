{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    gzip
    unzip
    /*
    # Use programs.git.*
    #git
    */
    wget
    curl
    /*
    # Use programs.neovim.*
    neovim
    */
    firefox
    /*
    # Use programs.zsh.*
    zsh
    oh-my-zsh
    zsh-z
    zsh-powerlevel10k
    */
    /*
    # Use a devShell
     gnumake
     gcc
     gpp
     nodejs
    */
    ranger
    feh
  ];
}
