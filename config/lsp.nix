{ lib, ... }: {
  # Common configurations
  plugins.lspconfig.enable = true;
  # Rust
  plugins.rustaceanvim.enable = true;
  # Grammar
  plugins.ltex-extra.enable = true;

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
      ltex = {
        enable = true;
        config = { config.load-langs = [ "en-US" "it" ]; };
      };
      # Python
      ty.enable = true;
      ruff.enable = true;
      pylsp.enable = true;
      jedi_language_server.enable = true;
    };
  };
}
