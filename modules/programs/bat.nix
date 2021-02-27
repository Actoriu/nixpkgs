{ config, pkgs, ... }:

{
  programs = {
    bat = {
      enable = true;
      config = {
        theme = "OneHalfDark";
        map-syntax = "h:cpp";
      };
    };
  };
}
