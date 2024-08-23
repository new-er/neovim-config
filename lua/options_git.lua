-- git --
local function git_commit()
  local message = vim.fn.input("message: ", "")
  local command = string.format(':!git commit -m "%s"', message)
  vim.cmd(command)
end

vim.keymap.set("n", "<leader>ga.", ":!git add .<CR>", { desc = "[.]" })
vim.keymap.set("n", "<leader>gc", function()
  git_commit()
end, { desc = "[c]ommit" })
vim.keymap.set("n", "<leader>gps", ":!git push<CR>", { desc = "[p]u[s]h" })
vim.keymap.set("n", "<leader>gpl", ":!git pull<CR>", { desc = "[p]u[l]l" })

vim.keymap.set("n", "<leader>gacp", function()
  vim.cmd ":!git add ."
  git_commit()
  vim.cmd ":!git push"
end, { desc = ".. and [p]ush" })
