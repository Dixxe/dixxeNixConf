{ ... }:

{
	services.xserver.enable = true;
	
    services = {
		libinput.enable = true;
		displayManager.gdm.enable = true;
		desktopManager = {
			gnome.enable = true;
		};
		displayManager.defaultSession = "gnome";
	};
}