-- PERF: fully optimised - полностью оптимизированный
-- HACK: hmmm, this looks a bit funky - наверное, это выглядит немного криво
-- TODO: what else - что еще?
-- NOTE: adint a note - добавить заметку
-- FIXME: fix it - исправьте это
-- FIX: fix this - исправьте это
-- XXX: do not do it - не делайте это
-- WARNING: warning - предупреждение

return {
  {
    "folke/todo-comments.nvim",
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoTrouble", "TodoTelescope", "TodoLocList", "TodoQuickFix" },
  },
}
