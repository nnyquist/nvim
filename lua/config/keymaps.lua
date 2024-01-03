local keymap = vim.keymap

local opts = function(s)
	return { noremap = true, silent = true, desc = s }
end

-- File Explorer
keymap.set("n", "<C-p>", ":Neotree position=float<CR>", opts("Open Neo-Tree"))

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts("Navigate Left"))
keymap.set("n", "<C-j>", "<C-w>j", opts("Navigate Down"))
keymap.set("n", "<C-k>", "<C-w>k", opts("Navigate Up"))
keymap.set("n", "<C-l>", "<C-w>l", opts("Navigate Right"))

-- Window Management
keymap.set("n", "<leader>wv", ":vsplit<CR>", opts("[W]indow [V]ertical Split"))
keymap.set("n", "<leader>wh", ":split<CR>", opts("[W]indow [H]orizontal Split"))
keymap.set("n", "<leader>wq", "<C-w>q", opts("[W]indow [Q]uit"))
keymap.set("n", "<leader>wo", "<C-w>o", opts("[W]indow [O]nly"))

-- Let Ctlr-S save the current buffer
keymap.set("n", "<C-s>", ":w<CR>", opts("Save Buffer"))

-- Quit
keymap.set("n", "<leader>q", ":q<CR>", opts("[Q]uit"))

-- [[ Source: ThePrimeagen ]]
-- Move Selected Lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts(""))
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts(""))

-- Line Joining
keymap.set("n", "J", "mzJ`z", opts(""))

-- Page Jump: Cursor in Middle
keymap.set("n", "<C-d>", "<C-d>zz", opts(""))
keymap.set("n", "<C-u>", "<C-u>zz", opts(""))

-- Search Terms Middle of Screen
keymap.set("n", "n", "nzzzv", opts(""))
keymap.set("n", "N", "Nzzzv", opts(""))
