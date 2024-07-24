{
    programs.nixvim.plugins.lsp = {
      enable = true;
      servers = {
        # C# support
        csharp-ls.enable = true;
        
        # ZIG support
        zls.enable = true;

        nixd.enable = true;
      };
    };
}
