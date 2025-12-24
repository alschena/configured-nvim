{
    extraConfigLuaPost =
      "\n      require('mini.keymap').map_multistep('i', '<Tab>', { 'pmenu_next' })\n      require('mini.keymap').map_multistep('i', '<S-Tab>', { 'pmenu_prev' })\n      require('mini.keymap').map_multistep('i', '<CR>', { 'pmenu_accept', 'minipairs_cr' })\n      require('mini.keymap').map_multistep('i', '<BS>', { 'minipairs_bs' })\n    ";
}
