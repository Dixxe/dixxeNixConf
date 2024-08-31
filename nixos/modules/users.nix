{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.dixxe = {
        isNormalUser = true;
        description = "dixxe";
        extraGroups = [ "networkmanager" "wheel" "docker" "vboxusers" ];
    };
}
