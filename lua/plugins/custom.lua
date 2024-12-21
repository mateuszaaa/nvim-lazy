return {
  { "ironhouzi/starlite-nvim" },
  {
    "tpope/vim-fugitive",
  },
  {
    "vincent178/nvim-github-linker",
    config = function()
      require("nvim-github-linker").setup({
        default_remote = "http",
      })
    end,
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
  },
  {
    "pwntester/octo.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("octo").setup()
    end,
  },
}
