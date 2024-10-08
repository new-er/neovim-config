vim.keymap.set("i", "<C-M-Right>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

local map = vim.keymap.set

map("n", "<leader>cp", ":Copilot panel<CR>", { desc = "[c]opilot [p]anel", noremap = true })
map("n", "<leader>ccv", ":CopilotChatToggle<CR>", { desc = "[c]opilot [c]hat [v]iew", noremap = true })
map("n", "<leader>ccr", ":CopilotChatReset<CR>", { desc = "[c]opilot [c]hat [r]eset", noremap = true })
map("n", "<leader>cche", ":CopilotChatExplain<CR>", { desc = "[c]opilot [c]hat [h]elp [e]xplain", noremap = true })
map("n", "<leader>cchr", ":CopilotChatReview<CR>", { desc = "[c]opilot [c]hat [h]elp [r]eview", noremap = true })
map("n", "<leader>cchf", ":CopilotChatFix<CR>", { desc = "[c]opilot [c]hat [h]elp [f]ix", noremap = true })
map("n", "<leader>ccho", ":CopilotChatOptimize<CR>", { desc = "[c]opilot [c]hat [h]elp [o]ptmize", noremap = true })
map(
  "n",
  "<leader>cchd",
  ":CopilotChatFixDiagnostic<CR>",
  { desc = "[c]opilot [c]hat [h]elp fix [d]iagnostic issue in file", noremap = true }
)
map("n", "<leader>ccgd", ":CopilotChatDocs<CR>", { desc = "[c]opilot [c]hat [g]enerate [d]ocs", noremap = true })
map("n", "<leader>ccgt", ":CopilotChatTests<CR>", { desc = "[c]opilot [c]hat [g]enerate [t]ests", noremap = true })
map(
  "n",
  "<leader>ccgc",
  ":CopilotChatCommitStaged<CR>",
  { desc = "[c]opilot [c]hat [g]enerate [c]ommit message (staged)", noremap = true }
)
map(
  "n",
  "<leader>ccq",
  ':lua require("CopilotChat").ask(vim.fn.input("Quick Chat: "), { selection = require("CopilotChat.select").buffer })<CR>',
  { desc = "[c]opilot [c]hat [q]uick chat", noremap = true }
)

-- telescope
map("n", "<leader>ccth", function()
  local actions = require "CopilotChat.actions"
  require("CopilotChat.integrations.telescope").pick(actions.help_actions())
end, { desc = "[c]opilot [c]hat [t]elescope [h]elp", noremap = true })
map("n", "<leader>ccta", function()
  local actions = require "CopilotChat.actions"
  require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
end, { desc = "[c]opilot [c]hat [t]elescope [a]ctions", noremap = true })

-- nvim-cmp

