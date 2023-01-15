{
  description = "Snowfall Templates";

  outputs = { self }: {
    templates = rec {
      default = empty;

      empty = {
        path = ./empty;
        description = "A Nix Flake using snowfall-lib";
      };

      system = {
        path = ./system;
        description = "A Nix flake with a NixOS system and modules ready to modify.";
      };

      package = {
        path = ./package;
        description = "A Nix Flake that exports packages and an overlay.";
      };

      module = {
        path = ./module;
        description = "A Nix Flake that exports NixOS modules.";
      };

      lib = {
        path = ./lib;
        description = "A Nix Flake that exports a custom lib.";
      };
    };
  };
}
