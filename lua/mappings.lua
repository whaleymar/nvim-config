require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>lo",
  function()
    vim.diagnostic.open_float({ scope = "line" })
  end, {
        desc = "LSP message to window",
        nowait = true,
      })

-- stay in visual mode after indent (gv re-selects previous visual selection)
map("v", ">", "> gv")
map("v", "<", "< gv")
