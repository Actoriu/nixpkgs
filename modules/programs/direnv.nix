{ pkgs, ... }:

{
  programs = {
    direnv = {
      enable = true;
      enableNixDirenvIntegration = true;
    };
  };

  home = {
    packages = with pkgs; [
      nix-direnv
    ];
  };
}
