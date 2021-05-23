{ config, pkgs, ... }:

{
  programs = {
    fzf = {
      enable = true;
      # enableBashIntegration = true;
      # enableZshIntegration = true;
      defaultOptions = [
        "--color=bg+:24"
      ];
    };
  };
}
