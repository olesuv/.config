return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- test framework adapters
      "nvim-neotest/neotest-jest",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest")({
            jestCommand = "npm test --",
            jestConfigFile = "jest.config.js",
            env = { CI = true },
            cwd = function()
              return vim.fn.getcwd()
            end,
          }),
        },
        diagnostics = {
          enabled = true,
          icons = {
            passed = "✔",
            failed = "✘",
            unknown = "?",
          },
        },
        output = {
          open_on_run = true,
          output_panel_max_lines = 30,
        },
        -- Quickfix list configuration
        quickfix = {
          open = false,
          enabled = true,
        },
        -- Status line integration
        status = {
          enabled = true,
          virtual_text = true,
          signs = true,
        },
      })

      -- Key mappings for testing
      vim.keymap.set("n", "<leader>tt", function()
        require("neotest").run.run()
      end, { desc = "Run nearest test" })

      vim.keymap.set("n", "<leader>tf", function()
        require("neotest").run.run(vim.fn.expand("%"))
      end, { desc = "Run tests in current file" })

      vim.keymap.set("n", "<leader>ta", function()
        require("neotest").run.run({ suite = true })
      end, { desc = "Run all tests" })

      vim.keymap.set("n", "<leader>to", function()
        require("neotest").output.open()
      end, { desc = "Open test output" })

      vim.keymap.set("n", "<leader>ts", function()
        require("neotest").summary.toggle()
      end, { desc = "Toggle test summary" })
    end,
  },
}
