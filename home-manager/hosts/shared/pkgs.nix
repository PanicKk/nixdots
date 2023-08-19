{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ 
     gnumake
     gcc
     gpp
     nodejs
     gzip
     unzip
     git
     wget
     curl
     neovim
     firefox
     zsh
     oh-my-zsh
     zsh-z
     zsh-powerlevel10k
     ranger
     feh
  ];
}
