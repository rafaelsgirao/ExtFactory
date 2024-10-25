{ lib, fetchFromGitHub, buildNpmPackage, nodejs_18, ... }:
buildNpmPackage rec {
  pname = "DarkReader";
  version = "4.9.95";
  src = fetchFromGitHub {
    owner = "darkreader";
    repo = "darkreader";
    rev = "v${version}";
    hash = "sha256-L8SA4Pf1NL6uHtJg3JPD3vpKx/opQ8dspI2hUfhXy38=";
    # fetchSubmodules = true;
  };

  meta = with lib; {
    description = "Dark Reader Chrome and Firefox extension";
    license = licenses.mit;
    # maintainers = 
    homepage = "TODO";
  };

  # nativeBuildInputs = [];
  # propagatedBuildInputs = [];
    npmPackFlags = [ "--ignore-scripts" ];
      npmFlags = [ 
      "--ignore-scripts"
      "--legacy-peer-deps"
      "--loglevel=verbose" ];


nodejs = nodejs_18;
# dontNpmInstall = true;
# dontNpmBuild = true;

# patches = [ ./chromedriver.patch ];

  # postPatch = ''
  #   cp ${./package-lock.json} ./package-lock.json
  # '';


  npmDepsHash = "sha256-e41PXGgoQkVSHQj6kElqXPhzc6irnr09ltBAPmcUjik=";

  buildPhase =  ''
    # set -x

    npm ci
    # npm run build
    npm run release

    mkdir dist
    # zip -qq -r ./builds/ChromeExtension.zip ./dist
    # zip -qq -r ./builds/FirefoxExtension.zip ./dist


  '';

  installPhase = ''
    mkdir $out
    cp -R dist/* $out/
    # mkdir $out
    # ls -lha dist/build
    # cp dist/build/uBlock0_1.60.0.chromium.zip $out/
    # cp dist/build/uBlock0_1.60.0.firefox.xpi $out/
    # cp dist/build/uBlock0_1.60.0.thunderbird.xpi $out/
  '';

}

