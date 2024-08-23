
local map = vim.keymap.set

vim.keymap.set('n', '<leader>du', ':lua require"dapui".toggle()<CR>', { desc = '[u]i' })
vim.keymap.set('n', '<leader>db', ':lua require"dap".toggle_breakpoint()<CR>', { desc = '[b]reakpoint' })
vim.keymap.set('n', '<leader>drc', ':lua require"dap".continue()<CR>', { desc = '[c]ontinue' })
vim.keymap.set('n', '<leader>drp', ':lua require"dapui".pause()<CR>', { desc = ' [p]ause' })
vim.keymap.set('n', '<leader>dri', ':lua require"dap".step_into()<CR>', { desc = '[i]nto' })
vim.keymap.set('n', '<leader>dro', ':lua require"dap".step_over()<CR>', { desc = '[o]ver' })
vim.keymap.set('n', '<leader>drt', ':lua require"dap".step_out()<CR>', { desc = 'ou[t]' })
vim.keymap.set('n', '<leader>drrc', ':lua require"dap".reverse_continue()<CR>', { desc = '[c]ontinue' })
vim.keymap.set('n', '<leader>drro', ':lua require"dap".step_back()<CR>', { desc = '[o]ver' })
vim.keymap.set('n', '<leader>dtu', ':lua require"dapui".up()<CR>', { desc = '[u]p' })
vim.keymap.set('n', '<leader>dtd', ':lua require"dapui".pause()<CR>', { desc = '[d]own' })
