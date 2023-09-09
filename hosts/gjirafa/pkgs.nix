{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    mlocate
    gcc
    cmake
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
    # firefox
    bitwarden
  ];
}
