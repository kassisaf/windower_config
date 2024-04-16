abyssea_weapons = {
  club         = 'Feline Hagoita +1',
  dagger       = 'Qutrub Knife',
  great_katana = 'Melon Slicer',
  great_sword  = 'Goujian',
  katana       = 'Yagyu Shortblade +1',
  polearm      = 'Iapetus',
  scythe       = 'Hoe',
  staff        = 'Levin',
  sword        = 'Twinned Blade',
}

function lock_weapon(main_hand)
  return 'gs disable main sub; input /equip main "' .. main_hand .. '"; input /equip sub'
end

return {
  ['Ctrl+1'] = '',
  ['Ctrl+2'] = '',
  ['Ctrl+3'] = '',
  ['Ctrl+4'] = '',
  ['Ctrl+5'] = '',
  ['Ctrl+6'] = '',
  ['Ctrl+7'] = '',
  ['Ctrl+8'] = '',
  ['Ctrl+9'] = '',
  ['Ctrl+0'] = '',
  ['Alt+1']  = '',
  ['Alt+2']  = '',
  ['Alt+3']  = '',
  ['Alt+4']  = '',
  ['Alt+5']  = '',
  ['Alt+6']  = '',
  ['Alt+7']  = '',
  ['Alt+8']  = '',
  ['Alt+9']  = '',
  ['Alt+0']  = 'input /item "Forbidden Key" <t>',
  ['Win+1']  = 'input /echo Sword: Red Lotus (fire), Seraph (light);'        .. lock_weapon(abyssea_weapons.sword),
  ['Win+2']  = 'input /echo Staff: Sunburst (light), Earth Crusher (earth);' .. lock_weapon(abyssea_weapons.staff),
  ['Win+3']  = 'input /echo Dagger: Cyclone (wind), Energy Drain (dark);'    .. lock_weapon(abyssea_weapons.dagger),
  ['Win+4']  = 'input /echo Polearm: Raiden Thrust (thunder);'               .. lock_weapon(abyssea_weapons.polearm),
  ['Win+5']  = 'input /echo Katana: Blade Ei (dark);'                        .. lock_weapon(abyssea_weapons.katana),
  ['Win+6']  = 'input /echo Great Katana: Jinpu (wind), Koki (light);'       .. lock_weapon(abyssea_weapons.great_katana),
  ['Win+7']  = 'input /echo Club: Seraph (light);'                           .. lock_weapon(abyssea_weapons.club),
  ['Win+8']  = 'input /echo Scythe: Shadow of Death (dark);'                 .. lock_weapon(abyssea_weapons.scythe),
  ['Win+9']  = 'input /echo Great Sword: Freezebite (ice);'                  .. lock_weapon(abyssea_weapons.great_sword),
}