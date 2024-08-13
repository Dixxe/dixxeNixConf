{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        userEmail = "dixxe.mail@proton.me"; # Hello there :D.
        userName = "Dixxe";
        extraConfig = {
            credential.helper = [
                "cache --timeout 21600"
                "oauth"
            ]; 
            
        };
    };

    home.packages = with pkgs; [ # Pretty wonky, but idk
        git-credential-oauth     # how to make it better
    ];
}
