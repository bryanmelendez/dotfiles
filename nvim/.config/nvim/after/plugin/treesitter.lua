local parsers = { "c", "lua", "vim", "vimdoc", "query" }

-- New nvim-treesitter API (incompatible rewrite).
local ok_new, ts = pcall(require, 'nvim-treesitter')
if ok_new and type(ts.setup) == 'function' then
  ts.setup({})

  if type(ts.install) == 'function' then
    pcall(ts.install, parsers)
  end

  vim.api.nvim_create_autocmd('FileType', {
    callback = function(args)
      pcall(vim.treesitter.start, args.buf)
    end,
  })

  return
end

-- Legacy nvim-treesitter API.
local ok_legacy, configs = pcall(require, 'nvim-treesitter.configs')
if ok_legacy then
  configs.setup({
    ensure_installed = parsers,
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  })
end
