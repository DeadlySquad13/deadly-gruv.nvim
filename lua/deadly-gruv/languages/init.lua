local lush = require('lush')

local json = require('deadly-gruv.languages.json');
local python = require('deadly-gruv.languages.python');
local css = require('deadly-gruv.languages.css');
local lua = require('deadly-gruv.languages.lua');
local html = require('deadly-gruv.languages.html');
local typescript = require('deadly-gruv.languages.typescript');
local typescriptreact = require('deadly-gruv.languages.typescriptreact');

local languages = lush.merge({
  json,
  python,
  css,
  lua,
  html,
  typescript,
  typescriptreact
});

return languages;
