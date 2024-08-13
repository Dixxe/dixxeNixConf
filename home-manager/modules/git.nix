{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        userEmail = "dixxe.mail@proton.me"; # Hello there :D.
        userName = "Dixxe";
    };

    home.packages = with pkgs; [ # Pretty wonky, but idk
        git-credential-oauth     # how to make it better
    ];
}
