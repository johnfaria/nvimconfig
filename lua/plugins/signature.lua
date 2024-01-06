return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  config = function()
    local opts = {
      floating_window = false,
    }
    require("lsp_signature").setup(opts)
  end,
}
