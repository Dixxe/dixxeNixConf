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
        pkgs.nautilus-open-any-terminal
        pkgs.gvfs
        
        pkgs.vscodium

        # Social stuff
        pkgs.telegram-desktop
        pkgs.vesktop
        pkgs.arrpc

        pkgs.firefox
        
        # Minecraft stuff
        pkgs.prismlauncher

    ];
}
