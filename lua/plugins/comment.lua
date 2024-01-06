return {
  "numToStr/Comment.nvim",
  name = "Comment.nvim",
  lazy = true,
  event = "VeryLazy",
  config = function()
    require("Comment").setup({
      padding = true,
      sticky = false,
      ignore = nil,
      toggler = {
        line = "<leader>cl",
        block = "<leader>cb",
      },
      opleader = {
        line = "<leader>cl",
        block = "<leader>cb",
      },
      mappings = {
        basic = true,
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    })
  end,
}
