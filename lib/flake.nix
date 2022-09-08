{
  description = "My Nix library";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-22.05";
    unstable.url = "github:nixos/nixpkgs";

    snowfall = {
      url = "github:snowfallorg/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    inputs.snowfall.mkFlake {
      inherit inputs;

      src = ./.;
    };
}
