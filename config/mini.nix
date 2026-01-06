{ lib, ... }: {
  plugins.mini = {
    enable = true;
    autoLoad = true;
    modules = {
      ai = {
        enable = true;
        settings.custom_textobjects = {
          B = (lib.nixvim.mkRaw ''require("mini.extra").gen_ai_spec.buffer()'');
          D = (lib.nixvim.mkRaw
            ''require("mini.extra").gen_ai_spec.diagnostic()'');
          F = (lib.nixvim.mkRaw ''
            require("mini.ai").gen_spec.treesitter({ a = '@function.outer', i = '@function.inner'})'');
        };
        search_method = "cover";
      };

      align = { enable = true; };
      bracketed = { enable = true; };
      bufremove = { enable = true; };
      clue = {
        enable = true;
        clues = [
          (lib.nixvim.mkRaw
            "\n              {\n                {mode = 'n', keys = '<Leader>b', desc = '+Buffer'},\n                {mode = 'n', keys = '<Leader>e', desc = '+Explore/Edit'},\n                {mode = 'n', keys = '<Leader>f', desc = '+Find'},\n                {mode = 'n', keys = '<Leader>g', desc = '+Git'},\n                {mode = 'n', keys = '<Leader>l', desc = '+Language'},\n                {mode = 'n', keys = '<Leader>o', desc = '+Other'},\n                {mode = 'n', keys = '<Leader>s', desc = '+Session'},\n                {mode = 'n', keys = '<Leader>t', desc = '+Terminal'},\n                {mode = 'n', keys = '<Leader>v', desc = '+Visits'},\n\n                {mode = 'x', keys = '<Leader>g', desc = '+Git'},\n                {mode = 'x', keys = '<Leader>l', desc = '+Language'},\n              }\n              ")
          (lib.nixvim.mkRaw
            ''require("mini.clue").gen_clues.builtin_completion()'')
          (lib.nixvim.mkRaw ''require("mini.clue").gen_clues.g()'')
          (lib.nixvim.mkRaw ''require("mini.clue").gen_clues.marks()'')
          (lib.nixvim.mkRaw ''require("mini.clue").gen_clues.registers()'')
          (lib.nixvim.mkRaw ''require("mini.clue").gen_clues.windows()'')
          (lib.nixvim.mkRaw ''require("mini.clue").gen_clues.z()'')
        ];
        triggers = [
          {
            keys = "g";
            mode = "n";
          }
          {
            keys = "g";
            mode = "x";
          }
          {
            keys = "'";
            mode = "n";
          }
          {
            keys = "`";
            mode = "n";
          }
          {
            keys = "'";
            mode = "x";
          }
          {
            keys = "`";
            mode = "x";
          }
          {
            keys = ''"'';
            mode = "n";
          }
          {
            keys = ''"'';
            mode = "x";
          }
          {
            keys = "z";
            mode = "n";
          }
          {
            keys = "z";
            mode = "x";
          }
          {
            keys = "[";
            mode = "n";
          }
          {
            keys = "[";
            mode = "x";
          }
          {
            keys = "]";
            mode = "n";
          }
          {
            keys = "]";
            mode = "x";
          }
          {
            keys = "\\";
            mode = "n";
          }
          {
            keys = "\\";
            mode = "x";
          }
          {
            keys = "<C-r>";
            mode = "i";
          }
          {
            keys = "<C-r>";
            mode = "c";
          }
          {
            keys = "<C-x>";
            mode = "i";
          }
          {
            keys = "<C-w>";
            mode = "n";
          }
          {
            keys = "<Leader>";
            mode = "n";
          }
          {
            keys = "<Leader>";
            mode = "x";
          }
        ];

      };
      cmdline = { enable = true; };
      colors = { enable = true; };
      comment = { enable = true; };
      completion = {
        enable = true;
        lsp_completion.process_items = lib.nixvim.mkRaw ''
          function(items, base) return require("mini.completion").default_process_items(items, base, { kind_priority = { Text = -1, Snippet = 99}}) end'';
      };
      diff = { enable = true; };
      extra = { enable = true; };
      files = { enable = true; };
      git = { enable = true; };
      hipatterns = { enable = true; };
      icons = { enable = true; };
      indentscope = { enable = true; };
      jump = { enable = true; };
      jump2d = { enable = true; };
      keymap = { enable = true; };
      map = { enable = true; };
      misc = { enable = true; };
      move = { enable = true; };
      notify = { enable = true; };
      operators = { enable = true; };
      pick = { enable = true; };
      sessions = { enable = true; };
      snippets = { enable = true; };
      splitjoin = { enable = true; };
      starter = { enable = true; };
      statusline = { enable = true; };
      surround = { enable = true; };
      tabline = { enable = true; };
      trailspace = { enable = true; };
      visits = { enable = true; };
    };
  };
}
