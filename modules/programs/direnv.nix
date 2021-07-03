{ pkgs, ... }:

{
  programs = {
    direnv = {
      enable = true;
      nix-direnv = {
        enable = true;
        enableFlakes = true;
      };
    };
  };

  #home = {
  #  packages = with pkgs; [
  #    nix-direnv
  #  ];
  #};
}
