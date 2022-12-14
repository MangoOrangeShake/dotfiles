local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   -- webdev stuff
   -- b.formatting.deno_fmt,
   -- b.formatting.prettier,

   -- Lua
   b.formatting.stylua,

   -- C++ / LLVM / Clang
   b.formatting.clang_format.with {
    filetypes = { "cpp", "c" },
  },
}

null_ls.setup {
   debug = true,
   sources = sources,
}
