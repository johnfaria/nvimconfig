return {
  "alexghergh/nvim-tmux-navigation",
  name = "nvim-tmux-navigation",
  config = function()
    require("nvim-tmux-navigation").setup({
      disable_when_zoomed = true,
      keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        previous = "<C-\\>",
      },
    })
  end,
}
