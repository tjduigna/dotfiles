local tree = require'nvim-tree'

tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "<C-]>", action = "cd" },
        -- `[c` prev_git_item  go to next git item
        -- `]c` next_git_item  go to prev git item
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
