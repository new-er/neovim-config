-- git --
local function git_commit()
  local message = vim.fn.input("message: ", "")
  local command = string.format(':!git commit -m "%s"', message)
  vim.cmd(command)
end

local map = vim.keymap.set

map("n", "<leader>ga.", ":!git add .<CR>", { desc = "[.]" })
map("n", "<leader>gc", function()
  git_commit()
end, { desc = "[c]ommit" })
map("n", "<leader>gps", ":!git push<CR>", { desc = "[p]u[s]h" })
map("n", "<leader>gpl", ":!git pull<CR>", { desc = "[p]u[l]l" })

map("n", "<leader>gacp", function()
  vim.cmd ":!git add ."
  git_commit()
  vim.cmd ":!git push"
end, { desc = ".. and [p]ush" })
