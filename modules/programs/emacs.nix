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
      python38
      python38Packages.ipython
      python38Packages.pip
      python38Packages.epc
      ripgrep
      ripgrep-all
      translate-shell
    ];
  };

  home = {
    file = {
      ".emacs.d" = {
        source = pkgs.fetchFromGitHub {
          owner = "syl20bnr";
          repo= "spacemacs";
          rev = "2fd3eb3edbc7c09b825892ce53721120bb999504";
          sha256 = "00jpk6vhz3r2zbnm0xvqrglgd72m59xj6744r3p2canz0w9kkyhg";
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
