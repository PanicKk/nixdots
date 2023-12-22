{pkgs, lib, stdenv, ... }: 

stdenv.mkDerivation rec {
  projectName = "Gjirafa";
  shellName = "dotnet_shell";
  path = "/home/jusuf/.nixdots";
    
  name = "Rider - ${projectName}";
  phases = [ "installPhase" "fixupPhase" ];
   
   desktopFile = pkgs.writeText "rider-gjirafa.desktop" ''
    [Desktop Entry]
    Type=Application
    Name=Rider - ${projectName}
    Exec=nix develop ${path}#${shellName} --command ${pkgs.jetbrains.rider}/bin/rider
    Icon=rider
  '';

  installPhase = ''
    mkdir -p $out/share/applications
    cp $desktopFile $out/share/applications/rider-${projectName}.desktop
  '';
}
