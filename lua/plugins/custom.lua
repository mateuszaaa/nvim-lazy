return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        sections = {
          lualine_c = {
            {
              "filename",
              path = 1, -- Use path = 1 to show the full file path
            },
          },
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.diagnostics.update_in_insert = false
      opts.diagnostics.underline = false
      opts.diagnostics.virtual_lines = { current_line = true, severity = { min = "ERROR" } }
      opts.diagnostics.virtual_text = { current_line = false, severity = { min = "ERROR" } }
    end,
  },
  {
    "olimorris/codecompanion.nvim",
    -- config = true,
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = {
            adapter = "openai",
          },
          inline = {
            adapter = "openai",
          },
          cmd = {
            adapter = "openai",
          },
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "javiorfo/nvim-soil",
    dependencies = { "javiorfo/nvim-nyctophilia" },
    lazy = true,
    ft = "plantuml",
    opts = {
      actions = {
        redraw = false,
      },
      puml_jar = "/usr/share/java/plantuml/plantuml.jar",
      image = {
        darkmode = false, -- Enable or disable darkmode
        format = "png", -- Choose between png or svg
        execute_to_open = function(img)
          return "eog " .. img
        end,
      },
    },
  },
  { "ironhouzi/starlite-nvim" },
  { "tpope/vim-fugitive" },
  { "rcarriga/nvim-notify", enabled = false },
  { "folke/flash.nvim", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
  { "echasnovski/mini.surround", enabled = false },
  { "sindrets/diffview.nvim" },
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
      cmdline = {
        view = "cmdline", -- this is the classic bottom cmdline
      },
      popupmenu = {
        enabled = true,
        view = "mini",
      },
      presets = {
        bottom_search = true, -- classic bottom search
      },
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
    dependencies = {
      { "rcarriga/nvim-notify", enabled = false },
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
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    lazy = false,
    keys = {
      {
        "<C-up>",
        function()
          require("multicursor-nvim").lineAddCursor(-1)
        end,
      },
      {
        "<C-down>",
        function()
          require("multicursor-nvim").lineAddCursor(1)
        end,
      },
      {
        "<leader><up>",
        function()
          require("multicursor-nvim").lineSkipCursor(-1)
        end,
      },
      {
        "<leader><down>",
        function()
          require("multicursor-nvim").lineSkiCursor(1)
        end,
      },
    },
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      local set = vim.keymap.set

      set({ "n", "x" }, "<C-S-k>", function()
        mc.lineAddCursor(-1)
      end)

      set({ "n", "x" }, "<C-S-j>", function()
        mc.lineAddCursor(1)
      end)

      -- Add or skip adding a new cursor by matching word/selection
      set({ "n", "x" }, "<leader>n", function()
        mc.matchAddCursor(1)
      end)
      set({ "n", "x" }, "<leader>s", function()
        mc.matchSkipCursor(1)
      end)
      set({ "n", "x" }, "<leader>N", function()
        mc.matchAddCursor(-1)
      end)
      set({ "n", "x" }, "<leader>S", function()
        mc.matchSkipCursor(-1)
      end)

      -- Add and remove cursors with control + left click.
      set("n", "<c-leftmouse>", mc.handleMouse)
      set("n", "<c-leftdrag>", mc.handleMouseDrag)
      set("n", "<c-leftrelease>", mc.handleMouseRelease)

      -- Disable and enable cursors.
      set({ "n", "x" }, "<c-q>", mc.toggleCursor)

      -- Mappings defined in a keymap layer only apply when there are
      -- multiple cursors. This lets you have overlapping mappings.
      mc.addKeymapLayer(function(layerSet)
        -- Select a different cursor as the main one.
        layerSet({ "n", "x" }, "<left>", mc.prevCursor)
        layerSet({ "n", "x" }, "<right>", mc.nextCursor)

        -- Delete the main cursor.
        layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)

        -- Enable and clear cursors using escape.
        layerSet("n", "<esc>", function()
          if not mc.cursorsEnabled() then
            mc.enableCursors()
          else
            mc.clearCursors()
          end
        end)
      end)

      -- Customize how cursors look.
      local hl = vim.api.nvim_set_hl
      hl(0, "MultiCursorCursor", { link = "Cursor" })
      hl(0, "MultiCursorVisual", { link = "Visual" })
      hl(0, "MultiCursorSign", { link = "SignColumn" })
      hl(0, "MultiCursorMatchPreview", { link = "Search" })
      hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
      hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
      hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
    end,
  },
}
