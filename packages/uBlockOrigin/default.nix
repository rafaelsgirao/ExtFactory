{ lib, fetchgit, fetchFromGitHub, python3, stdenv, zip, ... }:
let
    uAssets-main = fetchFromGitHub {
        owner = "uBlockOrigin";
        repo = "uAssets";
        rev = "63bd225a8a7258bff5002b29696e6c038bb99969";
        hash = "sha256-4O/xdW1TSqjUrF8RwO16M1bvxQ4TAIxo8/xYbYa2Er8=";
    };
    uAssets-prod = fetchFromGitHub {
        owner = "uBlockOrigin";
        repo = "uAssets";
        rev = "97daaf58481b4e82c8fd17b9702749b9db1c1afa";
        hash = "sha256-hAFbwA5Ur3Xw9B9zTe5QIVry0LAb60UH3sN5dty7uec=";
    };
in
stdenv.mkDerivation rec {
  pname = "uBlockOrigin";
  version = "1.60.0";
  src = fetchFromGitHub {
    owner = "gorhill";
    repo = "uBlock";
    rev = "${version}";
    hash = "sha256-giYflla1RfxiZCfHH3KRW2aRF5UJgTwBNnILs6k+uis=";
  };

  meta = with lib; {
    description = "uBlock Origin - An efficient blocker for Chromium and Firefox. Fast and lean.";
    license = licenses.gpl3;
    # maintainers = 
    homepage = "TODO";
  };

  nativeBuildInputs = [ python3 zip ];
  buildPhase =  ''
    # set -x
    # mkdir $out

    # tools/pull-assets.sh, nixified
    mkdir -p dist/build/uAssets
    cp -R ${uAssets-main} dist/build/uAssets/main
    cp -R ${uAssets-prod} dist/build/uAssets/prod
    
    bash tools/make-chromium.sh ${version}
    bash tools/make-firefox.sh ${version}
    bash tools/make-thunderbird.sh ${version}

  '';

  installPhase = ''
    mkdir $out
    ls -lha dist/build
    cp dist/build/uBlock0_1.60.0.chromium.zip $out/
    cp dist/build/uBlock0_1.60.0.firefox.xpi $out/
    cp dist/build/uBlock0_1.60.0.thunderbird.xpi $out/
  '';

  # installPhase = ''
  #   mkdir $out
  #   cp -R dist/. $out/
  #
  #   mkdir $out/bin
  #   mv $out/drawj2d $out/bin/
  # '';

  # buildPhase = "ant";
}

# runCommand "uBlockOrigin"
# rec {
#   pname = "uBlockOrigin";
#   version = "1.60.0";
#   src = fetchFromGitHub {
#     owner = "gorhill";
#     repo = "uBlock";
#     rev = "${version}";
#     hash = "sha256-giYflla1RfxiZCfHH3KRW2aRF5UJgTwBNnILs6k+uis=";
#   };
#
#   meta = with lib; {
#     description = "uBlock Origin - An efficient blocker for Chromium and Firefox. Fast and lean.";
#     license = licenses.gpl3;
#     # maintainers = 
#     homepage = "TODO";
#   };
# }
# ''
#     set -x
#     mkdir $out
#
#     # TMPDIR=$(mktemp -d)
#     echo $TMPDIR
#     ls $TMPDIR -lhaa
#     cp -R $src/. $TMPDIR/
#     cd $TMPDIR
#
#     # tools/pull-assets.sh, nixified
#     mkdir -p $TMPDIR/dist/build/uAssets
#     cp -R ${uAssets-main} dist/build/uAssets/main
#     cp -R ${uAssets-prod} dist/build/uAssets/prod
#
#     bash tools/make-chromium.sh
#
#
#
#         
#     cp -R $src/* $out
#   ''
#
