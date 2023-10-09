return {
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
        'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
            {
                mode = { 'v', 'n' },
                '<Leader>m',
                '<cmd>MCunderCursor<cr>',
                desc = 'Create a selection for selected text or word under the cursor',
            },
        },
  },
  { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "tpope/vim-fugitive" },
  {
    "vincent178/nvim-github-linker",
    config = function()
        require("nvim-github-linker").setup()
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      notify = {
        view = "mini"
      },
      messages = {
        view = "mini"
      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
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
  {
    "simrat39/rust-tools.nvim",
    keys = {
      { "<leader>rs", "<cmd>LspStart<cr>", desc = "LspStart" },
      { "<leader>rR", "<cmd>LspRestart<cr>", desc = "LspRestart" },
      { "<leader>rS", "<cmd>LspStop<cr>", desc = "LspStop" },
      { "<leader>rr", "<cmd>RustRunnables<cr>", desc = "RustRunnables" },
      { "<leader>rd", "<cmd>RustDebuggables<cr>", desc = "RustRunnables" },
    },
    opts = {
      server = {
        autostart = false,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Ensure mason installs the server
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                runBuildScripts = false,
              },
              -- Add clippy lints for Rust.
              checkOnSave = {
                enable = true,
                allFeatures = true,
                command = "check",
                extraArgs = {},
              },
              procMacro = {
                enable = true,
                ignored = {
                  ["async-trait"] = { "async_trait" },
                  ["napi-derive"] = { "napi" },
                  ["async-recursion"] = { "async_recursion" },
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "rouge8/neotest-rust",
    },
    opts = {
      require("neotest-rust")({
        args = { "--no-capture" },
      }),
    },
  },
}
