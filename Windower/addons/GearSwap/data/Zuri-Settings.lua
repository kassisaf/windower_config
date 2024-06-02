-- Any items defined here will be locked when equipped manually
lockables = {
  "Warp Ring",
  "Reraise Ring",
  "White Rarab Cap +1",
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

-- All Jobs Holy Water set
sets.global.holy_water = {
  neck = "Nicander's Necklace", -- +30%
  left_ring = "Blenmot's Ring +1", -- +10%
  right_ring = "Blenmot's Ring +1" -- +10%
}

-- All Jobs HP+ set for forcing HP aggro / Omen cure objectives
sets.global.hp_spike = set_combine(nyame, {
  neck = "Sanctity Necklace", -- HP +35
  waist = "Platinum Moogle Belt", -- HP +10%
  left_ear = "Odnowa Earring +1", -- 110 MP to HP
  right_ear = "Cryptic Earring", -- HP +40, enmity +4
  left_ring = "Defending Ring",
  right_ring = "Meridian Ring", -- HP +90, dark res -20
  back = "Repulse Mantle"
})
