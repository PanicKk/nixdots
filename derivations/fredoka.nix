{ pkgs, lib, stdenv, fetchFromGitHub, ... }:

stdenv.mkDerivation rec {
  name = "Fredoka-Font";

  src = fetchFromGitHub {
    repo = name;
    owner = "PanicKk";
    rev = "";
    sha256 = "sha256-U3GEDFIGBfB3bH7IqomIStPpTcQKhSyAc6aAlpYuwT8=";
  };
  
  installPhase = ''
    runHook preInstall
    mkdir -pv $out/share/fonts
    install -Dm755 "$src/Fredoka-VariableFont_wdth,wght.ttf" $out/share/fonts
    runHook postInstall
  '';
}
