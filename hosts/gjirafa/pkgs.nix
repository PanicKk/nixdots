{ pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    gzip
    unzip
    wget
    curl
    git
    firefox
    ranger
    feh
  ];
}
