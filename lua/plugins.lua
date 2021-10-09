-- vim.g.mapleader="<Space>"

-- Packer
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require('core.nvimtree').setup()
    end
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      local null_ls = require('null-ls')
      null_ls.setup({
        sources = {
          null_ls.builtins.code_actions.gitsigns,
        }
      })
    end
  }
  use {
    'nvim-lua/popup.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use {
    'ojroques/nvim-hardline',
    config = function()
      require('core.hardline-plug').setup()
    end
  }
  use {
    'williamboman/nvim-lsp-installer',
    requires = {'neovim/nvim-lspconfig'},
    config = function()
      local lsp_installer = require("nvim-lsp-installer")

      lsp_installer.on_server_ready(function(server)
        local opts = {}
        
        -- (optional) Customize the options passed to the server
        -- if server.name == "tsserver" then
        --     opts.root_dir = function() ... end
        -- end
    
        -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
        server:setup(opts)
        vim.cmd [[ do User LspAttachBuffers ]]
      end)
    end
  }
  use {
    'nvim-lua/completion-nvim',
    config = function()
      vim.api.nvim_command("autocmd BufEnter * lua require'completion'.on_attach()")
    end
  }
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup({})
    end  
  }
  use {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup({comment_empty = false})
    end
  }
  use 'navarasu/onedark.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained",
        highlight = {
          enable = true              -- false will disable the whole extension
      }
    }
    end 
  }
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
  }
  use {
  "folke/which-key.nvim",
  config = function()
    require("core.whichkey").setup()
  end
}
end)