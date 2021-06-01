{ ... }:

{
  home = {
    file = {
      nixConf = {
        target = ".config/nix/nix.conf";
        text = ''
          experimental-features = nix-command flakes
          keep-outputs = true
          keep-derivations = true
          substituters = https://mirror.sjtu.edu.cn/nix-channels/store https://cache.nixos.org
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
