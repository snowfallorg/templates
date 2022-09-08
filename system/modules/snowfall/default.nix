{ lib, config, ... }:

let
  cfg = config.snowfall.example;
in
{
  options.snowfall.example = {
    enable = lib.mkEnableOption "Snowfall Example";
  };

  config = lib.mkIf cfg.enable {
    environment.variables = {
      SNOWFALL_EXAMPLE = "enabled";
    };
  };
}
