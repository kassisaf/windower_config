function get_sets()
  include('Zuri-Logic.lua')
  -- job_init(4, 1, 4) -- Macro book, macro page, lockstyle set
  initialize_empty_sets()

  -- Basic sets
  sets.idle = set_combine(aurore, {
    head = "Blistering Sallet",
    body = "Pursuer's Doublet",
    hands = "Rawhide Gloves",
    legs = "Darraigner's Brais",
    feet = "Jute Boots +1",
    neck = "Warder's Charm",
    waist = "Swift Belt",
    left_ear = "Odnowa Earring",
    right_ear = "Genmei Earring",
    left_ring = "Apate Ring",
    right_ring = "Overbearing Ring",
    back = "Relucent Cape"
  })
  sets.TP = set_combine(sets.idle, {
    -- main = "Rhadamanthus",
    main = "Shijo",
    sub = "Ternion Dagger",
    feet = "Rawhide Boots",
    neck = "Lissome Necklace",
    right_ear = "Assuage Earring"
  })

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(sets.TP, {
    neck = "Caro Necklace",
    waist = "Warwolf Belt",
    left_ear = "Kuwunga Earring"
  })
  -- sets.precast.WS["Dancing Edge"] = set_combine(sets.precast.WS.melee, {})
  -- sets.precast.WS["Shark Bite"] = set_combine(sets.precast.WS.melee, {})

  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    main = "Shijo",
    sub = "Tanmogayi"
    -- ammo = "Yetshila",
    -- hands = "Mummu Wrists +2",
    -- legs = "Meghanada Chausses +2",
    -- left_ear = "Eabani Earring",
    -- right_ear = "Odr Earring",
    -- left_ring = "Mummu Ring"
  })
end -- get_sets()
