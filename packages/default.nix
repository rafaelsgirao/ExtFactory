{pkgs, ...}:
rec {
    localCDN = pkgs.callPackage ./localCDN {};
}

