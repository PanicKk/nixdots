{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    mlocate
    gcc
    cmake
    gnumake
    gzip
    unzip
    wget
    curl
    optipng
    ripgrep
    ranger
    git
    neovim
    feh
    bitwarden
  ];
}
