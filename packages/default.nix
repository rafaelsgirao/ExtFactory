{ pkgs, ... }:
rec {

  # Meta packages.
  crx = (pkgs.callPackage ./crx { nodejs = pkgs.nodejs_18; }).package;

  # Web extensions.
  darkreader = pkgs.callPackage ./darkreader { };
  localcdn = pkgs.callPackage ./localcdn { };
  ublockorigin = pkgs.callPackage ./ublockorigin { };
  sponsorblock = pkgs.callPackage ./sponsorblock { };
}
