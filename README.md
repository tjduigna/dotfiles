# dotfiles

The goal is to configure `nvim` and `tmux` for a modern terminal IDE experience.
Uses a `tmuxinator` configuration file for a project template layout with
`nvim-tree` explorer, `vim-ipython-cell` interactive code execution, and a
terminal pane for running shell commands.

### Shortcuts and Navigation

Commands assume:
```lua
let mapleader = " "
```

- Tree explorer shortcut is `" "v [path]` (think **view**, defaults to `cwd`)
    - Descend into a directory with `<C-]>`
    - Go up a directory level with `u`
- Navigating between `vim` splits and `tmux` splits is not 100% smooth
    - Uses `<" "-hjkl>` for `vim` splits 
    - Uses `<C-hjkl>` for `tmux` panes
- Assumes the `ipython` pane is always on the top-right `tmux` pane
- Silver searcher shortcut is available at `" "/`


### To Do

- Anchor tree toggle to always be on the left
- Make `vim` and `tmux` navigation more consistent
- Make directory traversal more consistent
- Remove unused plugins
