local opts ={ noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local set_keymap = vim.api.nvim_set_keymap

--Remap space as leader key
set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
set_keymap("n", "<C-h>", "<C-w>h", opts)
set_keymap("n", "<C-j>", "<C-w>j", opts)
set_keymap("n", "<C-k>", "<C-w>k", opts)
set_keymap("n", "<C-l>", "<C-w>l", opts)

-- Launch Nvim Tree
set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
set_keymap("n", "<C-Up>", ":resize +2<CR>", opts)
set_keymap("n", "<C-Down>", ":resize -2<CR>", opts)
set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
set_keymap("n", "<S-l>", ":bnext<CR>", opts)
set_keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Navigate tabs
set_keymap("n", "<C-p>", ":tabp<CR>", opts)
set_keymap("n", "<C-n>", ":tabn<CR>", opts)

-- Insert --
-- Press jk / jj fast to escape
set_keymap("i", "jk", "<ESC>", opts)
set_keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
set_keymap("v", "<", "<gv", opts)
set_keymap("v", ">", ">gv", opts)

-- Move text up and down
set_keymap("v", "<A-j>", ":m .+1<CR>==", opts)
set_keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Fix paste behavior
set_keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
set_keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
set_keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
set_keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
set_keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts) 

-- Telescope --
-- TODO - git branches and git status
set_keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- set_keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
set_keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

