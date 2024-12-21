-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  vim.keymap.set({ "n", "v" }, "H", "^", { noremap = true, silent = true })
  vim.keymap.set({ "n", "v" }, "L", "$", { noremap = true, silent = true })
else
  require("config.lazy")
end
