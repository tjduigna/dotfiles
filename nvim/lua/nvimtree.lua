local tree = require'nvim-tree'

tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "<C-]>", action = "cd" },
      },
    },
  },
})
