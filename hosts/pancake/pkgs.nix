{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    gzip
    unzip
    wget
    curl
    git
    neovim
    ranger
    feh
    firefox
    cmake
  ];
}
