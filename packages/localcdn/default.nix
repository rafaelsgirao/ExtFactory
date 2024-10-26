{
  lib,
  fetchgit,
  runCommand,
  ...
}:

runCommand "localCDN"
  rec {
    pname = "LocalCDN";
    version = "2.6.74";
    src = fetchgit {
      url = "https://codeberg.org/nobody/${pname}";
      rev = "v${version}";
      sha256 = "sha256-Nk1sHv0uZetErFO3lZF4MGNi3wQuy2CCoSAXXyXv7mY=";
    };

    meta = with lib; {
      description = "An extension that emulates Content Delivery Networks to improve your online privacy.";
      license = licenses.mpl20;
      # maintainers = 
      homepage = "TODO";
    };
  }
  ''
    mkdir $out
    cp -R $src/* $out
  ''
