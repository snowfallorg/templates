{
  lib,
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [
    neovim
    firefox
  ];

  sessionVariables = {
    EDITOR = "nvim";
  };

  shellAliases = {
    vimdiff = "nvim -d";
  };
}
