return {
  {
    "aznhe21/hop.nvim",
    name = "hop.nvim",
    lazy = true,
    event = "VeryLazy",
    branch = "fix-some-bugs",
    config = function()
      local hop = require("hop")

      hop.setup({ keys = "asdfghjkl" })

      local directions = require("hop.hint").HintDirection
      vim.keymap.set("", "f", function()
        hop.hint_char1({ current_line_only = false })
      end, { remap = true })

      --[[ vim.keymap.set("", "F", function()
				hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
			end, { remap = true }) ]]
    end,
  },
}
