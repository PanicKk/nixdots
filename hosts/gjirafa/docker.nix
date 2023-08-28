{pkgs, ...}: {
  virtualisation.docker.enable = true;
  users.extraGroups.docker.members = ["jusuf"];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
