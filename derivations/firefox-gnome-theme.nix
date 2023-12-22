{ pkgs, lib, stdenv, fetchFromGitHub, ... }:

stdenv.mkDerivation rec {
  name = "firefox-gnome-theme";

  src = fetchFromGitHub {
    repo = name;
    owner = "rafaelmardojai";
    rev = "v117";
    sha256 = "ulG+9TcjI27RQF/5t7i+ED38gLuK5jbXNJHBxs4QBV0=";
  };

  dontConfigure = true;
  dontBuild = true;
  doCheck = false;

  installPhase = ''
    mkdir -p $out/share/firefox-gnome-theme
    cp -r $src/* $out/share/firefox-gnome-theme
  '';

  meta = with lib; {
    description = "A GNOME theme for Firefox";
    homepage = "https://github.com/rafaelmardojai/firefox-gnome-theme";
    license = licenses.unlicense;
  };
}
