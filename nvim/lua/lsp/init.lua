local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- This function will be called for every LSP server that attaches to a buffer
local on_attach = function(client, bufnr)
  -- You can add keymaps specific to LSP here
  -- For example:
	-- local keymap = vim.keymap.set
	-- keymap('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
	-- keymap('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
end

-- Use LSPs with nvim-cmp
local capabilities = cmp_nvim_lsp.default_capabilities()

-- A list of all the LSP servers we want to set up
local servers = {
  'lua_ls',
  'typescript-language-server',
  'marksman',
  'pyright',
}

-- Loop through the servers and set them up with our common settings
for _, server in ipairs(servers) do
  lspconfig[server].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

-- Special configuration for lua_ls (sumneko_lua)
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = { vim.env.VIMRUNTIME },
        checkThirdParty = false,
      },
    },
  },
})

-- ESLint setup (it's a bit different as it's a linter)
require('nvim-eslint').setup({
  on_attach = function(client, bufnr)
    -- Setup format on save for eslint
    if client.name == 'eslint' then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = bufnr,
        callback = function()
          vim.cmd('EslintFixAll')
        end,
      })
    end
  end,
})
