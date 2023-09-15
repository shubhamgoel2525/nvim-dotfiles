local lualine = require('lualine')

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'solarized_dark',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = {{
      'filename',
      file_status = true, -- displays the file status
      path = 0 -- 0 = just filename
    }},
    lualine_x = {
      { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = 'E', warn = 'W', info = 'I',
        hint = 'H' } }
    }
  }
}
