return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    cmd = "Mason",
    keys = { {
      "<leader>pm",
      "<cmd>Mason<CR>",
      desc = "Mason",
    } },
    build = ":MasonUpdate",
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilites = capabilities,
      })

      lspconfig.clangd.setup({
        capabilites = capabilities,
      })

      lspconfig.pyright.setup({
        capabilites = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go To Definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "References" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
    end,
  },
}
