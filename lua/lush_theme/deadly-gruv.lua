local lush = require('lush')
local base = require('lush_theme.base')
local languages = require('lush_theme.json');
local plugins = require('lush_theme.treesitter');

	--local load_plugins = loader.load_plugins(config);
	--local load_langs = loader.load_langs(config);
local theme = lush.merge({ base, languages, plugins });
    
return theme;
