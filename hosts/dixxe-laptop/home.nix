{ lib, config, pkgs, ... }:

let
  # additional modules, yeah, pretty dull. I look for solution.
  waybarConfig = import ../../modules/home-manager/waybar.nix {inherit lib config pkgs; };
  hyprConfig = import ../../modules/home-manager/hypr.nix {inherit lib config pkgs; };
  utilsPackages = import ../../modules/home-manager/package-groups/utils.nix {inherit pkgs; };
  defaultGTK = import ../../modules/home-manager/defaultGtk.nix {inherit pkgs; };
in

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "dixxe";
  home.homeDirectory = "/home/dixxe";
  
  imports = [ waybarConfig hyprConfig utilsPackages defaultGTK];

  home.stateVersion = "24.05"; # Please read the comment before changing.
  
  nixpkgs.config.allowUnfree = true;

  home.packages = [
    pkgs.vscodium

    pkgs.telegram-desktop
    pkgs.vesktop
    pkgs.arrpc

    pkgs.firefox
    pkgs.git-credential-oauth
    
    pkgs.grimblast


  ];

  programs.git = {
    enable = true;
    userEmail = "dixxe.mail@proton.me"; # Hello there :D.
    userName = "Dixxe";
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };


  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
