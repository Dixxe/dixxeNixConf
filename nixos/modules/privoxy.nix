{
    services.privoxy = {
	    enable = true;
	    settings = {
	        forward = [ ".i2p localhost:4444" ".i2p localhost:4445" ];
	    };
    };
}
