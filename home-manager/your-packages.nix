{ pkgs, ... }:

{
    imports = 
    [
        ./modules/package-groups/utils.nix
    ];

    home.packages = [
        # Hyprland stuff
        pkgs.lxqt.lxqt-policykit
        pkgs.wofi
       
        pkgs.alacritty
        pkgs.grimblast

        # Personal love
        pkgs.xfce.thunar
        pkgs.xfce.thunar-archive-plugin
        
        pkgs.vscodium

        # Social stuff
        pkgs.telegram-desktop
        pkgs.element-desktop
        pkgs.vesktop
        pkgs.arrpc

        pkgs.firefox
        pkgs.qbittorrent
        
        # Minecraft stuff
        pkgs.prismlauncher

    ];
}
