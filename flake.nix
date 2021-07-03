{
  description = "nix-on-droid configuration";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/release-21.05";
    };

    nix-on-droid = {
      url = "github:t184256/nix-on-droid/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nix-on-droid, ... }: {
    nix-on-droid = (nix-on-droid.lib.aarch64-linux.nix-on-droid {
      config = ./nix-on-droid.nix;
    }).activationPackage;
  };
}
