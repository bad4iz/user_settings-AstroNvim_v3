function set_keymap_all_modes(original_key, new_key)
  -- Normal mode (n): Режим перемещения и выполнения команд. В этом режиме вы можете перемещаться по тексту и выполнять команды.
  -- Visual mode (v): Режим выделения текста. В этом режиме вы можете выделять текст для копирования, вырезания или других операций.
  -- Visual mode (выделение блока) (x): Режим выделения текста, но с акцентом на выделение символов. Используется, например, для удаления символов.
  -- Select mode (s): Режим выделения текста. Аналогичен Visual mode, обычно используется в терминале.
  -- Operator-pending mode (o): Режим, который следует за оператором и ожидает дополнительного ввода (например, d в dw).
  -- Insert mode (i): Режим ввода текста. В этом режиме вы вводите текст непосредственно.
  -- Visual Line mode (l): Режим выделения текста по строкам.
  -- Command-line mode (c): Режим ввода команд. В этом режиме вы можете вводить команды для сохранения файла, поиска и других действий.
  -- Terminal mode (t): Режим взаимодействия с терминалом.
  -- Quickfix mode (q): Режим работы с окном быстрых исправлений.

  -- local modes = { "n", "v", "x", "s", "o", "i", "l", "c", "t", "q" }
  local modes = { "n", "v", "x", "s", "o", "l", "c", "t" }
  for _, mode in ipairs(modes) do
    vim.api.nvim_set_keymap(mode, original_key, new_key, { noremap = false, silent = false })
  end
end

-- set_keymap_all_modes("ё", "\\")
-- set_keymap_all_modes("Б", "<")
-- set_keymap_all_modes("Ю", ">")
-- set_keymap_all_modes("Ё", "/|")
-- set_keymap_all_modes("х", "[")
--
-- set_keymap_all_modes("m", "h")
-- set_keymap_all_modes("n", "j")
-- set_keymap_all_modes("N", "j")
-- set_keymap_all_modes("e", "k")
-- set_keymap_all_modes("i", "l")

set_keymap_all_modes("J", "j")

function set_keymaps_from_arrays(original_keys, new_keys)
  for i, original_key in ipairs(original_keys) do
    set_keymap_all_modes(original_key, new_keys[i])
  end
end

-- Пример использования
local RU_DH = {
  "й",
  "Й",
  "ц",
  "Ц",
  "у",
  "У",
  "к",
  "К",
  "е",
  "Е",
  -- split
  "н",
  "Н",
  "г",
  "Г",
  "ш",
  "Ш",
  "щ",
  "Щ",
  "з",
  "З",
  "х",
  "Х",
  -- middle row
  "ф",
  "Ф",
  "ы",
  "Ы",
  "в",
  "В",
  "а",
  "А",
  "п",
  "П",
  -- split
  "р",
  "Р",
  "e",
  "E",
  "л",
  "Л",
  "д",
  "Д",
  "ж",
  "Ж",
  "э",
  "Э",
  -- bottom row
  "я",
  "Я",
  "ч",
  "Ч",
  "с",
  "С",
  "м",
  "М",
  "и",
  "И",
  -- split
  "т",
  "Т",
  "ь",
  "Ь",
  "б",
  "Б",
  ".",
  ",",
  "ю",
  "Ю",
  "ъ",
  "Ъ",
  -- special
  "ё",
  "Ё",
}
local COLEMAK_DH = {
  "q",
  "Q",
  "w",
  "W",
  "f",
  "F",
  "p",
  "P",
  "b",
  "B",
  -- split
  "j",
  "J",
  "l",
  "L",
  "u",
  "U",
  "y",
  "Y",
  ";",
  ":",
  "[",
  "{",
  -- middle row
  "a",
  "A",
  "r",
  "R",
  "s",
  "S",
  "t",
  "T",
  "g",
  "G",
  -- split
  "m",
  "M",
  "n",
  "N",
  "e",
  "E",
  "i",
  "I",
  "o",
  "O",
  "'",
  '"',
  -- bottom row
  "z",
  "Z",
  "x",
  "X",
  "c",
  "C",
  "d",
  "D",
  "v",
  "V",
  -- split
  "k",
  "K",
  "h",
  "H",
  ",",
  "<",
  ".",
  ">",
  "/",
  "?",
  "]",
  "}",
  -- special
  "`",
  "~",
}

set_keymaps_from_arrays(RU_DH, COLEMAK_DH)

-- -- Вывод сообщения при нажатии на стрелку вверх
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
--
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
