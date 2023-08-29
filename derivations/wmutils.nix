{ pkgs, lib, stdenv, fetchFromGitHub, ... }:

stdenv.mkDerivation rec {
  name = "opt";

  src = fetchFromGitHub {
    repo = name;
    owner = "wmutils";
    rev = "";
    sha256 = "I4tmYcE7vLzGpLEMJH4FsEMMxa90xOj3oivMCGTcxKY=";
  };
  
  dontConfigure = true;
  dontBuild = true;
  doCheck = false;

  buildInputs = with pkgs; [ 
    xorg.libxcb.dev 
    cmake 
    xorg.libxcb
    xorg.xcbutil
  ];

  buildPhase = ''
    make
  '';

  installPhase = ''
    make DESTDIR=$out install
    mv -v $out/usr/bin $out
    rm -rvf $out/usr
  '';
}
