{ config, pkgs, ... }:

{
  programs = {
    z-lua = {
      enable = true;
      enableAliases = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };
}
