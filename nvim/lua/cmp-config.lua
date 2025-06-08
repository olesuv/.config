local cmp = require('cmp')

cmp.setup({
	completion = {
		autocomplete = false
	},

  snippet = {
    -- REQUIRED: specify snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body)  -- For vsnip users
      require('luasnip').lsp_expand(args.body)
    end,
  },

	 mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),  -- Manually trigger completion menu
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        -- Manually trigger completion menu on Tab if you want
        cmp.complete()
        -- Or fallback to normal Tab behavior:
        -- fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.abort(),
  },

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },  -- LSP completions
    { name = 'vsnip' },     -- Snippet completions
  }, {
    { name = 'buffer' },    -- Buffer words completions
  })
})

-- Use buffer source for `/` in cmdline mode
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' in cmdline mode
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

