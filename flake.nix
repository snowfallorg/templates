{
  description = "Snowfall Templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

    snowfall-lib = {
      url = "github:snowfallorg/lib?ref=v3.0.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    inputs.snowfall-lib.mkFlake {
      inherit inputs;
      src = ./.;

      alias.templates.default = "empty";

      templates = rec {
        empty = {
          description = "A Nix Flake using snowfall-lib";
        };

        system = {
          description = "A Nix flake with a NixOS system and modules ready to modify.";
        };

        package = {
          description = "A Nix Flake that exports packages and an overlay.";
        };

        module = {
          description = "A Nix Flake that exports NixOS modules.";
        };

        lib = {
          description = "A Nix Flake that exports a custom lib.";
        };

        home = {
          description = "A Nix Flake that exports home manager.";
        };
      };
    };
}
