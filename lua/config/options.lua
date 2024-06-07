-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamed"
vim.opt.mouse = ""
vim.g.autformat = false

vim.env.SKIP_WASM_BUILD = 1
vim.opt.guifont = "MesloLGS\\ NF:h11"

-- vim.g.rustaceanvim = function()
--   -- Update this path
--   --
--   local codelldb_path = vim.env.HOME .. ".local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb"
--   local liblldb_path = vim.env.HOME .. ".local/share/nvim/mason/packages/codelldb/extension/lldb/lib/liblldb.so"
--
--   local cfg = require("rustaceanvim.config")
--   return {
--     server = {
--       settings = {
--         -- rust-analyzer language server configuration
--         ["rust-analyzer"] = {
--           checkOnSave = false,
--           cargo = {
--             allFeatures = false,
--             loadOutDirsFromCheck = true,
--             runBuildScripts = false,
--           },
--           -- Add clippy lints for Rust.
--           procMacro = {
--             enable = true,
--             ignored = {
--               -- ["async-trait"] = { "async_trait" },
--               -- ["napi-derive"] = { "napi" },
--               -- ["async-recursion"] = { "async_recursion" },
--             },
--           },
--         },
--       },
--     },
--     dap = {
--       adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
--     },
--   }
-- end
