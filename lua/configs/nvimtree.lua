return {
  filters = {
    dotfiles = false,
    git_ignored = false,
    custom = {},
  },
  git = {
    enable = true,
    ignore = false,
  },
  view = {
    side = "left",
    width = 30,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
}