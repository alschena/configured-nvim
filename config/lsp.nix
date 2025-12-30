{lib, ...}:
{
    plugins.lspconfig.enable = true;
    plugins.rustaceanvim.enable = true;
    lsp = {
      inlayHints = { enable = true; };
      servers = {
        "*" = {
          config.capabilities = lib.nixvim.mkRaw
            ''require("mini.completion").get_lsp_capabilities()'';
        };
        nixd.enable = true;
        clangd.enable = true;
# Grammar
        ltex-ls.enable = true;
# Python
        ty.enable = true;
        ruff.enable = true;
        py-lsp.enable = true;
      };
    };
}
