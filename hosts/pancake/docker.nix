{pkgs, ...}: {
  virtualisation.docker.enable = true;
  users.extraGroups.docker.members = ["panickk"];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
