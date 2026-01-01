{
  # Import all your configuration modules here
  imports = [
    ./direnv.nix
    ./formatting.nix
    ./keymaps.nix
    ./language/rust.nix
    ./lsp.nix
    ./mini.nix
    ./options.nix
    ./post.nix
    ./snippet-collection.nix
    ./treesitter.nix
  ];

  viAlias = true;
  waylandSupport = true;
}
