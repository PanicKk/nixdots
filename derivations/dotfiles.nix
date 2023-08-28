{ lib, stdenv, fetchFromGitHub, ...}:

stdenv.mkDerivation rec {
  name = "I3WM-.files";

  src = fetchFromGitHub {
    repo = name;
    rev = "";
    owner = "PanicKk";
    sha256 = "sha256-hJM92SC/deo5ezyHXl6RzUWEu5ac6N6ZiyDs2l4UiK0";
  };

  installPhase = ''
    cp -rf $src/config /home/panickk/.config
  '';
}
