-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.wo.relativenumber = true
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
