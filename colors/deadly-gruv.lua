-- You probably always want to set this in your vim file
vim.opt.background = 'light'
vim.g.colors_name = 'deadly-gruv'

-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.
--
-- This isn't strictly required but it can be a useful trick if you are
-- incrementally editing your config a lot and want to be sure your themes
-- changes are being picked up without restarting neovim.
--
-- Note if you're working in on your theme and have :Lushify'd the buffer,
-- your changes will be applied with our without the following line.
--
-- The performance impact of this call can be measured in the hundreds of
-- *nanoseconds* and such could be considered "production safe".
package.loaded['deadly-gruv'] = nil;
package.loaded['deadly-gruv.base'] = nil;
package.loaded['deadly-gruv.colors'] = nil;
package.loaded['deadly-gruv.colors.color_palette'] = nil;
package.loaded['deadly-gruv.colors.semantic_palette'] = nil;
package.loaded['deadly-gruv.colors.base_and_treesitter_meta_groups'] = nil;
package.loaded['deadly-gruv.colors.color_harmonies'] = nil;

-- Meta groups.
package.loaded['deadly-gruv.meta_groups'] = nil;
package.loaded['deadly-gruv.meta_groups.base_and_treesitter'] = nil;

-- Languages.
package.loaded['deadly-gruv.languages'] = nil;

package.loaded['deadly-gruv.languages.json'] = nil;

package.loaded['deadly-gruv.languages.python'] = nil;

package.loaded['deadly-gruv.languages.lua'] = nil;

package.loaded['deadly-gruv.languages.css'] = nil;
package.loaded['deadly-gruv.languages.html'] = nil;
package.loaded['deadly-gruv.languages.typescript'] = nil;
package.loaded['deadly-gruv.languages.typescriptreact'] = nil;

package.loaded['deadly-gruv.languages.markdown'] = nil;

-- Plugins.
package.loaded['deadly-gruv.plugins'] = nil;
package.loaded['deadly-gruv.plugins.treesitter'] = nil;
package.loaded['deadly-gruv.plugins.bufferline'] = nil;
package.loaded['deadly-gruv.plugins.telescope'] = nil;
package.loaded['deadly-gruv.plugins.dashboard'] = nil;
package.loaded['deadly-gruv.plugins.nvim_ts_rainbow'] = nil;
package.loaded['deadly-gruv.plugins.quick_scope'] = nil;

-- include our theme file and pass it to lush to apply
require('lush')(require('deadly-gruv'))

