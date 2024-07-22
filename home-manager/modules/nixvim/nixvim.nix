{
  programs.nixvim = {
    enable = true;

    vimAlias = true;

    defaultEditor = true;
    colorschemes.gruvbox.enable = true;
    
  };
  
  imports = [
    ./plugins-bundle.nix 
  ]; 
}
