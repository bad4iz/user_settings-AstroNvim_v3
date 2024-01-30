vim.api.nvim_set_keymap("n", "й", "q", {})
vim.api.nvim_set_keymap("n", "й", "q", {})
vim.api.nvim_set_keymap("n", "ц", "w", {})
vim.api.nvim_set_keymap("n", "у", "e", {})
vim.api.nvim_set_keymap("n", "к", "r", {})
vim.api.nvim_set_keymap("n", "е", "t", {})
vim.api.nvim_set_keymap("n", "н", "y", {})
vim.api.nvim_set_keymap("n", "г", "u", {})
vim.api.nvim_set_keymap("n", "ш", "i", {})
vim.api.nvim_set_keymap("n", "щ", "o", {})
vim.api.nvim_set_keymap("n", "з", "p", {})
vim.api.nvim_set_keymap("n", "ъ", "]", {})
vim.api.nvim_set_keymap("n", "ф", "a", {})
vim.api.nvim_set_keymap("n", "ы", "s", {})
vim.api.nvim_set_keymap("n", "в", "d", {})
vim.api.nvim_set_keymap("n", "а", "f", {})
vim.api.nvim_set_keymap("n", "п", "g", {})
vim.api.nvim_set_keymap("n", "р", "h", {})
vim.api.nvim_set_keymap("n", "о", "j", {})
vim.api.nvim_set_keymap("n", "л", "k", {})
vim.api.nvim_set_keymap("n", "д", "l", {})
vim.api.nvim_set_keymap("n", "ж", ";", {})
vim.api.nvim_set_keymap("n", "э", "'", {})
vim.api.nvim_set_keymap("n", "ё", "\\", {})
vim.api.nvim_set_keymap("n", "я", "z", {})
vim.api.nvim_set_keymap("n", "ч", "x", {})
vim.api.nvim_set_keymap("n", "с", "c", {})
vim.api.nvim_set_keymap("n", "м", "v", {})
vim.api.nvim_set_keymap("n", "и", "b", {})
vim.api.nvim_set_keymap("n", "т", "n", {})
vim.api.nvim_set_keymap("n", "ь", "m", {})
vim.api.nvim_set_keymap("n", "б", ",", {})
vim.api.nvim_set_keymap("n", "ю", ".", {})
vim.api.nvim_set_keymap("n", "Й", "Q", {})
vim.api.nvim_set_keymap("n", "Ц", "W", {})
vim.api.nvim_set_keymap("n", "У", "E", {})
vim.api.nvim_set_keymap("n", "К", "R", {})
vim.api.nvim_set_keymap("n", "Е", "T", {})
vim.api.nvim_set_keymap("n", "Н", "Y", {})
vim.api.nvim_set_keymap("n", "Г", "U", {})
vim.api.nvim_set_keymap("n", "Ш", "I", {})
vim.api.nvim_set_keymap("n", "Щ", "O", {})
vim.api.nvim_set_keymap("n", "З", "P", {})
vim.api.nvim_set_keymap("n", "Х", "{", {})
vim.api.nvim_set_keymap("n", "Ъ", "}", {})
vim.api.nvim_set_keymap("n", "Ф", "A", {})
vim.api.nvim_set_keymap("n", "Ы", "S", {})
vim.api.nvim_set_keymap("n", "В", "D", {})
vim.api.nvim_set_keymap("n", "А", "F", {})
vim.api.nvim_set_keymap("n", "П", "G", {})
vim.api.nvim_set_keymap("n", "Р", "H", {})
vim.api.nvim_set_keymap("n", "О", "J", {})
vim.api.nvim_set_keymap("n", "Л", "K", {})
vim.api.nvim_set_keymap("n", "Д", "L", {})
vim.api.nvim_set_keymap("n", "Ж", ":", {})
vim.api.nvim_set_keymap("n", "Э", '"', {})
vim.api.nvim_set_keymap("n", "Я", "Z", {})
vim.api.nvim_set_keymap("n", "Ч", "X", {})
vim.api.nvim_set_keymap("n", "С", "C", {})
vim.api.nvim_set_keymap("n", "М", "V", {})
vim.api.nvim_set_keymap("n", "И", "B", {})
vim.api.nvim_set_keymap("n", "Т", "N", {})
vim.api.nvim_set_keymap("n", "Ь", "M", {})
vim.api.nvim_set_keymap("n", "Б", "<", {})
vim.api.nvim_set_keymap("n", "Ю", ">", {})
vim.api.nvim_set_keymap("n", "Ё", "/|", {})
vim.api.nvim_set_keymap("n", "х", "[", {})

-- Вывод сообщения при нажатии на стрелку вверх
vim.api.nvim_set_keymap(
  "n",
  "<Up>",
  [[:lua print("Нажата стрелка вверх")<CR>]],
  { noremap = true, silent = true }
)

-- Аналогично для других стрелок
vim.api.nvim_set_keymap(
  "n",
  "<Down>",
  [[:lua print("Нажата стрелка вниз")<CR>]],
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Left>",
  [[:lua print("Нажата стрелка влево")<CR>]],
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Right>",
  [[:lua print("Нажата стрелка вправо")<CR>]],
  { noremap = true, silent = true }
)

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {

    ["<leader>q"] = { "", desc = "Quit" },
    ["<leader>qq"] = { "<cmd>confirm q<cr>", desc = "Quit" },
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<leader>le"] = { "<cmd>!eslint --fix %<cr>", desc = "Eslint fix" },
    ["gh"] = { "<cmd>UndotreeToggle<cr>", desc = "History" },
    -- Navigate buffers
    ["<S-l>"] = { "<cmd>bnext<CR>", desc = "Next Buffer" },
    ["<S-h>"] = { "<cmd>bprevious<CR>", desc = "Prev buffer" },
    ["gs"] = { "<Cmd>Sort<CR>", desc = "Sort" },
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move up" },
    ["<c-C>"] = { ':let @+ = expand("%:.") .. ":" .. line(".") <cr>', desc = "copy path" },
    -- neotest

    ["<leader>mt"] = { ':lua require("neotest").run.run(vim.fn.expand("%")) <cr>', desc = "test" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-s>"] = { "<esc>:w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move down" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move up" },
    ["<C-S-c>"] = { ':let @+ = "Line: " .. line(".") .. ", File: " .. expand("%:.") <cr>', desc = "copy path" },
  },
  v = {
    ["gs"] = { "<Esc><Cmd>Sort<CR>", desc = "Sort" },
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move down" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move up" },
    ["p"] = { '"_dP', desc = "" },
    ["<C-S-c>"] = { ':let @+ = "Line: " .. line(".") .. ", File: " .. expand("%:.") <cr>', desc = "copy path" },
  },
}
