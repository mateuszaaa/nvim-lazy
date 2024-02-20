return {
  { "ironhouzi/starlite-nvim" },
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = { animation = require("mini.indentscope").gen_animation.none() },
    },
  },
  {
    "mg979/vim-visual-multi",
  },
  { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "tpope/vim-fugitive" },
  {
    "vincent178/nvim-github-linker",
    config = function()
      require("nvim-github-linker").setup({
        default_remote = "http",
      })
    end,
  },
  {
    "tpope/vim-obsession",
    enabled = true,
  },
  {
    "folke/nvim-notify",
    enabled = false,
  },
  {
    "preservim/vimux",
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
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, "s", desc = "" },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    enabled = true,
    version = "^4", -- Recommended
    ft = { "rust" },
    keys = {
      { "<leader>rc", "<cmd>RustLsp flyCheck<cr>", desc = "Open Cargo" },
      { "<leader>rs", "<cmd>RustAnalyzer start<cr>", desc = "LspStart" },
      { "<leader>rR", "<cmd>RustAnalyzer restart<cr>", desc = "LspRestart" },
      { "<leader>rS", "<cmd>RustAnalyzer stop<cr>", desc = "LspStop" },
      { "<leader>rr", "<cmd>RustLsp runnables<cr>", desc = "Rust runables" },
      { "<leader>rt", "<cmd>RustLsp testables<cr>", desc = "Rust tests" },
      { "<leader>rd", "<cmd>RustLsp debuggables<cr>", desc = "Rust debuggables" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "query",
        "regex",
        "solidity",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "codelldb",
      },
    },
  },
  -- {
  --   "ruifm/gitlinker.nvim",
  --   config = function ()
  --      require('gitlinker').setup()
  --   end,
  --   keys = {
  --     { "<leader>gu", "<cmd>lua require'gitlinker'.get_repo_url()<cr>", desc = "Git line url reference" },
  --     { "<leader>go", "<cmd>lua require'gitlinker'.get_repo_url({action_callback = require'gitlinker.actions'.open_in_browser})<cr>", desc = "Open in browser" },
  --   },
  -- },
  { "tanvirtin/monokai.nvim" },
  -- {
  --   "simrat39/rust-tools.nvim",
  --   enabled = false,
  --   keys = {
  --     { "<leader>rc", "<cmd>RustOpenCargo<cr>", desc = "Open Cargo" },
  --     { "<leader>rs", "<cmd>LspStart<cr>", desc = "LspStart" },
  --     { "<leader>rR", "<cmd>LspRestart<cr>", desc = "LspRestart" },
  --     { "<leader>rS", "<cmd>LspStop<cr>", desc = "LspStop" },
  --     { "<leader>rr", "<cmd>RustRunnables<cr>", desc = "RustRunnables" },
  --     { "<leader>rd", "<cmd>RustDebuggables<cr>", desc = "RustRunnables" },
  --   },
  --   opts = {
  --     -- tools = {
  --     --   executor = require("rust-tools.executors").vimux,
  --     -- },
  --     server = {
  --       autostart = false,
  --     },
  --   },
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       -- Ensure mason installs the server
  --       rust_analyzer = {
  --         settings = {
  --           ["rust-analyzer"] = {
  --             cargo = {
  --               allFeatures = false,
  --               loadOutDirsFromCheck = true,
  --               runBuildScripts = false,
  --             },
  --             -- Add clippy lints for Rust.
  --             checkOnSave = {
  --               enable = true,
  --               allFeatures = false,
  --               command = "check",
  --               extraArgs = {},
  --             },
  --             procMacro = {
  --               enable = true,
  --               ignored = {
  --                 -- ["async-trait"] = { "async_trait" },
  --                 -- ["napi-derive"] = { "napi" },
  --                 -- ["async-recursion"] = { "async_recursion" },
  --               },
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  -- {
  --   "nvim-neotest/neotest",
  --   dependencies = {
  --     "rouge8/neotest-rust",
  --   },
  --   opts = {
  --     require("neotest-rust")({
  --       args = { "--no-capture" },
  --     }),
  --   },
  -- },
  {
    "nvim-neotest/neotest",
    config = function()
      require("neotest").setup({
        adapters = {
          require("rustaceanvim.neotest"),
        },
      })
    end,
  },
}
