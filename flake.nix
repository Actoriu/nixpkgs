{
  description = "nix-on-droid configuration";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/master";
    };
    
    nixpkgs-unstable = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };

    nix = {
      url = "github:nixos/nix";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    emacs-overlay = {
      url = "github:nix-community/emacs-overlay";
    };
                                    
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };

    # home-manager = {
    #   url = "github:nix-community/home-manager";
    #   inputs.nixpkgs.follows = "nixpkgs-unstable";
    # };

    nur = {
      url = "github:nix-community/NUR";
      flake = false;
    };

    nix-on-droid = {
      url = "github:t184256/nix-on-droid/master";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = { self, nixpkgs-unstable, nix, nix-on-droid, ... }: {
    nix-on-droid = (nix-on-droid.lib.aarch64-linux.nix-on-droid {
      config = ./nix-on-droid.nix;
    }).activationPackage;
  };
}
