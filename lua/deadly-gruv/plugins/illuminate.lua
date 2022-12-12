local lush = require('lush')
local hsl = require('lush.hsl');

local delta = require('deadly-gruv.constants').delta;

local colors = require('deadly-gruv.colors')
local mc = colors.mc;
local sp = colors.sp;
local cp = colors.cp;

local base = require('deadly-gruv.base')
local mg = require('deadly-gruv.meta_groups')

local M = lush(function()
  return {
    -- Default highlight group used for references if no kind information is available.
    IlluminatedWordText { bg = base.Visual.bg.lighten(3*delta), gui = 'underline' },
    -- Highlight group used for references of kind read (readonly variables).
    IlluminatedWordRead { IlluminatedWordText },
    -- Highlight group used for references of kind write.
    IlluminatedWordWrite { IlluminatedWordRead },
  }
end)

return M;
