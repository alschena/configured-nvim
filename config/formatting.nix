{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = { lsp_format = "fallback"; };
      default_format_opts.lsp_format = "fallback";
    };
  };
}
