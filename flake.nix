{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    git-hooks-nix = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-stable.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        # To import a flake module
        # 1. Add foo to inputs
        # 2. Add foo as a parameter to the outputs function
        # 3. Add here: foo.flakeModule
        inputs.git-hooks-nix.flakeModule
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
      perSystem =
        {
          config,
          pkgs,
          inputs',
          ...
        }:
        rec {
          # Per-system attributes can be defined here. The self' and inputs'
          # module parameters provide easy access to attributes of the same
          # system.

          packages = import ./packages {
            inherit pkgs;
            inherit inputs;
            inherit inputs';
          };

          devShells.default = pkgs.mkShell {
            #Add executable packages to the nix-shell environment.
            packages = with pkgs; [
              prefetch-npm-deps
              nodejs_18
              # nodePackages.pnpm
              node2nix
              packages.crx

            ];

            shellHook = ''
              export DEBUG=1
              ${config.pre-commit.installationScript}
            '';
          };
          pre-commit = {
            check.enable = true;
            settings.hooks = {
              check-merge-conflicts.enable = true;
              treefmt.enable = true;
              nixfmt-rfc-style.enable = true;
              markdownlint.enable = true;
            };
          };
          treefmt.projectRootFile = ./flake.nix;
          treefmt.programs = {
            # denolint.enable = true;
            # CI
            actionlint.enable = true;
            #Markdown
            #mdformat is also broken...?
            # Nix
            #nixfmt in treefmt appears broken for now
            deadnix.enable = true;
            statix.enable = true;
            statix.disabled-lints = [ "repeated_keys" ];
            # Shell
          };
        };
    };
}
