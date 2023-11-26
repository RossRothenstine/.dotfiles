local M = {}

M.telescope = {
  n = {
    ["<leader>b"] = {
      "<Cmd>Telescope buffers<CR>",
      "Search buffers"
    },
    ["<leader>o"] = {
      "<Cmd>Telescope oldfiles<CR>",
      "Search oldfiles"
    }
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger"
    },
  }
}

M.lsp = {
  plugin = true,
  n = {
    ["<leader>qf"] = {
      function ()
        vim.lsp.buf.code_action({
          filter = function (a)
            return a.isPreferred
          end,
          apply = true
        })
      end,
      "Apply code quickfix"
    },
    ["<leader>ss"] = {
      "<cmd> ClangdSwitchSourceHeader <CR>",
      "Switch between header and source"
    },
    ["<M-CR>"] = {
      "<cmd>lua vim.lsp.buf.code_action()<CR>",
      "Go to next Code Action",
      { silent = true },
    },
  }
}

M.renamer = {
  plugin = true,
  n = {
    ["<leader><F2>"] = {
      '<cmd>lua require("renamer").rename()<cr>',
      "Renames the current symbol"
    }
  }
}


M.copilot = {
  plugin = true,
  i = {
    -- ["<C-j>"] = {
    --   'copilot#Accept()',
    --   { silent = true, expr = true }
    -- }
  }
}

M.default = {
  n = {
    ["<leader>w"] = {
      "<cmd> w <CR>",
      "Save file"
    },
    ["<leader>q"] = {
      "<cmd> q <CR>",
      "Quit file"
    },
    ["<leader>sw"] = {
      "<cmd> SessionSave <CR>",
      "Save Session",
    },
    ["<leader>sr"] = {
      "<cmd> SessionRestore <CR>",
      "Open Session",
    },
    ["<leader>sd"] = {
      "<cmd> SessionDelete <CR>",
      "Delete Session",
    },
    ["<leader>sv"] = {
      "<cmd> Autosession search <CR>",
      "View Session",
    },
  },
};

return M
