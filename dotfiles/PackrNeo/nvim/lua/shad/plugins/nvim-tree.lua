local status,nvimtree = pcall(require ,"nvim-tree")

if not status then 
  return 

end
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
nvimtree.setup({
  renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
})
