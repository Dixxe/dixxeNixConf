{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        userEmail = "dixxe.mail@proton.me"; # Hello there :D.
        userName = "Dixxe";
        extraConfig = {
            credential.helper = "oauth";
        };
    };

    home.packages = with pkgs; [ # Pretty wonky, but idk
        git-credential-oauth     # how to make it better
    ];
}
