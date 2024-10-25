{ pkgs, ... }:
rec {
  darkreader = pkgs.callPackage ./darkreader { };
  LocalCDN = pkgs.callPackage ./LocalCDN { };
  uBlockOrigin = pkgs.callPackage ./uBlockOrigin { };
  SponsorBlock = pkgs.callPackage ./SponsorBlock { };
}
