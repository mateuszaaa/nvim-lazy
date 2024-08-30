return {
  { "ironhouzi/starlite-nvim" },
  -- { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "tpope/vim-fugitive",
  },
  {
    "https://gitlab.com/itaranto/plantuml.nvim",
    tag = "*",
    config = function()
      require("plantuml").setup({
        renderer = {
          type = "image",
          options = {
            prog = "feh",
            dark_mode = false,
            format = nil, -- Allowed values: nil, 'png', 'svg'.
          },
        },
        render_on_write = true,
      })
    end,
  },
  {
    "vincent178/nvim-github-linker",
    config = function()
      require("nvim-github-linker").setup({
        default_remote = "http",
      })
    end,
  },
  -- {
  --   "tpope/vim-obsession",
  --   enabled = true,
  -- },
  {
    "folke/flash",
    enabled = false,
  },
  -- {
  --   "echasnovski/mini.pairs",
  --   enabled = false,
  -- },
  -- {
  --   "echasnovski/mini.surround",
  --   enabled = false,
  -- },
  -- {
  --   "sindrets/diffview.nvim",
  -- },
  -- {
  --   "folke/noice.nvim",
  --   enabled = true,
  --   opts = {
  --     notify = {
  --       view = "mini",
  --     },
  --     messages = {
  --       view = "mini",
  --     },
  --   },
  -- },
  {
    "mrcjkb/rustaceanvim",
    enabled = true,
    version = "^4", -- Recommended
    ft = { "rust" },
    keys = {
      { "<leader>rc", "<cmd>RustLsp flyCheck<cr>", desc = "flycheck" },
      { "<leader>rs", "<cmd>RustAnalyzer start<cr>", desc = "LspStart" },
      { "<leader>rR", "<cmd>RustAnalyzer restart<cr>", desc = "LspRestart" },
      { "<leader>rS", "<cmd>RustAnalyzer stop<cr>", desc = "LspStop" },
      { "<leader>rr", "<cmd>RustLsp runnables<cr>", desc = "Rust runables" },
      { "<leader>rt", "<cmd>RustLsp testables<cr>", desc = "Rust tests" },
      { "<leader>rd", "<cmd>RustLsp debuggables<cr>", desc = "Rust debuggables" },
    },
  },
  -- -- {
  -- --   "williamboman/mason.nvim",
  -- --   opts = {
  -- --     ensure_installed = {
  -- --       "stylua",
  -- --       "shellcheck",
  -- --       "shfmt",
  -- --       "flake8",
  -- --       "codelldb",
  -- --     },
  -- --   },
  -- -- },
  -- -- {
  -- { "tanvirtin/monokai.nvim" },
  -- -- {
  -- --   "llllvvuu/neotest-foundry",
  -- -- },
  -- {
  --   "pwntester/octo.nvim",
  --   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   config = function()
  --     require("octo").setup()
  --   end,
  -- },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   config = function()
  --     require("telescope").setup({
  --       pickers = {
  --         colorscheme = {
  --           enable_preview = true,
  --         },
  --       },
  --     })
  --   end,
  -- },
  -- {
  --   "hiphish/rainbow-delimiters.nvim",
  --   config = function()
  --     require("rainbow-delimiters.setup").setup({
  --       -- strategy = {
  --       --   [""] = require("rainbow_delimiters").strategy["global"],
  --       --   vim = require("rainbow_delimiters").strategy["local"],
  --       -- },
  --       query = {
  --         [""] = "rainbow-delimiters",
  --         lua = "rainbow-blocks",
  --       },
  --       priority = {
  --         [""] = 110,
  --         lua = 210,
  --       },
  --       highlight = {
  --         "RainbowDelimiterRed",
  --         "RainbowDelimiterYellow",
  --         "RainbowDelimiterBlue",
  --         "RainbowDelimiterOrange",
  --         "RainbowDelimiterGreen",
  --         "RainbowDelimiterViolet",
  --         "RainbowDelimiterCyan",
  --       },
  --     })
  --   end,
  -- },
}
