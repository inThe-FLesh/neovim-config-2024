return {
 	'hrsh7th/nvim-cmp',
 	event = 'InsertEnter',
	dependencies = {
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets',
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
		  completion = {
		    completeopt = 'menu,menuone,preview,noselect',	
		  },
		  snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		  },
		  mapping = cmp.mapping.preset.insert({
			  ["<C-Up>"] = cmp.mapping.select_prev_item(),
			  ["<Tab>"] = cmp.mapping.select_next_item(),
			  ["<C-Left>"] = cmp.mapping.scroll_docs(-4),
			  ["<C-Right>"] = cmp.mapping.scroll_docs(4),
			  ["<C-Space>"] = cmp.mapping.complete(),
			  ["<C-e>"] = cmp.mapping.abort(),
			  ["<CR>"] = cmp.mapping.confirm({ select = true }),
		    }),

		  sources = cmp.config.sources({
			  { name = 'nvim_lsp' },
			  { name = 'luasnip' },
			  { name = 'buffer' },
			  { name = 'path' },
		  }),
		})
	end,
}
