{ pkgs, ... }:

{
    stylix = {
	enable = true;
	base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-soft.yaml";

    image = ../../wallpaper.png;
    };
}
