function get_sets()
  include('Zuri-Logic.lua')
  job_init(6, 1, 6)   -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}
  sets.cycles = {}

  -- Gear Aliases

  -- JSE Notes:
  -- Artifact: Gallant / Reverence
  -- Relic:    Valor / Caballarius
  -- Empyrean: Creed / Chevalier
  -- af_head     = "Gallant "
  -- af_body     = "Gallant "
  -- af_hands    = "Gallant "
  -- af_legs     = "Gallant "
  -- af_feet     = "Gallant "
  -- relic_head  = "Valor Coronet"
  -- relic_body  = "Valor Surcoat"
  -- relic_hands = "Valor Gauntlets"
  -- relic_legs  = "Valor Breeches"
  -- relic_feet  = "Valor Leggings"
  -- empy_head   = "Creed "
  -- empy_body   = "Creed "
  -- empy_hands  = "Creed "
  -- empy_legs   = "Creed "
  -- empy_feet   = "Creed "
  -- jse_neck    = "Creed "

  -- Basic sets
  sets.idle = set_combine(full_nyame, {
    main       = "Naegling",
    sub        = "Nibiru Shield",
    ammo       = "Sapience Orb",
    body       = "Hjarrandi Breastplate",
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    -- left_ear   = "Eabani Earring",
    left_ear   = "Thureous Earring",
    right_ear  = "Odnowa Earring +1",
    left_ring  = "Defending Ring",
    right_ring = "Shneddick Ring",
    back       = "Shadow Mantle",
  })
  sets.TP = set_combine(sets.idle, {
    -- legs       = empy_legs,

    -- neck       = "Loricate Torque +1", -- Sacrificing neck for DT, consider using ring slot instead after Iskur Gorget
    -- waist      = "Sailfi Belt +1",
    -- left_ear   = "Eabani Earring",
    -- right_ear  = "Telos Earring",
    -- left_ring  = "Chirich Ring +1",
    -- right_ring = "Chirich Ring +1",
    -- back       = melee_tp_cape,
  })
  sets.FC = {
    left_ear   = "Loquacious Earring", -- "Enhances"
    right_ring = "Kishar Ring",        -- 4%
    waist      = "Cornelia's Belt",    -- For 10% haste if midcast doesn't swap it off
  }

  -- Precast sets
  sets.precast["Utsusemi"] = set_combine(sets.FC, {
    neck = "Magoraga Beads",
    body = "Passion Jacket",
  })

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(full_nyame, {
    hands      = "Meghanada Gloves +2",
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ear   = "Moonshade Earring",
    right_ear  = "Ishvara Earring",
    left_ring  = "Regal Ring",
    right_ring = "Ephramad's Ring",     -- Fall back to Regal or Apate if swapping TVR ring
    back       = savage_cape,
  })
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    neck  = "Republican Platinum Medal",
    waist = "Sailfi Belt +1",
  })
  sets.precast.WS["Requiescat"] = set_combine(sets.precast.WS.melee, {
    left_ear  = "Telos Earring",
    right_ear = "Ishvara Earring",
    -- back = "" MND/Atk./Acc./DA
  })
  sets.precast.WS["Aeolian Edge"] = set_combine(sets.precast.WS.melee, {
    body       = relic_body,
    feet       = relic_feet,
    neck       = "Sanctity Necklace",
    waist      = "Eschan Stone",
    right_ear  = "Friomisi Earring",
    left_ring  = "Dingir Ring",
    right_ring = "Shiva Ring +1",
  })
  
  -- Job ability sets
  -- sets.precast["Fold"] = {
  --   hands = relic_hands,
  -- }
  -- sets.precast["Random Deal"] = {
  --   body = relic_body,
  -- }
  -- sets.precast["Snake Eye"] = {
  --   legs = relic_legs,
  -- }
  -- sets.precast["Wild Card"] = {
  --   feet = relic_feet,
  -- }

  -- Use TH for targeted JA's
  -- sets.precast["Box Step"]   = sets.TH
  -- sets.precast["Quick Step"] = sets.TH

  -- Midcast sets

  -- Other sets
  sets.TH = {
    ammo = "Perfect Lucky Egg",
    head = "Herculean Helm",
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    main      = "Voluspa Knife",
    sub       = "Gleti's Knife",
    hands     = "Mummu Wrists +2",
    left_ear  = "Odr Earring",
    left_ring = "Mummu Ring",
  })
  sets.dynamis_rp = {
    -- sub  = stp_knife,
    -- neck = jse_neck,
  }

end -- get_sets()
