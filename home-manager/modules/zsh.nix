{config, ...}:

{
    programs.zsh = {
	enable = true;
	enableCompletion = true;
	autosuggestions.enable = true;
	syntaxHighlighting.enable = true;

	history = {
		size = 100;
		path = "${config.xdg.dataHome}/zsh/history";
	};
    };
}
