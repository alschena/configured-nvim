{
  keymaps = [
    {
      action = ''<Cmd>exe "put! " . v:register<CR>'';
      key = "[p";
      mode = "n";
      options = { desc = "Paste above"; };
    }
    {
      action = ''<Cmd>exe "put " . v:register<CR>'';
      key = "]p";
      mode = "n";
      options = { desc = "Paste below"; };
    }

    # Buffers
    {
      action = "<Cmd>b#<CR>";
      key = "<Leader>ba";
      mode = "n";
      options = { desc = "Alternate"; };
    }
    {
      action = "<Cmd>lua MiniBufremove.delete()<CR>";
      key = "<Leader>bd";
      mode = "n";
      options = { desc = "Delete"; };
    }
    {
      action = "<Cmd>lua MiniBufremove.delete(0, true)<CR>";
      key = "<Leader>bD";
      mode = "n";
      options = { desc = "Delete!"; };
    }
    {
      action =
        "<Cmd>lua vim.api.nvim_win_set_buf(0, vim.api.nvim_create_buf(true, true))<CR>";
      key = "<Leader>bs";
      mode = "n";
      options = { desc = "Scratch"; };
    }
    {
      action = "<Cmd>lua MiniBufremove.wipeout()<CR>";
      key = "<Leader>bw";
      mode = "n";
      options = { desc = "Wipeout"; };
    }
    {
      action = "<Cmd>lua MiniBufremove.wipeout(0, true)<CR>";
      key = "<Leader>bW";
      mode = "n";
      options = { desc = "Wipeout!"; };
    }

    # Explore/Edit
    {
      action = "<Cmd>lua MiniFiles.open()<CR>";
      key = "<Leader>ed";
      mode = "n";
      options = { desc = "Directory"; };
    }
    {
      action = "<Cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>";
      key = "<Leader>ef";
      mode = "n";
      options = { desc = "File directory"; };
    }
    {
      action = "<Cmd>lua MiniNotify.show_history()<CR>";
      key = "<Leader>en";
      mode = "n";
      options = { desc = "Notifications"; };
    }
    {
      action = ''
        function()
          for _, win_id in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
            if vim.fn.getwininfo(win_id)[1].quickfix == 1 then return vim.cmd('cclose') end
          end
          vim.cmd('copen')
        end'';
      key = "<Leader>eq";
      mode = "n";
      options = { desc = "Quickfix"; };
    }

    # Find
    {
      key = "<Leader>f/";
      mode = "n";
      action = ''<Cmd>Pick history scope="/"<CR>'';
      options = { desc = ''"/" history''; };
    }
    {
      key = "<Leader>f:";
      mode = "n";
      action = ''<Cmd>Pick history scope=":"<CR>'';
      options = { desc = "':' history"; };
    }
    {
      key = "<Leader>fa";
      mode = "n";
      action = ''<Cmd>Pick git_hunks scope="staged"<CR>'';
      options = { desc = "Added hunks (all)"; };
    }
    {
      key = "<Leader>fA";
      mode = "n";
      action = ''<Cmd>Pick git_hunks path="%" scope="staged "<CR>'';
      options = { desc = "Added hunks (buf)"; };
    }
    {
      key = "<Leader>fb";
      mode = "n";
      action = "<Cmd>Pick buffers<CR>";
      options = { desc = "Buffers"; };
    }
    {
      key = "<Leader>fc";
      mode = "n";
      action = "<Cmd>Pick git_commits<CR>";
      options = { desc = "Commits (all)"; };
    }
    {
      key = "<Leader>fC";
      mode = "n";
      action = ''<Cmd>Pick git_commits path="%"<CR>'';
      options = { desc = "Commits (buf)"; };
    }
    {
      key = "<Leader>fd";
      mode = "n";
      action = ''<Cmd>Pick diagnostic scope="all"<CR>'';
      options = { desc = "Diagnostic workspace"; };
    }
    {
      key = "<Leader>fD";
      mode = "n";
      action = ''<Cmd>Pick diagnostic scope="current"<CR>'';
      options = { desc = "Diagnostic buffer"; };
    }
    {
      key = "<Leader>ff";
      mode = "n";
      action = "<Cmd>Pick files<CR>";
      options = { desc = "Files"; };
    }
    {
      key = "<Leader>fg";
      mode = "n";
      action = "<Cmd>Pick grep_live<CR>";
      options = { desc = "Grep live"; };
    }
    {
      key = "<Leader>fG";
      mode = "n";
      action = ''<Cmd>Pick grep pattern="<cword>"<CR>'';
      options = { desc = "Grep current word"; };
    }
    {
      key = "<Leader>fh";
      mode = "n";
      action = "<Cmd>Pick help<CR>";
      options = { desc = "Help tags"; };
    }
    {
      key = "<Leader>fH";
      mode = "n";
      action = "<Cmd>Pick hl_groups<CR>";
      options = { desc = "Highlight groups"; };
    }
    {
      key = "<Leader>fl";
      mode = "n";
      action = ''<Cmd>Pick buf_lines scope="all"<CR>'';
      options = { desc = "Lines (all)"; };
    }
    {
      key = "<Leader>fL";
      mode = "n";
      action = ''<Cmd>Pick buf_lines scope="current"<CR>'';
      options = { desc = "Lines (buf)"; };
    }
    {
      key = "<Leader>fm";
      mode = "n";
      action = "<Cmd>Pick git_hunks<CR>";
      options = { desc = "Modified hunks (all)"; };
    }
    {
      key = "<Leader>fM";
      mode = "n";
      action = ''<Cmd>Pick git_hunks path="%"<CR>'';
      options = { desc = "Modified hunks (buf)"; };
    }
    {
      key = "<Leader>fr";
      mode = "n";
      action = "<Cmd>Pick resume<CR>";
      options = { desc = "Resume"; };
    }
    {
      key = "<Leader>fR";
      mode = "n";
      action = ''<Cmd>Pick lsp scope="references"<CR>'';
      options = { desc = "References (LSP)"; };
    }
    {
      key = "<Leader>fs";
      mode = "n";
      action = ''<Cmd>Pick lsp scope="workspace_symbol_live"<CR>'';
      options = { desc = "Symbols workspace (live)"; };
    }
    {
      key = "<Leader>fS";
      mode = "n";
      action = ''<Cmd>Pick lsp scope="document_symbol"<CR>'';
      options = { desc = "Symbols document"; };
    }
    {
      key = "<Leader>fv";
      mode = "n";
      action = ''<Cmd>Pick visit_paths cwd=""<CR>'';
      options = { desc = "Visit paths (all)"; };
    }
    {
      key = "<Leader>fV";
      mode = "n";
      action = "<Cmd>Pick visit_paths<CR>";
      options = { desc = "Visit paths (cwd)"; };
    }

    # Git
    {
      key = "<Leader>ga";
      mode = "n";
      action = "<Cmd>Git diff --cached<CR>";
      options = { desc = "Added diff"; };
    }
    {
      key = "<Leader>gA";
      mode = "n";
      action = "<Cmd>Git diff --cached -- %<CR>";
      options = { desc = "Added diff buffer"; };
    }
    {
      key = "<Leader>gc";
      mode = "n";
      action = "<Cmd>Git commit<CR>";
      options = { desc = "Commit"; };
    }
    {
      key = "<Leader>gC";
      mode = "n";
      action = "<Cmd>Git commit --amend<CR>";
      options = { desc = "Commit amend"; };
    }
    {
      key = "<Leader>gd";
      mode = "n";
      action = "<Cmd>Git diff<CR>";
      options = { desc = "Diff"; };
    }
    {
      key = "<Leader>gD";
      mode = "n";
      action = "<Cmd>Git diff -- %<CR>";
      options = { desc = "Diff buffer"; };
    }
    {
      key = "<Leader>gl";
      mode = "n";
      action = "<Cmd>Git log --pretty=format:%h %as │ %s --topo-order<CR>";
      options = { desc = "Log"; };
    }
    {
      key = "<Leader>gL";
      mode = "n";
      action =
        "<Cmd>Git log --pretty=format:%h %as │ %s --topo-order --follow -- %<CR>";
      options = { desc = "Log buffer"; };
    }
    {
      key = "<Leader>go";
      mode = "n";
      action = "<Cmd>lua MiniDiff.toggle_overlay()<CR>";
      options = { desc = "Toggle overlay"; };
    }
    {
      key = "<Leader>gs";
      mode = "n";
      action = "<Cmd>lua MiniGit.show_at_cursor()<CR>";
      options = { desc = "Show at cursor"; };
    }
    {
      key = "<Leader>gs";
      mode = "x";
      action = "<Cmd>lua MiniGit.show_at_cursor()<CR>";
      options = { desc = "Show at selection"; };
    }

    # Language
    {
      key = "<Leader>la";
      mode = "n";
      action = "<Cmd>lua vim.lsp.buf.code_action()<CR>";
      options = { desc = "Actions"; };
    }
    {
      key = "<Leader>ld";
      mode = "n";
      action = "<Cmd>lua vim.diagnostic.open_float()<CR>";
      options = { desc = "Diagnostic popup"; };
    }
    {
      key = "<Leader>lf";
      mode = "n";
      action = ''<Cmd> lua require("conform").format({lsp_fallback=true})<CR>'';
      options = { desc = "Format"; };
    }
    {
      key = "<Leader>li";
      mode = "n";
      action = "<Cmd>lua vim.lsp.buf.implementation()<CR>";
      options = { desc = "Implementation"; };
    }
    {
      key = "<Leader>lh";
      mode = "n";
      action = "<Cmd>lua vim.lsp.buf.hover()<CR>";
      options = { desc = "Hover"; };
    }
    {
      key = "<Leader>lr";
      mode = "n";
      action = "<Cmd>lua vim.lsp.buf.rename()<CR>";
      options = { desc = "Rename"; };
    }
    {
      key = "<Leader>lR";
      mode = "n";
      action = "<Cmd>lua vim.lsp.buf.references()<CR>";
      options = { desc = "References"; };
    }
    {
      key = "<Leader>ls";
      mode = "n";
      action = "<Cmd>lua vim.lsp.buf.definition()<CR>";
      options = { desc = "Source definition"; };
    }
    {
      key = "<Leader>lt";
      mode = "n";
      action = "<Cmd>lua vim.lsp.buf.type_definition()<CR>";
      options = { desc = "Type definition"; };
    }
    {
      key = "<Leader>lf";
      mode = "x";
      action = ''<Cmd> lua require("conform").format({lsp_fallback=true})<CR>'';
      options = { desc = "Format Selection"; };
    }

    # Windows
    {
      key = "<Leader>w";
      mode = "n";
      action = "<C-W>";
      options = { desc = "+Windows"; };
    }

    # Other
    {
      key = "<Leader>or";
      mode = "n";
      action = "<Cmd>lua MiniMisc.resize_window()<CR>";
      options = { desc = "Resize to default width"; };
    }
    {
      key = "<Leader>ot";
      mode = "n";
      action = "<Cmd>lua MiniTrailspace.trim()<CR>";
      options = { desc = "Trim trailspace"; };
    }
    {
      key = "<Leader>oz";
      mode = "n";
      action = "<Cmd>lua MiniMisc.zoom()<CR>";
      options = { desc = "Zoom toggle"; };
    }

    # Session
    {
      key = "<Leader>sd";
      mode = "n";
      action = ''<Cmd>lua MiniSessions.select("delete")<CR>'';
      options = { desc = "Delete"; };
    }
    {
      key = "<Leader>sn";
      mode = "n";
      action =
        ''<Cmd>lua MiniSessions.write(vim.fn.input("Session name: "))<CR>'';
      options = { desc = "New"; };
    }
    {
      key = "<Leader>sr";
      mode = "n";
      action = ''<Cmd>lua MiniSessions.select("read")<CR>'';
      options = { desc = "Read"; };
    }
    {
      key = "<Leader>sw";
      mode = "n";
      action = "<Cmd>lua MiniSessions.write()<CR>";
      options = { desc = "Write current"; };
    }

    # Terminal
    {
      key = "<Leader>tT";
      mode = "n";
      action = "<Cmd>horizontal term<CR>";
      options = { desc = "Terminal (horizontal)"; };
    }
    {
      key = "<Leader>tt";
      mode = "n";
      action = "<Cmd>vertical term<CR>";
      options = { desc = "Terminal (vertical)"; };
    }
    {
      key = "<Esc><Esc><Esc>";
      mode = "t";
      action = "<Cmd>stopinsert<CR>";
      options = { desc = "Exit terminal mode."; };
    }

    # Visits
    {
      key = "<Leader>vc";
      action.__raw = ''
        function()
          MiniExtra.pickers.visit_paths(
            {
              cwd = "",
              filter = 'core',
              sort = MiniVisits.gen_sort.default({ recency_weight = 1}),
            },
            { source = { name = "Core visits (all)" } }
          )
        end'';
      options = { desc = "Core visits (all)"; };
    }
    {
      key = "<Leader>vC";
      action.__raw = ''
        function()
          MiniExtra.pickers.visit_paths(
            {
              cwd = nil,
              filter = 'core',
              sort = MiniVisits.gen_sort.default({ recency_weight = 1}),
            },
            { source = { name = "Core visits (cwd)" } }
          )
        end'';
      options = { desc = "Core visits (cwd)"; };
    }
    {
      key = "<Leader>vv";
      action = ''<Cmd>lua MiniVisits.add_label("core")<CR>'';
      options = { desc = ''Add "core" label''; };
    }
    {
      key = "<Leader>vV";
      action = ''<Cmd>lua MiniVisits.remove_label("core")<CR>'';
      options = { desc = ''Remove "core" label''; };
    }
    {
      key = "<Leader>vl";
      action = "<Cmd>lua MiniVisits.add_label()<CR>";
      options = { desc = "Add label"; };
    }
    {
      key = "<Leader>vL";
      action = "<Cmd>lua MiniVisits.remove_label()<CR>";
      options = { desc = "Remove label"; };
    }
  ];
}
