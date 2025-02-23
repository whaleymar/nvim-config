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
  go = {
    {
      type = "delve",
      name = "Debug",
      request = "launch",
      program = "${file}",
    },
  },
}

local adapters = {
  cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = "/home/whaley/code/nvim-bin/extension/debugAdapters/bin/OpenDebugAD7",
  },
  delve = {
    type = "server",
    port = "${port}",
    executable = {
      command = "dlv",
      args = { "dap", "-l", "127.0.0.1:${port}" },
    },
  },
}

local dap = require "dap"
dap.adapters = adapters
dap.configurations = config
--require("dap").configurations = configs
