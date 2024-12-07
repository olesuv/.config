return {
  "zbirenbaum/copilot-chat.nvim",
  url = "git@github.com:zbirenbaum/copilot-chat.nvim.git",
  dependencies = { "copilot.lua" },
  config = function()
    require("copilot_chat").setup({
      window = {
        width = 60,
        height = 15,
      },
      keymaps = {
        open = "<leader>cc",
      },
    })
  end,
}
