{ pkgs, ... }:

{
  programs = {
    emacs = {
      enable = true;
      package = if pkgs.stdenv.isDarwin then pkgs.emacsMacport else pkgs.emacsPgtkGcc;
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
      ripgrep
      guile
      openssh
      python39
      python39Packages.ipython
      python39Packages.pip
      python39Packages.epc
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
