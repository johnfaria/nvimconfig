return {
  {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    opts = {},
    disabled = true,
  },
  {
    "boltlessengineer/smart-tab.nvim",
    disables = true,
    config = function()
      require("smart-tab").setup({
        exclude_filetype = {},
        -- default options:
        -- list of tree-sitter node types to filter
        skips = { "string_content" },
        -- default mapping, set `false` if you don't want automatic mapping
        mapping = "<tab>",
        -- filetypes to exclude
        exclude_filetypes = {},
      })
    end,
  },
}
