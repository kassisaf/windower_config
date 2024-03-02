function get_sets()
  include('Zuri-Logic.lua')
  job_init(4, 1, 4)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  my_only_thf_cape = {name="Toutatis's Cape", augments={
    'DEX+20',
    'Accuracy+20 Attack+20',
    'DEX+10',
    '"Store TP"+10',
    'Damage taken-5%',
  }}

  -- JSE Notes:
  -- Artifact: Rogue's / Pillager's
  -- Relic:    Assassin's / Plunderer's
  -- Empyrean: Raider's / Skulker's
  af_head        = "Rogue's Bonnet"
  af_body        = "Pillager's Vest +2"
  af_hands       = "Pillager's Armlets"
  af_legs        = "Rogue's Culottes"
  af_feet        = "Rogue's Poulaines"

  relic_head     = "Plunderer's Bonnet +1"
  relic_body     = "Plunderer's Vest +3"
  relic_hands    = "Plunderer's Armlets"
  relic_legs     = "Plunderer's Culottes"
  relic_feet     = "Plunderer's Poulaines +3"

  empy_head      = "Skulker's Bonnet +2"
  empy_body      = "Skulker's Vest +2"
  -- empy_hands     = ""
  empy_legs      = "Raider's Culottes +1"
  empy_feet      = "Skulker's Poulaines +2"
  jse_neck       = "Assassin's Gorget +1"
  sortie_earring = "Skulker's Earring +1"

  sets.dynamis_rp = {
    neck = jse_neck,
  }

  -- Basic sets
  sets.idle = set_combine(full_nyame, {
    ammo       = "Crepuscular Pebble",
    feet       = empy_feet,
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    left_ear   = "Eabani Earring",
    right_ear  = "Odnowa Earring +1",
    left_ring  = "Defending Ring",
    right_ring = "Shneddick Ring",
    back       = my_only_thf_cape,
  })
  sets.TP = {
    main       = "Aeneas",
    sub        = "Gleti's Knife",
    range      = empty,
    ammo       = "Coiste Bodhar",
    head       = empy_head,
    body       = af_body,
    hands      = "Adhemar Wristbands +1",
    legs       = "Gleti's Breeches",
    feet       = relic_feet,
    neck       = jse_neck,
    waist      = "Windbuffet Belt +1",
    left_ear   = "Eabani Earring",
    right_ear  = sortie_earring,
    left_ring  = "Chirich Ring +1",
    right_ring = "Hetairoi Ring", -- Get Epona's Ring
    back       = my_only_thf_cape,
  }
  sets.FC = {
    legs       = "Limbo Trousers",     -- 3%
    left_ear   = "Loquacious Earring", -- "Enhances"
    waist      = "Cornelia's Belt",    -- For 10% haste if midcast doesn't swap it off
  }

  -- Shooting sets
  sets.precast.RA = {
    range      = "Jinx Discus",
    ammo       = empty,
  }
  sets.midcast.RA = set_combine(full_malignance, {
    body       = "Meghanada Cuirie +2",
    neck       = "Caro Necklace",
    waist      = "Eschan Stone",
    left_ring  = "Cacoethic Ring +1",
    -- right_ring = "Cacoethic Ring",
    right_ring = "Ephramad's Ring",
    left_ear   = "Telos Earring",
    right_ear  = "Dignitary's Earring",
    back       = "Sokolski Mantle",
  })

  -- Precast sets
  sets.precast["Utsusemi"] = set_combine(sets.FC, {
    neck = "Magoraga Beads",
    body = "Passion Jacket",
  })

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(full_nyame, {
    ammo       = "Coiste Bodhar",
    body       = empy_body,
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ring  = "Regal Ring",
    right_ring = "Ephramad's Ring",
    left_ear   = "Moonshade Earring",
    right_ear  = "Odr Earring",
    back       = my_only_thf_cape,
  })
  sets.precast.WS["Rudra's Storm"] = set_combine(full_nyame, {
    ammo       = "Coiste Bodhar",
    body       = empy_body,
    neck       = jse_neck,
    left_ring  = "Ilabrat Ring",
    right_ring = "Ephramad's Ring",
    left_ear   = "Moonshade Earring",
    right_ear  = "Sherida Earring",
    waist      = "Kentarch Belt +1",
    back       = my_only_thf_cape,
  })
  sets.precast.WS["Shark Bite"] = set_combine(sets.precast.WS["Rudra's Storm"], {
    waist = "Sailfi Belt +1",
  })
  sets.precast.WS["Evisceration"] = {
    ammo       = "Yetshila",
    head       = "Blistering Sallet +1",
    body       = relic_body,
    hands      = "Adhemar Wristbands +1",
    legs       = empy_legs,
    feet       = "Adhemar Gamashes +1",
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ring  = "Begrudging Ring",
    right_ring = "Ephramad's Ring",
    left_ear   = "Moonshade Earring",
    right_ear  = "Odr Earring",
    back       = my_only_thf_cape,
  }
  sets.precast.WS["Extenterator"] = {
    ammo       = "Coiste Bodhar",
    head       = empy_head,
    body       = empy_body,
    hands      = empy_hands,
    legs       = "Nyame Flanchard",
    feet       = relic_feet,
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ring  = "Ephramad's Ring",
    right_ring = "Regal Ring",        -- Gere Ring
    left_ear   = "Sherida Earring",
    right_ear  = sortie_earring,
    back       = my_only_thf_cape,
  }
  sets.precast.WS["Aeolian Edge"] = set_combine(full_nyame, {
    ammo       = "Ghastly Tathlum +1",
    neck       = "Sibyl Scarf",        -- Baetyl Pendant
    waist      = "Eschan Stone",       -- Orpheus's Sash
    left_ring  = "Shiva Ring +1",      -- Epaminondas
    right_ring = "Dingir Ring",
    left_ear   = "Moonshade Earring",
    right_ear  = "Friomisi Earring",
  })
  sets.precast.WS["Savage Blade"] = set_combine(full_nyame, {
    ammo       = "Oshasha's Treatise",
    body       = empy_body,
    neck       = "Republican Platinum Medal",
    waist      = "Sailfi Belt +1",
    left_ring  = "Regal Ring",
    right_ring = "Ephramad's Ring",
    left_ear   = "Moonshade Earring",
    right_ear  = "Telos Earring",
  })

  -- Job ability sets
  sets.precast["Conspirator"] = {
    body = "Skulker's Vest +2",
  }
  sets.precast["Flee"] = {
    feet = af_feet,
  }
  sets.precast["Hide"] = {
    feet = af_body,
  }
  sets.precast["Feint"] = {
    feet = relic_legs,
  }
  sets.precast["Perfect Dodge"] = {
    hands = relic_hands, -- +10 seconds
  }
  -- Use TH for targeted JA's
  sets.precast["Despoil"] = set_combine(sets.th, {
    legs = "Raider's Culottes +1",
    feet = "Skulker's Poulaines +2",
  })
  sets.precast["Mug"] = set_combine(sets.th, {
    head = relic_head,
  })
  sets.precast["Steal"] = set_combine(sets.th, {
    head  = relic_head,            -- Enhances Aura Steal
    hands = "Thief's Kote",        -- Steal +3
    legs  = "Assassin's Culottes", -- Steal +5,    lost after reforge
    feet  = af_feet,               -- Steal +2 NQ, +3/+3/+10/+15 with upgrades
  })
  sets.precast["Box Step"]   = sets.TH
  sets.precast["Quick Step"] = sets.TH
  sets.precast["Waltz"] = set_combine(sets.idle, {
    ammo       = "Yamarang",
    head       = "Mummu Bonnet +2",   -- Waltz +9%
    body       = "Passion Jacket",    -- Waltz +13%
    -- legs       = "Dashing Subligar",  -- Blink effect during Waltz
    -- hands      = "Slither Gloves +1", -- Waltz +5%
    left_ring  = "Defending Ring",
    -- left_ring  = "Valseur's Ring",    -- Waltz +3%
    right_ring = "Asklepian Ring",    -- Waltz received +3%
  })
  sets.precast["Curing Waltz"]  = sets.precast["Waltz"]
  sets.precast["Curing Waltz II"]  = sets.precast["Waltz"]
  sets.precast["Curing Waltz III"] = sets.precast["Waltz"]
  sets.precast["Divine Waltz"] = sets.precast["Waltz"]
  
  -- Midcast sets
  sets.midcast["Aspir"] = set_combine(full_malignance, {
    ammo       = "Hydrocera",
    head       = "Pixie Hairpin +1",
    neck       = "Sanctity Necklace",
    left_ring  = "Archon Ring",
    right_ring = "Dingir Ring",
    left_ear   = "Dignitary's Earring",
    right_ear  = "Hermetic Earring",
    waist      = "Eschan Stone",
  })

  -- Other sets
  sets.TH = {
    -- sub   = "Sandung",                -- TH+1
    ammo  = "Perfect Lucky Egg",      -- TH+1
    -- head  = "Herculean Helm",         -- TH+1
    -- hands = "Assassin's Armlets +2",  -- TH+2
    feet  = "Skulker's Poulaines +2", -- TH+4
  }
  sets.midcast["Poisonga"] = set_combine(sets.idle, sets.TH)
  sets.midcast["Poison"] = sets.midcast["Poisonga"]

  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    main      = "Voluspa Knife",
    sub       = "Gleti's Knife",
    ammo      = "Yetshila",
    hands     = "Mummu Wrists +2",
    legs      = "Meghanada Chausses +2",
    left_ear  = "Eabani Earring",
    right_ear = "Odr Earring",
    left_ring = "Mummu Ring",
  })
  sets.Mireu = set_combine(sets.DI, full_nyame)

end -- get_sets()