{
  extraFiles = {
    "ftplugin/rust.lua" = {
      enable = true;
      text = ''
        vim.keymap.set(
          "n",
          "<Leader>lh",
          function() vim.cmd.RustLsp({'hover', 'actions'}) end,
          { silent = true, buffer = vim.api.nvim_get_current_buf(), desc = "Hover (rust-specific)" }
        )
        vim.keymap.set(
          "n",
          "<Leader>la",
          function() vim.cmd.RustLsp('codeAction') end,
          { silent = true, buffer = vim.api.nvim_get_current_buf(), desc = "Actions (rust-specific)" }
        )
      '';
    };
  };
}
