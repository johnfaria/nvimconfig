return {
  "stevearc/conform.nvim",
  config = function()
    local conform = require("conform")
    local opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang_format" },
      },
    }
    conform.setup(opts)

    -- format on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        conform.format({ bufnr = args.buf })
      end,
    })
  end,
}
