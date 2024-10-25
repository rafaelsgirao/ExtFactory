{
  lib,
  fetchFromGitHub,
  buildNpmPackage,
  nodejs_18,
  ...
}:
buildNpmPackage rec {
  pname = "DarkReader";
  version = "4.9.95";
  src = fetchFromGitHub {
    owner = "darkreader";
    repo = "darkreader";
    rev = "v${version}";
    hash = "sha256-L8SA4Pf1NL6uHtJg3JPD3vpKx/opQ8dspI2hUfhXy38=";
  };

  meta = with lib; {
    description = "Dark Reader Chrome and Firefox extension";
    license = licenses.mit;
    # maintainers = TODO
    homepage = "TODO";
  };

  nodejs = nodejs_18;
  dontNpmInstall = true;

  npmDepsHash = "sha256-e41PXGgoQkVSHQj6kElqXPhzc6irnr09ltBAPmcUjik=";

  installPhase = ''
    mkdir $out
    cp build/release/darkreader-chrome-mv3.zip $out/
    cp build/release/darkreader-chrome.zip $out/
    cp build/release/darkreader-firefox.xpi $out/
    cp build/release/darkreader-thunderbird.xpi $out/

  '';

}
