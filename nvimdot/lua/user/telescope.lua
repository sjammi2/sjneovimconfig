local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return 
end 

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<Left>"] = actions.move_selection_previous, -- move to prev result
            ["<Right>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<Down>"] = actions.move_selection_next,
            ["<Up>"] = actions.move_selection_previous,
            ["<CR>"] = actions.select_default,
            --["<C-q>"] actions.close,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    --local keymap = vim.keymap -- for conciseness

  end,
}
