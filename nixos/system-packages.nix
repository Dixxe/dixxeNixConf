{ inputs, pkgs, ...}: {

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        inputs.envycontrol.packages.x86_64-linux.default
    ];

}