{
  inputs = {
    nixpkgs.url = "flake:nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    pre-commit-hooks-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-stable.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        # To import a flake module
        # 1. Add foo to inputs
        # 2. Add foo as a parameter to the outputs function
        # 3. Add here: foo.flakeModule
        inputs.pre-commit-hooks-nix.flakeModule
        # inputs.devenv.flakeModule
        inputs.treefmt-nix.flakeModule

      ];
      flake = {
        # Put your original flake attributes here.
      };
      #systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      systems = [
        # systems for which you want to build the `perSystem` attributes
        "x86_64-linux"
        "aarch64-linux"
      ];
      # perSystem = { config, self', inputs', pkgs, system, ... }: {
      perSystem = { config, pkgs, inputs, inputs',  ... }: {
        # Per-system attributes can be defined here. The self' and inputs'
        # module parameters provide easy access to attributes of the same
        # system.

        # packages = rec {
        #   default = ist-discord-bot-env;
        #   ist-discord-bot-env = pkgs.callPackage ./package.nix {  };

        # };
        packages = import ./packages { inherit pkgs; inherit inputs; inherit inputs'; };

        devShells.default = pkgs.mkShell {
          #Add executable packages to the nix-shell environment.
          packages = with pkgs; [
            pkgs.nodejs_18
          ];

          shellHook = ''
            export DEBUG=1
            ${config.pre-commit.installationScript}
          '';
        };
        pre-commit = {
          check.enable = true;
          settings.settings = {
              deadnix.edit = true;
          };
          settings.hooks = {
            actionlint.enable = true;
            # denolint.enable = true;
            deadnix.enable = true;
            statix.enable = true;
            markdownlint.enable = true;
            prettier.enable = true;
          };
        };
        treefmt.projectRootFile = ./flake.nix;
        treefmt.programs = {
          nixpkgs-fmt.enable = true;
          yamlfmt.enable = true;
          shfmt.enable = true;
          mdformat.enable = true;
        };
      };
    };
}

