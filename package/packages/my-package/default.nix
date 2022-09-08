{ lib, writeScriptBin, ... }:

writeScriptBin
  "my-package"
  ''
    echo Hello from my-package!
  ''
