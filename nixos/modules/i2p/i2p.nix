{

    imports = [
        ./outTunnels.nix
        ./protocols.nix
    ];

    services.i2pd = {
        enable = true;

        bandwidth = 912; # change to your ethernet speed.
        port = XXXXX;    # add your OWN port!! AND DONT SHARE IT!!
        
        upnp.enable = true;
        upnp.name = "onion";

            
    };
}
