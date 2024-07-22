{
  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    colorschemes.gruvbox.enable = true;
    
  };
  
  imports = [
    ./plugins-bundle.nix 
  ]; 
}
