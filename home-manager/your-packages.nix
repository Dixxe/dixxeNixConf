{ pkgs, ... }:

{
    home.packages = [
        # Hyprland stuff
        pkgs.lxqt.lxqt-policykit
        pkgs.wofi
        pkgs.foot
        pkgs.grimblast

        # Personal love
        pkgs.nautilus
        pkgs.gvfs
        
        pkgs.vscodium

        # Social stuff
        pkgs.telegram-desktop
        pkgs.vesktop
        pkgs.arrpc

        pkgs.firefox

    ];
}
