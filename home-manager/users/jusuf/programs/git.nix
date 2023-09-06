{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Jusuf";
    userEmail = "jusuf.h@gjirafa.com";
    diff-so-fancy.enable = true;
    extraConfig = {
      credential.helper = "${
          pkgs.git.override { withLibsecret = true; }
        }/bin/git-credential-libsecret";
    };
  };
}
