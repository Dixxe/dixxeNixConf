# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, inputs, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/bundle.nix
      ./modules/hardware/nvidia.nix
      ./modules/hardware/battery-threshold.nix
      ./system-packages.nix
    ];

  disabledModules = [
    ./modules/xkb-settings.nix
  ];
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Europe/Moscow";

  system.stateVersion = "24.05"; # Did you read the comment?

}
