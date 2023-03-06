local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
  virtual_text = true,
})

lsp.configure('pylsp', {
    settings = {
        pylsp = {
            plugins = {
                autopep8 = {
                    enabled = false,
                },
                flake8 = {
                    maxLineLength = 88,
                },
                pycodestyle = {
                    maxLineLength = 88,
                },
                yapf = {
                    enabled = true,
                },
            },
        },
    },
})

local cmp = require('cmp')
lsp.setup_nvim_cmp({
    mapping = {
        --['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        --['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-j>'] = cmp.mapping(function(fallback)
          vim.api.nvim_feedkeys(vim.fn['copilot#Accept'](vim.api.nvim_replace_termcodes('<Tab>', true, true, true)), 'n', true)
        end),
    },
})

lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

