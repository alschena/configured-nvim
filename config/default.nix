{
  # Import all your configuration modules here
  imports = [
    ./direnv.nix
    ./formatting.nix
    ./keymaps.nix
    ./language/rust.nix
    ./language/markdown.nix
    ./lsp.nix
    ./mini.nix
    ./nvim-autopairs.nix
    ./options.nix
    ./post.nix
    ./snippet-collection.nix
    ./treesitter.nix
  ];

  viAlias = true;
  waylandSupport = true;
}
