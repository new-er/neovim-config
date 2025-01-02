local function nvimTreeOnAttach(bufnr)
  local api = require("nvim-tree.api")

  api.config.mappings.default_on_attach(bufnr)

  -- delete keymaps which collide with vim-tmux-navigator
  --vim.keymap.del('n', '<C-h>', { buffer = bufnr })
  --vim.keymap.del('n', '<C-j>', { buffer = bufnr })
  vim.keymap.del('n', '<C-k>', { buffer = bufnr })
  --vim.keymap.del('n', '<C-l>', { buffer = bufnr })
end
require('nvim-tree').setup({ view = { relativenumber = true, number = true, }, update_focused_file = { enable = true, }, on_attach = nvimTreeOnAttach })
