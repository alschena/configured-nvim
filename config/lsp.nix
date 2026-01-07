{ pkgs, lib, ... }: {
  # Common configurations
  plugins.lspconfig.enable = true;
  # Rust
  plugins.rustaceanvim.enable = true;
  # Generic linter (extension to setup special handlers)
  extraPlugins = with pkgs.vimPlugins; [ sonarlint-nvim ];
  extraConfigLua = ''
    require('sonarlint').setup({
      server = {
        cmd = {
          "sonarlint-ls",
          "-stdio"
          },
      },
      filetypes = {"cpp", "python", "dockerfile", "c", "rust"},
      })
  '';
  # Grammar
  plugins.ltex-extra.enable = true;

  lsp = {
    inlayHints = { enable = true; };
    servers = {
      "*" = {
        config.capabilities = lib.nixvim.mkRaw ''
          vim.tbl_deep_extend(
            "force", -- Overwrite on conflicts
            vim.lsp.protocol.make_client_capabilities(), -- All capabilities
            require("mini.completion").get_lsp_capabilities() -- mini.completion capabilities adapter
          )
        '';
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
      # Generic linter (look above for handlers extension)
      sonarlint = {
        enable = true;
        activate = false;
        package = pkgs.sonarlint-ls;
      };
      pylsp.enable = true;
      jedi_language_server.enable = true;
    };
  };
}
