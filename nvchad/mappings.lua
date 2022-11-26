local M = {}

M.dap = {
  n = {
    -- dap
    ["<F5>"]       = { "<cmd> lua require'dap'.continue() <CR>",                  "DapContinue" },
    ["<F7>"]       = { "<cmd> lua require'dap'.terminate() <CR>",                "DapTerminate" },
    ["<F10>"]      = { "<cmd> lua require'dap'.step_over() <CR>",                 "DapStepOver" },
    ["<F11>"]      = { "<cmd> lua require'dap'.step_into() <CR>",                 "DapStepInto" },
    ["<F12>"]      = { "<cmd> lua require'dap'.step_out() <CR>",                   "DapStepOut" },
    ["<leader>dc"] = { "<cmd> lua require'dap'.run_to_cursor() <CR>",          "DapRunToCursor" },
    ["<leader>B"]  = { "<cmd> lua require'dap'.toggle_breakpoint() <CR>", "DapToggleBreakpoint" },
    ["<leader>dr"] = { "<cmd> lua require'dap'.repl.toggle() <CR>",             "DapToggleRepl" },
    ["<leader>dK"] = { "<cmd> lua require('dap.ui.widgets').hover() <CR>",           "DapHover" },

    -- dap-ui
    ["<F6>"]       = { "<cmd> lua require'dapui'.toggle() <CR>",                  "DapUIToggle" },
    ["<leader>dp"] = { "<cmd> lua require'dapui'.float_element() <CR>",        "DapUIPickFloat" },
    ["<leader>df"] = { "<cmd> lua require'dapui'.float_element('stacks') <CR>", "DapUIFloatFrames" },
    ["<leader>dt"] = { "<cmd> lua require'dapui'.float_element('console') <CR>", "DapUIFloatTerm" },
    ["<leader>ds"] = { "<cmd> lua require'dapui'.float_element('scopes') <CR>", "DapUIFloatScope" },
  }
}

return M
