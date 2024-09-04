local api = require "nvim-tree.api"
local Event = api.events.Event
local currentSize = 30
api.events.subscribe(Event.Resize, function(size)
  currentSize = size
end)
local util = require "lspconfig.util"

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  --debugger
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      require("dapui").setup()
      local dap, dapui, nvimTree = require "dap", require "dapui", require "nvim-tree.view"

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
        vim.cmd(":NvimTreeResize " .. currentSize)
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
        vim.cmd(":NvimTreeResize " .. currentSize)
      end
    end,
  },
  -- debugger: GO
  {
    "leoluz/nvim-dap-go",
    ft = { "go", "gomod", "gowork", "gotmpl" },
    config = function()
      require("dap-go").setup()
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },

  -- github copilot
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      window = {
        layout = "horizontal",
      },

      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        -- config
      }
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
