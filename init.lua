local hooks = require "core.hooks"

hooks.add("setup_mappings", function(map)
  map("n", "<leader>gg", ":Neogit<CR>", opt)
end)

hooks.add("install_plugins", function(use)
  use "tpope/vim-surround"
  use "jparise/vim-graphql"

  use {
    "TimUntersberger/neogit",
    config = function()
      require('neogit').setup()
    end
  }

  use {
    "williamboman/nvim-lsp-installer",
    config = function()
      local lsp_installer = require "nvim-lsp-installer"

      lsp_installer.on_server_ready(function(server)
        local opts = {}

        server:setup(opts)
        vim.cmd [[ do User LspAttachBuffers ]]
      end)
    end,
  }
end)
