return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["mfussenegger/nvim-dap"] = {
    config = function()
      require "custom.plugins.dap"
    end
  },

  ["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = function()
      require "custom.plugins.dapui"
    end
  },

  ["folke/which-key.nvim"] = {
    disable = false,
    cmd = "WhichKey",
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
  },

  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        overriden_modules = function()
          return require "custom.ruler"
        end
      },
    },
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      sync_root_with_cwd = true,
      view = {
        adaptive_size = false,
        side = "left",
        hide_root_folder = false,
        mappings = {
          list = {
            { key = "l", action = "edit", mode = "n" },
            { key = "h", action = "close_node", mode = "n" },
          },
        },
      },
      git = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        highlight_opened_files = "all",
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
    },
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "c",
        "cpp",
        "javascript",
        "json",
        "html",
        "toml",
        "make",
        "typescript",
        "rust",
      },
      indent = {
        enable = false,
      }
    },
  },
}
