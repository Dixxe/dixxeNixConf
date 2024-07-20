{ pkgs, ... }:

{
    home.packages = [
        plgs.lxqt.lxqt-policykit
        pkgs.wofi
        pkgs.foot
        pkgs.nautilus
        
        pkgs.vscodium

        pkgs.telegram-desktop
        pkgs.vesktop
        pkgs.arrpc

        pkgs.firefox
        pkgs.git-credential-oauth

        pkgs.grimblast


    ];
}
