-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamed"
vim.opt.mouse = ""
vim.g.autformat = false
vim.g.tokyonight_style = "storm"

vim.env.SKIP_WASM_BUILD = 1
vim.opt.guifont = "MesloLGS\\ NF:h11"

vim.g.rustaceanvim = {
  server = {
    default_settings = {
      ["rust-analyzer"] = {
        checkOnSave = false,
        cargo = {
          allFeatures = false,
          loadOutDirsFromCheck = true,
          runBuildScripts = false,
        },
        check = {
          command = "check",
        },
        -- Add clippy lints for Rust.
        procMacro = {
          enable = true,
          ignored = {
            -- ["async-trait"] = { "async_trait" },
            -- ["napi-derive"] = { "napi" },
            -- ["async-recursion"] = { "async_recursion" },
          },
        },
      },
    },
  },
}

--   -- Update this path
--   --
--   -- local codelldb_path = vim.env.HOME .. ".local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb"
--   -- local liblldb_path = vim.env.HOME .. ".local/share/nvim/mason/packages/codelldb/extension/lldb/lib/liblldb.so"
--
--   {
--     server = {
--       default_settings = {
--         -- rust-analyzer language server configuration
--         ["rust-analyzer"] = {},
--       },
--     },
--   }
--   -- -- local cfg = require("rustaceanvim.config")
--   -- return {
--   --   server = {
--   --     default_settings = {
--   --       -- rust-analyzer language server configuration
--   --       ["rust-analyzer"] = {
--   --         checkOnSave = false,
--   --         cargo = {
--   --           allFeatures = false,
--   --           loadOutDirsFromCheck = true,
--   --           runBuildScripts = false,
--   --         },
--   --         -- Add clippy lints for Rust.
--   --         procMacro = {
--   --           enable = true,
--   --           ignored = {
--   --             -- ["async-trait"] = { "async_trait" },
--   --             -- ["napi-derive"] = { "napi" },
--   --             -- ["async-recursion"] = { "async_recursion" },
--   --           },
--   --         },
--   --       },
--   --     },
--   --   },
--   --   -- dap = {
--   --   --   adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
--   --   -- },
--   -- }
-- end
