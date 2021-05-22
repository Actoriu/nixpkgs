{ config, pkgs, ... }:

{
  #nixpkgs= {
  #  overlays = [
  #    (import (builtins.fetchTarball {
  #      url = https://github.com/nix-community/emacs-overlay/archive/master.tar.gz;
  #    }))
  #  ];
  #};

  programs = {
    emacs = {
      enable = true;
      #package = pkgs.emacsPgtkGcc;
      #extraPackages = epkgs: with epkgs; [
      #  evil
      #  helm
      #  general
      #  magit
      #  nix-mode
      #  company
      #];
    };
  };

  home = {
    packages = with pkgs; [
      ccls
      ripgrep
      guile
      openssh
      python39
      python39Packages.ipython
      python39Packages.pip
      python39Packages.epc
    ];
  };

}
