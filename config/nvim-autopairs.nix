{
  plugins.nvim-autopairs = {
    enable = true;
    luaConfig.post = ''
      do
        local autopairs = require('nvim-autopairs')
        local rule = require('nvim-autopairs.rule')
        autopairs.add_rule(
          rule([[\(]], [[\)]], {"plaintex", "latex"})
        )
        autopairs.add_rule(
          rule([[\[]], [=[\]]=], {"plaintex", "latex"})
        )
        autopairs.add_rule(
          rule('"""', '"""', "python")
        )
      end
    '';
  };
}
