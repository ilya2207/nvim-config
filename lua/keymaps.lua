local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-n>", ":noh<CR>", {})
map("n", "Space", "<Nop>", {})
map("n", "<Leader>e", ":NvimTreeFocus<CR>", {})
map("i", "jk", "<ESC>", {})
map("i", "jj", "<ESC>", {})
--map("n", "<Tab>" , ":tabn<CR>", {})
--map("n", "<S-Tab>" , ":tabp<CR>", {})
map("n", "<C-z>", ":undo<CR>", {})
map("n", "<C-Z>", ":redo<CR>", {})
map("n", "<C-s>", ":w<CR>", {})
map("n", "<leader>kw", ":BufferCloseAllButCurrentOrPinned<CR>", {})
map("n", "<C-w>", ":BufferClose<CR>", {})
map("v", 'Y', '"+y', {})
map("n", 'Y', '"+y', {})
--map("n", "<A-1>", "1gt", {})
--map("n", "<A-2>", "2gt", {})
--map("n", "<A-3>", "3gt", {})
--map("n", "<A-4>", "4gt", {})
--map("n", "<A-5>", "5gt", {})
--map("n", "<A-6>", "6gt", {})
--map("n", "<A-7>", "7gt", {})
--map("n", "<A-8>", "8gt", {})
--map("n", "<A-9>", "9gt", {})
--map("n", "<A-10>", "10gt", {})
map('n', '<S-Tab>', ':BufferPrevious<CR>', {})
map('n', '<Tab>', ':BufferNext<CR>', {})
map('n', '<A-1>', ':BufferGoto 1<CR>', {})
map('n', '<A-2>', ':BufferGoto 2<CR>', {})
map('n', '<A-3>', ':BufferGoto 3<CR>', {})
map('n', '<A-4>', ':BufferGoto 4<CR>', {})
map('n', '<A-5>', ':BufferGoto 5<CR>', {})
map('n', '<A-6>', ':BufferGoto 6<CR>', {})
map('n', '<A-7>', ':BufferGoto 7<CR>', {})
map('n', '<A-8>', ':BufferGoto 8<CR>', {})
map('n', '<A-9>', ':BufferGoto 9<CR>', {})
map('n', '<A-0>', ':BufferLast<CR>', {})

--map('n', '<leader>fs', function()  require('telescope.builtin').grep_string() end, {})
--map('n', '<leader>ff', function()  require('telescope.builtin').find_files() end, {})
--map('n', '<leader>fb', function()  require('telescope.builtin').buffers() end, {})
--map('n', '<leader>fh', function()  require('telescope.builtin').help_tags() end, {})
