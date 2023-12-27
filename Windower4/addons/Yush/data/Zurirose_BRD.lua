-- local pianissimo = false

-- function sing(song_name, pianissimo)
--   if pianissimo then
--     return 'input /ja "Pianissimo" <me>; wait 1; input /ma "' .. song_name .. '" <stpt>'
--   end
--   return 'input /ma "' .. song_name .. '" <me>'
-- end

etudes = {}
threnodies = {}
carols = {}

return {
  ['Ctrl+1'] = 'input /ja "Nightingale" <me>; wait 2; input /ja "Troubador" <me>',
  ['Ctrl+2'] = 'input /ja "Marcato" <me>',
  ['Ctrl+3'] = 'input /ma "Valor Minuet III" <stpt>',
  ['Ctrl+4'] = 'input /ma "Valor Minuet IV" <stpt>',
  ['Ctrl+5'] = 'input /ma "Valor Minuet V" <stpt>',
  ['Ctrl+6'] = 'input /ma "Advancing March" <stpt>',
  ['Ctrl+7'] = 'input /ma "Honor March" <stpt>',
  ['Ctrl+8'] = 'input /ma "Blade Madrigal" <stpt>',
  ['Ctrl+9'] = 'input /ma "Knight\'s Minne V" <stpt>',
  ['Ctrl+0'] = 'input /ma "Archer\'s Prelude" <stpt>',
  ['Alt+1']  = 'input /ma "Carnage Elegy" <stnpc>',
  ['Alt+2']  = 'input /ma "Pining Nocturne" <stnpc>',
  ['Alt+3']  = 'input /ma "Magic Finale" <stnpc>',
  ['Alt+4']  = 'input /ma "Foe Requiem VII" <stnpc>',
  ['Alt+5']  = 'input /ma "Light Threnody" <stnpc>',
  ['Alt+6']  = 'input /ma "Foe Lullaby II" <stnpc>',
  ['Alt+7']  = 'input /ma "Horde Lullaby" <stnpc>',
  ['Alt+8']  = 'input /ma "Horde Lullaby II" <stnpc>',
  ['Alt+9']  = 'input /ja "Pianissimo" <me>',
  ['Alt+0']  = 'gs c dummy', -- Tells gearswap to toggle use of Daurdabla in midcast
}

-- TODO: sirvente, dirge, separate page for nitro/dummy/marcato?,