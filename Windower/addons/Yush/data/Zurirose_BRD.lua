-- function sing(song_name, pianissimo)
--   if pianissimo then
--     return 'input /ja "Pianissimo" <me>; wait 1; input /ma "' .. song_name .. '" <stpt>'
--   end
--   return 'input /ma "' .. song_name .. '" <me>'
-- end

return {
  ['Ctrl+1'] = 'input /ja "Marcato" <me>',
  ['Ctrl+2'] = 'input /ma "Knight\'s Minne V" <stpt>',
  ['Ctrl+3'] = 'input /ma "Valor Minuet III" <stpt>',
  ['Ctrl+4'] = 'input /ma "Valor Minuet IV" <stpt>',
  ['Ctrl+5'] = 'input /ma "Valor Minuet V" <stpt>',
  ['Ctrl+6'] = 'input /ma "Victory March" <stpt>',
  ['Ctrl+7'] = 'input /ma "Honor March" <stpt>',
  ['Ctrl+8'] = 'input /ma "Sword Madrigal" <stpt>',
  ['Ctrl+9'] = 'input /ma "Blade Madrigal" <stpt>',
  ['Ctrl+0'] = 'input /ma "Mage\'s Ballad III" <stpt>',

  ['Alt+1']  = 'input /ma "Carnage Elegy" <t>',
  ['Alt+2']  = 'input /ma "Pining Nocturne" <t>',
  ['Alt+3']  = 'input /ma "Foe Requiem VII" <t>',
  ['Alt+4']  = 'input /ma "Magic Finale" <t>',
  ['Alt+5']  = 'input /ma "Silence" <t>',
  ['Alt+6']  = 'input /ma "Light Threnody" <t>',
  ['Alt+7']  = 'input /ma "Earth Threondy" <t>',
  ['Alt+8']  = 'input /ma "Foe Lullaby II" <t>',
  ['Alt+9']  = 'input /ma "Horde Lullaby" <t>',
  ['Alt+0']  = 'input /ma "Horde Lullaby II" <t>',

  ['Win+1'] = 'input /ja "Pianissimo" <me>',
  ['Win+2'] = 'input /ma "Mage\'s Ballad II" <stpt>',
  ['Win+3'] = 'input /ma "Mage\'s Ballad III" <stpt>',
  ['Win+4'] = 'input /ma "Knight\'s Minne IV" <stpt>',
  ['Win+5'] = 'input /ma "Knight\'s Minne V" <stpt>',
  ['Win+6'] = 'input /ma "Learned Etude" <stpt>',
  ['Win+7'] = 'input /ma "Sage Etude" <stpt>',
  ['Win+8'] = 'input /ma "Adventurer\'s Dirge" <stpt>', -- Enmity DOWN
  ['Win+9'] = 'input /ma "Foe Sirvente" <stpt>', -- Enmity UP
  ['Win+0'] = 'gs c dummy', -- Toggles use of Daurdabla in midcast
}

-- TODO: Separate pages for:
-- Minne/Mambo, INT/STR/CHR etudes, Carols (fire, lightning), Threnodies (earth, light), Sirvente/Dirge, 

-- TODO: Use degrade logic to change target from <me> to <stpt> if Pianissimo is active