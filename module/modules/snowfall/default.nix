{
  lib,
  config,
  ...
}: let
  cfg = config.snowfallorg.example;
in {
  options.snowfallorg.example = {
    enable = lib.mkEnableOption "Snowfall Example";
  };

  config = lib.mkIf cfg.enable {
    environment.variables = {
      SNOWFALLORG_EXAMPLE = "enabled";
    };
  };
}
