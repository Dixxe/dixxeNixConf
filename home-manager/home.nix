{

  imports = [
    ./modules/bundle.nix
    ./package-groups/utils.nix
    ./your-packages.nix
  ];

  home = {
    username = "dixxe";
    homeDirectory = "/home/dixxe";
    stateVersion = "24.05";
  };

}