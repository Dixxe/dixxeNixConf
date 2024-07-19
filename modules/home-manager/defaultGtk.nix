{ pkgs, ... }:

{
    home.packages = [ pkgs.dconf ];

    gtk = {
        enable = true;
        theme = {
            name = "Nordic-darker";
            package = pkgs.nordic;
        };
        iconTheme = {
            name = "Adwaita";
            package = pkgs.adwaita-icon-theme;
        };
    };
}