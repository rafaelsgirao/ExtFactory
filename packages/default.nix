{pkgs, ...}:
rec {
    localCDN = pkgs.callPackage ./localCDN {};
    uBlockOrigin = pkgs.callPackage ./uBlockOrigin {};
}

