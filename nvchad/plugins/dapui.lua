local present, dapui = pcall(require, "dapui");

if not present then
  return
end

local settings = {
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "console", size = 0.26 },
        { id = "breakpoints", size = 0.26 },
        { id = "watches", size = 0.26 },
        { id = "scopes", size = 0.20 },
      },
      size = 40, -- 40 columns
      position = "right",
    },
  },
}

dapui.setup(settings)

