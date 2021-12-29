call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'norcalli/nvim.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'Yggdroot/indentLine'

" Cosmetics plugins
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'andweeb/presence.nvim'
Plug 'github/copilot.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'NvChad/nvim-base16.lua'
Plug 'joshdick/onedark.vim'

call plug#end()

set nu rnu
set completeopt=menu,menuone,noselect
set shortmess+=c

" fzf
nnoremap f :Files<CR>

" Toggle copilot
nnoremap 3 :Copilot enable<CR>
nnoremap 4 :Copilot disable<CR>  

" Tabsize
set tabstop=4
set shiftwidth=4
set expandtab

set nowrap

syntax enable
filetype plugin indent on

" let g:tokyonight_style = "night"
" colorscheme tokyonight
set termguicolors 

lua << END
-- lualine
require'lualine'.setup {
    options = { section_separators = '', component_separators = '' },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {'location', 'progress'},
        lualine_x = {'fileformat', 'filetype'},
        lualine_y = {'filesize'},
        lualine_z = {'hostname'}
    }
}
END

" startify
