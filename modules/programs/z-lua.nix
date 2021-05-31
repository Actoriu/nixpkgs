{ config, pkgs, ... }:

{
  programs = {
    z-lua = {
      enable = true;
      enableAliases = true;
      options = [ "fzf" ];
    };
  };
}
