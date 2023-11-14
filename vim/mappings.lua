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
    }
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

return M
