{
  lib,
  fetchFromGitHub,
  runCommand,
  ...
}:

runCommand "chromium-web-store"
  rec {
    pname = "chromium-web-store";
    version = "1.5.4.3";
    src = fetchFromGitHub {
      owner = "NeverDecaf";
      repo = "chromium-web-store";
      rev = "v${version}";
      hash = "sha256-9heDM+5kB2wJGjkO8RSaj43CvArDzIyAuPj92uij6M0=";
    };

    meta = with lib; {
      description = "Allows adding extensions from chrome web store on ungoogled-chromium. Also adds semi-automatic extension updating.";

      license = licenses.mit;
      # maintainers = 
      homepage = "TODO";
    };
  }

  ''
    mkdir $out
    cp -R $src/src/* $out
  ''
