{ lib, pkgs, ... }:

{
    imports = 
    [
        ./modules/package-groups/utils.nix
    ];

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
        element-desktop
        vesktop
        arrpc

        firefox
        qbittorrent
        
        # Minecraft stuff
        prismlauncher
        krita

    ];

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "obsidian"
    ];
}
