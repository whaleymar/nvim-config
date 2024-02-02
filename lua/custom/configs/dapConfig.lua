local config = {
  cpp = {
    -- full options: https://code.visualstudio.com/docs/cpp/launch-json-reference
    {
      type = "cppdbg",
      name = "Launch File",
      request = "launch",
      --program = "${file}", -- focused buffer
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build/", "file")
      end,
      cwd = "${workspaceFolder}",
      miDebuggerPath = "/usr/bin/gdb",
      stopAtEntry = true,
      setupCommands = {
        {
          text = "-enable-pretty-printing",
          description = "enable pretty printing",
          ignoreFailures = false,
        },
      },
    },
  },
}

local adapters = {
  cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = "/home/whaley/code/nvim-bin/extension/debugAdapters/bin/OpenDebugAD7",
  },
}

local dap = require "dap"
dap.adapters = adapters
dap.configurations = config
--require("dap").configurations = configs
