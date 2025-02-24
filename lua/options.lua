require "nvchad.options"

-- enable cursorline:
local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

-- don't auto-comment new lines:
vim.cmd [[autocmd FileType * set formatoptions-=ro]]

local opt = vim.opt
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- set '//' as the default comment token for cpp and c
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "cpp", "c" },
    callback = function()
        vim.bo.commentstring = "// %s"
    end,
})
