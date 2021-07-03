{
  description = "nix-on-droid configuration";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/release-21.05";
    };

    #emacs = {
    #  url = "github:nix-community/emacs-overlay";
    #};

    #neovim = {
    #  url = "github:nix-community/neovim-nightly-overlay";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};

    #nur = {
    #  url = "github:nix-community/NUR";
    #};

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
