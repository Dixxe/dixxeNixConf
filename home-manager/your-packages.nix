{ lib, pkgs, ... }:

{
    home.packages = with pkgs; [
        # Hyprland stuff
        lxqt.lxqt-policykit
        wofi
        
        obsidian
        alacritty
        grimblast

        # Personal love
        xfce.thunar
        xfce.thunar-archive-plugin

        # Social stuff
        telegram-desktop
        hexchat
        vesktop
        arrpc
        
        firefox
        qbittorrent

        # Minecraft stuff
        prismlauncher

        #Random stuff
        krita

    ];

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "obsidian"
    ];
}
