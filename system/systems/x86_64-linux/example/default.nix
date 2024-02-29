{pkgs, ...}: {
  imports = [./hardware.nix];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  users.users.example = {
    isNormalUser = true;
    extraGroups = ["wheel"];
  };

  environment.systemPackages = with pkgs; [
    neovim
    firefox
  ];

  # Configure Home-Manager options from NixOS.
  snowfallorg.user.example.home.config = {};

  system.stateVersion = "23.11";
}
