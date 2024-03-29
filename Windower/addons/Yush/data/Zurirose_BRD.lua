-- function sing(song_name, pianissimo)
--   if pianissimo then
--     return 'input /ja "Pianissimo" <me>; wait 1; input /ma "' .. song_name .. '" <stpt>'
--   end
--   return 'input /ma "' .. song_name .. '" <me>'
-- end

return {
  ['Ctrl+1'] = 'input /ja "Pianissimo" <me>',
  ['Ctrl+2'] = 'input /ma "Knight\'s Minne V" <me>',
  ['Ctrl+3'] = 'input /ma "Valor Minuet III" <me>',
  ['Ctrl+4'] = 'input /ma "Valor Minuet IV" <me>',
  ['Ctrl+5'] = 'input /ma "Valor Minuet V" <me>',
  ['Ctrl+6'] = 'input /ma "Victory March" <me>',
  ['Ctrl+7'] = 'input /ma "Honor March" <me>',
  ['Ctrl+8'] = 'input /ma "Blade Madrigal" <me>',
  ['Ctrl+9'] = 'input /ma "Mage\'s Ballad II" <me>',
  ['Ctrl+0'] = 'input /ma "Mage\'s Ballad III" <me>',

  ['Alt+1']  = 'input /ma "Carnage Elegy" <stnpc>',
  ['Alt+2']  = 'input /ma "Pining Nocturne" <stnpc>',
  ['Alt+3']  = 'input /ma "Foe Requiem VII" <stnpc>',
  ['Alt+4']  = 'input /ma "Magic Finale" <stnpc>',
  ['Alt+5']  = 'input /ma "Silence" <stnpc>',
  ['Alt+6']  = 'input /ma "Light Threnody" <stnpc>',
  ['Alt+7']  = 'input /ma "Earth Threondy" <stnpc>',
  ['Alt+8']  = 'input /ma "Foe Lullaby II" <stnpc>',
  ['Alt+9']  = 'input /ma "Horde Lullaby" <stnpc>',
  ['Alt+0']  = 'input /ma "Horde Lullaby II" <stnpc>',

  -- Xevioso
  ['Win+1'] = 'input /ma "Sentinel\'s Scherzo" <me>',
  ['Win+2'] = 'input /ma "Valor Minuet V" <me>',
  ['Win+3'] = 'input /ma "Wind Carol II" <me>',
  ['Win+4'] = 'input /ma "Knight\'s Minne V" <me>',
  ['Win+5'] = 'input /ma "Honor March" <me>',

  -- ['Win+1'] = 'input /ja "Pianissimo" <me>',
  -- ['Win+2'] = 'input /ma "Mage\'s Ballad II" <stpt>',
  -- ['Win+3'] = 'input /ma "Mage\'s Ballad III" <stpt>',
  -- ['Win+4'] = 'input /ma "Knight\'s Minne IV" <stpt>',
  -- ['Win+5'] = 'input /ma "Knight\'s Minne V" <stpt>',
  -- ['Win+6'] = 'input /ma "Learned Etude" <stpt>',
  -- ['Win+7'] = 'input /ma "Sage Etude" <stpt>',
  -- ['Win+8'] = 'input /ma "Adventurer\'s Dirge" <stpt>', -- Enmity DOWN
  -- ['Win+9'] = 'input /ma "Foe Sirvente" <stpt>', -- Enmity UP
  ['Win+0'] = 'gs c dummy', -- Toggles use of Daurdabla in midcast
}

-- TODO: Separate pages for:
-- Minne/Mambo, INT/STR/CHR etudes, Carols (fire, lightning), Threnodies (earth, light), Sirvente/Dirge, 

-- TODO: Use degrade logic to change target from <me> to <stpt> if Pianissimo is active