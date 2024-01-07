return {
  -- Autocompletion
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    -- Snippet Engine & its associated nvim-cmp source
    {
      "L3MON4D3/LuaSnip",

      -- keys = {
      --   {
      --     "<tab>",
      --     function()
      --       return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
      --     end,
      --     expr = true,
      --     silent = true,
      --     mode = "i",
      --   },
      --   {
      --     "<tab>",
      --     function()
      --       require("luasnip").jump(1)
      --     end,
      --     mode = "s",
      --   },
      --   {
      --     "<S-tab>",
      --     function()
      --       require("luasnip").jump(-1)
      --     end,
      --     mode = { "i", "s" },
      --   },
      -- },
    },
    "saadparwaiz1/cmp_luasnip",

    -- Adds LSP completion capabilities
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",

    -- Adds a number of user-friendly snippets
    "rafamadriz/friendly-snippets",

    -- Adds vscode-like pictograms
    "onsails/lspkind.nvim",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()
    luasnip.config.setup({})

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete({}),
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ["<C-g>"] = function()
          if cmp.visible_docs() then
            cmp.close_docs()
          else
            cmp.open_docs()
          end
        end,
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      view = {
        docs = {
          auto_open = false,
        },
      },
      sources = {
        -- { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
        { name = "calc" },
        { name = "emoji" },
        { name = "treesitter" },
        { name = "crates" },
        { name = "tmux" },
      },
    })
  end,
}
