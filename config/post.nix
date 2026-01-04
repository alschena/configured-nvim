{
  extraConfigLuaPost = ''
    require('mini.keymap').map_multistep('i', '<Tab>', { 'pmenu_next' })
    require('mini.keymap').map_multistep('i', '<S-Tab>', { 'pmenu_prev' })
    require('mini.keymap').map_multistep('i', '<CR>', { 'pmenu_accept', 'minipairs_cr' })
    require('mini.keymap').map_multistep('i', '<BS>', { 'minipairs_bs' })
  '';
}
