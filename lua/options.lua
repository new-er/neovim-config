require "nvchad.options"

require('options_editor')
require('options_nvim_tree')
require('options_git')
require('options_debugger')
require('options_copilot')
--if vim.fn.has('win32') then
  --  require('options_powershell')
--end
require('options_tabstop')
