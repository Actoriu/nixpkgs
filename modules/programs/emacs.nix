{ pkgs, ... }:

{
  programs = {
    emacs = {
      enable = true;
      package = if pkgs.stdenv.isDarwin then pkgs.emacsMacport else pkgs.emacs;
      # extraPackages = epkgs: with epkgs; [
      #   evil
      #   helm
      #   general
      #   magit
      #   nix-mode
      #   company
      # ];
    };
  };

  home = {
    packages = with pkgs; [
      ccls
      guile
      nodePackages.pyright
      openssh
      ripgrep
      ripgrep-all
      python38
      python38Packages.ipython
      python38Packages.pip
      python38Packages.epc
      translate-shell
    ];
  };

  home = {
    file = {
      ".emacs.d" = {
        source = builtins.fetchGit {
          url = "https://github.com/syl20bnr/spacemacs";
          ref = "develop";
        };
        recursive = true;
      };
    };
  };

  # home = {
  #   file = {
  #     ".spacemacs.d" = {
  #       # source = ./init.el;
  #       source = builtins.fetchGit {
  #         url = "https://github.com/Actoriu/spacemacs.d";
  #         ref = "master";
  #       };
  #       recursive = true;
  #     };
  #   };
  # };

}
