{ lib, ... }: {
  # Common configurations
  plugins.lspconfig.enable = true;
  # Rust
  plugins.rustaceanvim.enable = true;
  # Grammar
  plugins.ltex-extra = {
    enable = true;
    settings.load-langs = [ "en-US" "it" ];
  };

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
      ltex.enable = true;
      # Python
      ty.enable = true;
      ruff.enable = true;
      py-lsp.enable = true;
    };
  };
}
