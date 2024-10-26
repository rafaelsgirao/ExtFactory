{ pkgs, ... }:
rec {
  darkreader = pkgs.callPackage ./darkreader { };
  localcdn = pkgs.callPackage ./localcdn { };
  ublockorigin = pkgs.callPackage ./ublockorigin { };
  sponsorblock = pkgs.callPackage ./sponsorblock { };
}
