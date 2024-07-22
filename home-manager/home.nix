{

  imports = [
    ./modules/bundle.nix
    ./your-packages.nix
  ];

  home = {
    
    username = "dixxe";
    homeDirectory = "/home/dixxe";
    stateVersion = "24.05";
  

    keyboard = {
              layout = "us, ru";
              options = "grp:win_space_toggle";
              variant = "qwerty";
          };
  };
}
