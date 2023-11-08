-- Set <space> as the leader key
-- Устанавливаем запятую, как лидер кей. Она будет вызывать меню всплывающее.
-- По умолчанию там был пробел, но пробелом мне удобнее листать. Поэтому переделал.
-- И так понимаю, что это определение должно быть загружено раньше всех плагинов.
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Install lazy plugin manager
require('lazy-bootstrap')

-- Setup lazy plugin manager - configure plugins
require('lazy-plugins')

-- Set options
require('options')

-- Configure keymaps
require('keymaps')

-- Configure Telescope (fuzzy finder)
require('telescope-setup')

-- Configure LSP (Language Server Protocol)
require('lsp-setup')

-- Configure CMP (completion)
require('cmp-setup')


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
