{ pkgs, ... }: {
  plugins.treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;
    folding.enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      lua
      nix
      toml
      xml
      markdown
      make
      c
      cpp
      rust
      python
    ];
    settings = {
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<M-o>";
          node_incremental = "<M-o>";
          scope_incremental = "<M-p>";
          node_decremental = "<M-i>";
        };
      };
    };
  };
}
