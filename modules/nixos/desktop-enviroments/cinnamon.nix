{ ... }:

{
	services.xserver.enable = true;
	
    services = {
		libinput.enable = true;
		displayManager.lightdm.enable = true;
		desktopManager = {
			cinnamon.enable = true;
		};
		displayManager.defaultSession = "cinnamon";
	};
}