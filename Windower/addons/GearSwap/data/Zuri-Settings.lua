-- Any items defined here will be locked when equipped manually
lockables = {
  "Warp Ring",
  "Dim. Ring (Mea)",
  -- "Dim. Ring (Holla)",
  -- "Dim. Ring (Dem)",
  "Endorsement Ring",
  "Trizek Ring",
  -- "Emporox's Ring",
  "Echad Ring",
  -- "Caliber Ring",
  -- "Facility Ring",
  "Guide Beret",
  "Reraise Ring",
  "Warp Cudgel",
  -- "Nexus Cape",
  "Portafurnace" -- lol
}

special_ammo = {
  "Hauksbok Bullet",
  "Animikii Bullet"
}

elemental_obi_weaponskills = S {
  "Aeolian Edge",
  "Leaden Salute"
}

holy_water_set = {
  left_ring = "Blenmot's Ring +1",
  right_ring = "Blenmot's Ring +1"
}

-- All Jobs HP+ set for forcing HP aggro / Omen cure objectives
cure_cheat_set = set_combine(nyame, {
  neck = "Sanctity Necklace", -- HP +35
  waist = "Platinum Moogle Belt", -- HP +10%
  left_ear = "Odnowa Earring +1", -- 110 MP to HP
  right_ear = "Cryptic Earring", -- HP +40, enmity +4
  left_ring = "Defending Ring",
  right_ring = "Meridian Ring", -- HP +90, dark res -20
  back = "Repulse Mantle"
})
