vim.cmd("colorscheme onedark")
-- vim.g.onedark_style = "cool"
vim.wo.number = true
vim.opt.spelllang = "en_gb"
vim.cmd("inoremap <expr> <Tab>   pumvisible() ? \"<C-n>\" : \"<Tab>\"")
vim.cmd("inoremap <expr> <S-Tab> pumvisible() ? \"<C-p>\" : \"<S-Tab>\"")
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.cmd("set shortmess+=c")
vim.opt.mouse="a"
vim.opt.termguicolors = true
vim.g.mapleader = " "


-- keymaps
vim.api.nvim_set_keymap('n', "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- markdown

vim.cmd("autocmd FileType markdown setlocal spell | autocmd FileType markdown setlocal complete+=kspell")
