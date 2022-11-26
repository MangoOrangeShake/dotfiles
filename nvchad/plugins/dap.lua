local present, dap = pcall(require, "dap")

if not present then
  return
end

dap.adapters.codelldb = {
  type = "server",
  host = "127.0.0.1",
  port = 13000,
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    preRunCommands = {"breakpoint set -n main"},
    exitCommands = {"breakpoint delete -n main"},
    terminal = "integrated"
  },
}

