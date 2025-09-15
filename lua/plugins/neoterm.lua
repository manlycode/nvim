return {
  {
    'kassio/neoterm',
    config = function()
      vim.cmd([[
        let g:neoterm_autoscroll = '1'
        let g:neoterm_size = '10'
        let g:neoterm_default_mod = 'aboveleft'
      ]])
    end
  }
}
