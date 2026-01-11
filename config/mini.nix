{ lib, ... }: {
  plugins.mini = {
    enable = true;
    autoLoad = true;
    modules = {
      ai = {
        custom_textobjects = {
          B = (lib.nixvim.mkRaw ''require("mini.extra").gen_ai_spec.buffer()'');
          D = (lib.nixvim.mkRaw
            ''require("mini.extra").gen_ai_spec.diagnostic()'');
          F = (lib.nixvim.mkRaw ''
            require("mini.ai").gen_spec.treesitter({ a = '@function.outer', i = '@function.inner'})'');
        };
        search_method = "cover_or_next";
      };

      align = { };
      bracketed = { };
      bufremove = { };
      clue = {
        clues = [
          (lib.nixvim.mkRaw ''
            {
              {mode = 'n', keys = '<Leader>b', desc = '+Buffer'},
              {mode = 'n', keys = '<Leader>e', desc = '+Explore/Edit'},
              {mode = 'n', keys = '<Leader>f', desc = '+Find'},
              {mode = 'n', keys = '<Leader>g', desc = '+Git'},
              {mode = 'n', keys = '<Leader>l', desc = '+Language'},
              {mode = 'n', keys = '<Leader>o', desc = '+Other'},
              {mode = 'n', keys = '<Leader>s', desc = '+Session'},
              {mode = 'n', keys = '<Leader>t', desc = '+Terminal'},
              {mode = 'n', keys = '<Leader>v', desc = '+Visits'},

              {mode = 'x', keys = '<Leader>g', desc = '+Git'},
              {mode = 'x', keys = '<Leader>l', desc = '+Language'},
            }
          '')
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
            keys = ",";
            mode = "n";
          }
          {
            keys = "<Leader>";
            mode = "x";
          }
        ];

      };
      cmdline = { };
      colors = { };
      comment = {
        mappings = {
          comment = ",c";
          comment_line = ",cc";
          comment_visual = ",c";
          textobject = ",c";
        };
      };
      completion = {
        lsp_completion.process_items = lib.nixvim.mkRaw ''
          function(items, base) return require("mini.completion").default_process_items(items, base, { kind_priority = { Text = -1, Snippet = 99}}) end'';
      };
      diff = { };
      extra = { };
      files = { };
      git = { };
      hipatterns = { };
      icons = { };
      indentscope = { };
      jump = { };
      jump2d = { };
      keymap = { };
      map = { };
      misc = { };
      move = { };
      notify = { };
      operators = {
        evaluate = { prefix = ",="; };
        exchange = {
          prefix = ",x";
          reindent_linewise = true;
        };
        multiply = { prefix = ",m"; };
        replace = {
          prefix = ",r";
          reindent_linewise = true;
        };
        sort = { prefix = ",s"; };

      };
      pick = { };
      sessions = { };
      snippets = { };
      splitjoin = { };
      statusline = { };
      surround = {
        n_lines = 50;
        search_method = "cover_or_next";
      };
      tabline = { };
      trailspace = { };
      visits = { };
    };
  };
}
