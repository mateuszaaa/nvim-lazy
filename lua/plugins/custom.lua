return {
  { "ironhouzi/starlite-nvim" },
  {
    "tpope/vim-fugitive",
  },
  {
    "ruifm/gitlinker.nvim",
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
    keys = {
      {
        "<leader>ul",
        function()
          require("lsp_lines").toggle()
        end,
        desc = "Toggle diagnostic lines",
      },
    },
  },
  {
    "folke/flash",
    enabled = false,
  },
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
  {
    "echasnovski/mini.surround",
    enabled = false,
  },
  {
    "sindrets/diffview.nvim",
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = { style = "night" },
  },
  {
    "folke/noice.nvim",
    enabled = true,
    opts = {
      notify = {
        view = "mini",
      },
      messages = {
        view = "mini",
      },
      routes = {
        {
          filter = {
            event = "notify",
            find = "Request textDocument/inlayHint failed",
          },
          opts = { skip = true },
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      sources = {
        default = { "lsp", "path" },
      },
    },
  },
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
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = false,
              buildScripts = {
                enable = false,
              },
            },
            checkOnSave = false,
            procMacro = { enable = true },
          },
        },
      },
    },
  },
}
