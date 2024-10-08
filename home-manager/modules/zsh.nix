{ config, ... }:

{
    programs.zsh = {
	enable = true;
	enableCompletion = true;
	autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

	history = {
		size = 100;
		path = "${config.xdg.dataHome}/zsh/history";
	};

    oh-my-zsh = {
        enable = true;
        plugins = [ "git" "sudo" ];
        theme = "fox";
    };
    };
}
