{ pkgs, ...}:

{
    home.packages = [
        pkgs.pavucontrol
        pkgs.loupe
        pkgs.vlc
        pkgs.zerotierone
    ];
}