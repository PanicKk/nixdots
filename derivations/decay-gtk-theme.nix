{ lib, stdenv, fetchFromGitHub, ...}:

stdenv.mkDerivation rec {
  name = "decay-gtk";

  src = fetchFromGitHub {
    repo = name;
    rev = "";
    owner = "decaycs";
    sha256 = "0AtqxJwTSWwaUUnGmDQabRiRHdhKxU6vJ2kse1/MQAY=";
  };

  installPhase = ''
    mkdir -pv $out/.config/presets/user
    cp -rvf $src/Themes/* $out/.config/presets/user
    cp -rvf $out/.config/presets/user/* /home/panickk/.config/presets/user
    rm -rf $out/.config
  '';
}
