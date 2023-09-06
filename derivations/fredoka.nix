{ pkgs, lib, stdenv, fetchFromGitHub, ... }:

stdenv.mkDerivation rec {
  name = "Fredoka-Font";

  src = fetchFromGitHub {
    repo = name;
    owner = "PanicKk";
    rev = "1cded493908b09a8da55db75e75bde433efebaf8";
    sha256 = "U3GEDFIGBfB3bH7IqomIStPpTcQKhSyAc6aAlpYuwT8=";
  };
  
  installPhase = ''
    runHook preInstall
    mkdir -pv $out/share/fonts
    install -Dvm755 "$src/Fredoka-VariableFont_wdth,wght.ttf" $out/share/fonts
    mv -v $out/share/fonts/Fredoka* $out/share/fonts/fredoka.ttf
    runHook postInstall
  '';
}
