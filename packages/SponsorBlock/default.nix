{ chromedriver, lib, fetchFromGitHub, buildNpmPackage, nodejs_18, ... }:
buildNpmPackage rec {
  pname = "SponsorBlock";
  version = "5.9.5";
  src = fetchFromGitHub {
    owner = "ajayyy";
    repo = "SponsorBlock";
    rev = "${version}";
    hash = "sha256-au0vUA43XxUF+JYza3hRbu1ZoEzsN0Dd/udSGGBH5ws=";
    fetchSubmodules = true;
  };

  meta = with lib; {
    description = "Skip YouTube video sponsors (browser extension)";
    license = licenses.gpl3;
    # maintainers = 
    homepage = "TODO";
  };

  nativeBuildInputs = [ chromedriver ];
  propagatedBuildInputs = [ chromedriver ];
    # npmPackFlags = [ "--ignore-scripts" ];
      npmFlags = [ 
      "--ignore-scripts"
      "--legacy-peer-deps"
      "--loglevel=verbose" ];


nodejs = nodejs_18;
dontNpmInstall = true;
dontNpmBuild = true;

patches = [ ./chromedriver.patch ];

  # npmDepsHash = "sha256-g9TFjaMQPxcrSWjtcDPs+BnzIiDUvAJ9OTxFk5rZCTk=";
  postPatch = ''
    cp ${./package-lock.json} ./package-lock.json
  '';

  buildPhase =  ''
    # set -x

    cat maze-utils/src/version.json
    cp config.json.example config.json

    # npm ci
    # npm run build:chrome
    npm run build:firefox

    mkdir dist
    zip -qq -r ./builds/ChromeExtension.zip ./dist
    zip -qq -r ./builds/FirefoxExtension.zip ./dist


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

  npmDepsHash = "sha256-VNcFmEYiPsQKmauYw4Wce2AEVbD3NqIdgtIUWUiZv7Q=";

}

