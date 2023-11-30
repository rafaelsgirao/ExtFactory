{ fetchgit, runCommand,  ... }:

runCommand "localCDN"
rec {
  pname = "LocalCDN";
  version = "2.6.59";
  src = fetchgit {
    url = "https://codeberg.org/nobody/${pname}";
    rev = "v${version}";
    sha256 = "sha256-icJeMIqNcHXH2UQWJ5BGX/rtyllUSzf2QCny7c6+GQg=";
  };
}
''
    mkdir $out
    cp -R $src/* $out
  ''

