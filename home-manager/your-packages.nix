{ pkgs, ... }:

{
    imports = 
    [
        ./modules/package-groups/utils.nix
    ];

    home.packages = with pkgs; [
        # Hyprland stuff
        lxqt.lxqt-policykit
        wofi
       
        alacritty
        grimblast

        # Personal love
        xfce.thunar
        xfce.thunar-archive-plugin

        # Social stuff
        telegram-desktop
        element-desktop
        vesktop
        arrpc

        firefox
        qbittorrent
        
        # Minecraft stuff
        prismlauncher

    ];
}
