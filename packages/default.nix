{ pkgs, ... }:
rec {

  # Meta packages.
  crx = (pkgs.callPackage ./crx { nodejs = pkgs.nodejs_18; }).package;

  # Web extensions.
  chromium-web-store = pkgs.callPackage ./chromium-web-store { };
  darkreader = pkgs.callPackage ./darkreader { nodejs = pkgs.nodejs_18; };
  localcdn = pkgs.callPackage ./localcdn { };
  ublockorigin = pkgs.callPackage ./ublockorigin { };
  sponsorblock = pkgs.callPackage ./sponsorblock { };
}
