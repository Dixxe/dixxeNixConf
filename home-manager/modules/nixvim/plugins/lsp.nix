{
    # programs.nixvim.plugins.lsp-lines.enable = true;
    
    programs.nixvim.plugins.lsp = {
      enable = true;
      servers = {
        # Java support
        java-language-server.enable = true;
        
        # Nim support
        nimls.enable = true;
        
        nixd.enable = true;
      };
    };
}
