{ config, pkgs, ... }:

{
  home.username = "akazdayo";
  home.homeDirectory = "/home/akazdayo";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    starship
    bun
    nodejs_22
    doppler
    gh
    tree
    websocat
    ripgrep
  ];

  home.file = {
    ".bashrc".source = ./bashrc;
    ".bash_profile".source = ./bash_profile;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs = {
    home-manager.enable = true;
    nixvim = {
      enable = true;

      colorschemes.catppuccin.enable = true;
      plugins = {
        lualine.enable = true;
	cord.enable = true;
	nvim-tree.enable = true;
	web-devicons.enable = true;
      };
    };
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
    direnv = {
      enable = true;
      enableBashIntegration = true;
      nix-direnv.enable = true;
    };
  };
}
