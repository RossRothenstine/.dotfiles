local plugins = {
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function()
      require("gopher").setup()
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup {
        log_level = "error",
      }
    end
  },
  {
    "tikhomirov/vim-glsl",
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    lazy = false
  },
  {
    "tpope/vim-sleuth",
    lazy = false
  },
  {
    "tpope/vim-surround",
    lazy = false
  },
  {
    "sidebar-nvim/sidebar.nvim",
    event = "VeryLazy",
    config = function ()
      require("sidebar-nvim").setup{ open = false }
      require("core.utils").load_mappings("sidebar")
    end
  },
  {
    "nvim-lua/lsp-status.nvim",
    event = "VeryLazy",
  },
  {
    "RishabhRD/nvim-lsputils",
    event = "VeryLazy",
  },
  {
    "roobert/action-hints.nvim",
    event = "VeryLazy",
  },
  {
    "gfanto/fzf-lsp.nvim",
    event = "VeryLazy"
  },
  {
    "cuducos/yaml.nvim",
    event = "VeryLazy"
  },
  {
    "davidgranstrom/nvim-markdown-preview",
    event = "VeryLazy"
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy"
  },
  {
    "utilyre/barbecue.nvim",
    event = "VeryLazy"
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy"
  },
  {
    "romgrk/barbar.nvim",
    event = "VeryLazy"
  },
  {
    "edluffy/hologram.nvim",
    event = "VeryLazy"
  },
  {
    "jghauser/mkdir.nvim",
    event = "VeryLazy"
  },
  {
    "utilyre/sentiment.nvim",
    event = "VeryLazy"
  },
  {
    "nvim-lua/plenary.nvim",
    event = "VeryLazy"
  },
  {
    "vladdoster/remember.nvim",
    event = "VeryLazy",
    config = function ()
      require("remember").setup{}
    end
  },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy"
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function ()
      vim.g.copilot_assume_mapped = true
      require("core.utils").load_mappings("copilot")
    end,
    opts = {
      suggestion = {
        auto_trigger = true
      }
    }
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    event = "VeryLazy",
    config = function ()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function ()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function ()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function ()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
      ensure_installed = {
        "codelldb",
      }
    }
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      require("core.utils").load_mappings("lsp")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "gopls",
        "rust-analyzer",
      }
    }
  },
}

return plugins
