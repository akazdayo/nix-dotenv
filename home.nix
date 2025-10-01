{ config, pkgs, ... }:

{
  home.username = "akazdayo";
  home.homeDirectory = "/home/akazdayo";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
    pkgs.starship
    pkgs.bun
    pkgs.nodejs_22
  ];

  home.file = {
    ".bashrc".source = ./bashrc;
    ".bash_profile".source = ./bash_profile;
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userName = "akazdayo";
      userEmail = "82073147+akazdayo@users.noreply.github.com";
      extraConfig = {
        init = {
          defaultBranch = "main";
        };
      };
    };
  };
}
