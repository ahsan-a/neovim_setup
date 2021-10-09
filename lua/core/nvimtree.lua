local M = {}

M.setup = function()
   require('nvim-tree').setup({
      disable_netrw = false,
      hijack_netrw = true,
      open_on_setup = false,
      open_on_tab = true,
      update_to_buf_dir   = {
         -- enable the feature
         enable = true,
         -- allow to open the tree if it was previously closed
         auto_open = true,
      },
      hijack_cursor = true,
      update_cwd = true,
      lsp_diagnostics = true,
      update_focused_file = {
         enable = true
      },
      view = {
         width = 35,
         side = "left",
         auto_resize = false,
         mappings = {
            custom_only = false,
         }  
      },
      gitignore = true,
      git_hl = true,
      highlight_opened_files = true,
      add_trailing = true,
      show_icons = {
         git = 1,
         folders = 1,
         files = 1,
         folder_arrows = 1,
         tree_width = 35,
      },
      special_files = { 'README.md', "LICENSE"},

   })
end

return M