{ ... }:

{
  programs = {
    home-manager = {
      enable = true;
    };
  };

  home = {
    file = {
      nixConf = {
        target = ".config/nix/nix.conf";
        text = ''
          experimental-features = nix-command flakes
          substituters = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store https://cache.nixos.org/
          keep-outputs = true
          keep-derivations = true
        '';
      };
    };
    stateVersion = "20.09";
  };

  # Use the same overlays as the system packages
  # nixpkgs = {
  #   overlays = config.nixpkgs.overlays;
  # };

}
