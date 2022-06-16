local lush = require('lush')

local json = require('deadly-gruv.languages.json');
local python = require('deadly-gruv.languages.python');

local languages = lush.merge({
  json,
  python,
});

return languages;
