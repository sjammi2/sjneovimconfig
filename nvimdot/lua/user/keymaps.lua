local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<.>", "<Nop>", opts)
vim.g.mapleader = "."
vim.g.maplocalleader = "."

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "(find_files) Fuzzy find files in cwd" }, opts)
keymap("n", "<leader>ff", "<cmd>Telescope oldfiles<cr>", { desc = "(oldfiles) Fuzzy find recent files" },opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", { desc = "(live_grep) Find string in cwd" }, opts)
keymap("n", "<leader>gs", "<cmd>Telescope grep_string<cr>", { desc = "(grep_string) Find string under cursor in cwd" }, opts)
--keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" }, opts)
--keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" }, opts)
--keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" }, opts)
--keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" }, opts)

-- folder navigation 
keymap("n", "<leader>e", ":NvimTreeToggle <CR>", opts)



-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)





-- Resize with arrows
keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -1<CR>", opts)

-- Navigate buffers
--keymap("n", "<S-v>", ":bnext<CR>", opts)
keymap("n", "<S-b>", ":bprevious<CR>", opts)

-- Move text up and down
--keymap("n", "<S-Up>", ":m .+1<CR>==", opts)
--keymap("n", "<S-Down>", ":m .-2<CR>==", opts)


-- Insert --
-- Press jk fast to exit insert mode 
keymap("n", "<C-q>", ":x<CR>", opts)
--keymap("i", "<C-q>", "<ESC>:x<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-1<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Tagbar 
keymap('n', "<S-t>", ":Tagbar<CR>", opts )


-- Terminal --
keymap('n', "<leader>p", ":lua _PYTHON_TOGGLE()<CR>")
keymap('n', "<leader>j", ":lua _JULIA_TOGGLE()<CR>")
keymap('n', "<leader>w", ":lua _WARP_TOGGLE()<CR>")
keymap('n', "<leader>b", ":lua _BTOP_TOGGLE()<CR>")


--keymap('n', "<leader>hh", ":lua _HTOP_TOGGLE()<CR>")
--keymap('n', "<leader>nn", ":lua _NCDU_TOGGLE()<CR>")
keymap('n', "<leader>,", ":lua _LAZYGIT_TOGGLE()<CR>")
-- Better terminal navigation
keymap('n', "<leader>/", ":ToggleTerm<CR>")
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

