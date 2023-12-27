function get_sets()
  include('Zuri-Logic.lua')
  job_init(2, 2, 17)  -- Macro book, macro page, lockstyle set

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
  af_head     = "Rogue's Bonnet"
  -- af_body     = "Rogue's Vest" -- Storage slip 4
  af_hands    = "Pillager's Armlets"
  af_legs     = "Rogue's Culottes"
  af_feet     = "Rogue's Poulaines"
  relic_head  = "Assassin's Bonnet +1"
  -- relic_body  = "Assassin's Vest" -- Storage slip
  relic_hands = "Assassin's Armlets +2"
  relic_legs  = "Assassin's Culottes +2"
  relic_feet  = "Plunderer's Poulaines +1"
  empy_head   = "Skulker's Bonnet +2"
  empy_body   = "Skulker's Vest +2"
  -- empy_hands  = ""
  empy_legs   = "Raider's Culottes +1"
  empy_feet   = "Skulker's Poulaines +2"
  -- jse_neck    = ""

  -- Basic sets
  sets.idle = {
    head       = "Nyame Helm",
    body       = "Nyame Mail",
    hands      = "Nyame Gauntlets",
    legs       = "Nyame Flanchard",
    -- feet       = "Nyame Sollerets",
    feet       = "Skulker's Poulaines +2",
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    left_ear   = "Eabani Earring",
    right_ear  = "Meili Earring",
    left_ring  = "Defending Ring",
    right_ring = "Shneddick Ring",
    back       = "Toutatis's Cape",
  }
  sets.TP = {
    main       = "Aeneas",
    sub        = "Gleti's Knife",
    range      = empty,
    ammo       = "Coiste Bodhar",
    head       = "Skulker's Bonnet +2",
    body       = "Adhemar Jacket",
    -- TODO: DT command for THF
    -- hands      = "Adhemar Wristbands +1",
    -- legs       = "Meghanada Chausses +2",
    -- feet       = "Plunderer's Poulaines +1",
    hands      = "Malignance Gloves",
    legs       = "Malignance Tights",
    feet       = "Malignance Boots",
    neck       = "Anu Torque",
    waist      = "Sailfi Belt +1",
    left_ear   = "Eabani Earring",
    right_ear  = "Skulker's Earring",
    left_ring  = "Chirich Ring +1",
    right_ring = "Petrov Ring",       -- Get Epona's Ring
    back       = "Toutatis's Cape",
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
    ammo       = "Yetshila",
    head       = empy_head,
    body       = empy_body,
    hands      = "Meghanada Gloves +2",
    legs       = "Meghanada Chausses +2",
    feet       = empy_feet,
    neck       = "Caro Necklace",
    waist      = "Grunfeld Rope",
    left_ear   = "Moonshade Earring",
    right_ear  = "Odr Earring",
    -- left_ring  = "Ilabrat Ring",
    -- right_ring = "Regal Ring",
    left_ring  = "Rufescent Ring",
    -- right_ring = "Apate Ring",
    right_ring = "Ephramad's Ring",
    back       = my_only_thf_cape,
  })
  sets.precast.WS["Rudra's Storm"] = set_combine(full_nyame, {
    ammo       = "Coiste Bodhar", -- Voluspa Tathlum, oshasha's treatise, 
    body       = empy_body,
    neck       = "Caro Necklace",
    left_ring  = "Apate Ring",
    right_ring = "Ephramad's Ring",
    left_ear   = "Moonshade Earring",
    right_ear  = "Odr Earring",
    waist      = "Grunfeld Rope", -- get "Kentarch Belt +1"
    back       = my_only_thf_cape,
    -- neck       = jse_neck,
  })
  sets.precast.WS.crit["Rudra's Storm"] = set_combine(sets.precast.WS["Rudra's Storm"], {
    -- TODO add more crit (Gleti's?)
    ammo = "Yetshila",
    body = "Meghanada Cuirie +2",
  })
  sets.precast.WS["Shark Bite"] = sets.precast.WS["Rudra's Storm"]
  sets.precast.WS["Evisceration"] = set_combine(sets.precast.WS.melee, {
    ammo       = "Yetshila",
    hands      = "Adhemar Wristbands +1",
    feet       = "Adhemar Gamashes +1",
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ring  = "Mummu Ring",
    right_ring = "Ephramad's Ring",
  })
  sets.precast.WS["Extenterator"] = set_combine(sets.precast.WS.melee, {
    -- ammo      = "Seething Bomblet +1",
    neck      = "Fotia Gorget",
    waist     = "Fotia Belt",
    left_ear  = "Brutal Earring",
    right_ear = "Sherida Earring",
  })
  sets.precast.WS["Dancing Edge"] = sets.precast.WS["Evisceration"]
  sets.precast.WS["Aeolian Edge"] = set_combine(full_nyame, {
    ammo       = "Ghastly Tathlum +1",
    neck       = "Sibyl Scarf",
    waist      = "Eschan Stone",
    left_ear   = "Moonshade Earring",
    right_ear  = "Friomisi Earring",
    left_ring  = "Dingir Ring",
    right_ring = "Shiva Ring +1",
  })
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    neck      = "Republican Platinum Medal",
    waist     = "Sailfi Belt +1",
    right_ear = "Ishvara Earring",
  })

  -- Job ability sets
  sets.precast["Conspirator"] = {
    body = "Skulker's Vest +2",
  }
  sets.precast["Flee"] = {
    feet = "Rogue's Poulaines",
  }
  sets.precast["Perfect Dodge"] = {
    hands = "Assassin's Armlets +2", -- +10 seconds
  }
  -- Use TH for targeted JA's
  sets.precast["Despoil"] = set_combine(sets.th, {
    legs = "Raider's Culottes +1",
    feet = "Skulker's Poulaines +2",
  })
  sets.precast["Mug"] = set_combine(sets.th, {
    head = "Assassin's Bonnet +1",
  })
  sets.precast["Steal"] = set_combine(sets.th, {
    head  = "Rogue's Bonnet",      -- Steal +1
    hands = "Thief's Kote",        -- Steal +3
    legs  = "Assassin's Culottes", -- Steal +5
    feet  = "Rogue's Poulaines",   -- Steal +2
  })
  sets.precast["Box Step"]   = sets.TH
  sets.precast["Quick Step"] = sets.TH
  sets.precast["Curing Waltz"] = set_combine(sets.idle, {
    ammo       = "Yamarang",
    body       = "Passion Jacket",
    left_ring  = "Defending Ring",
    right_ring = "Asklepian Ring",
  })
  sets.precast["Curing Waltz II"]  = sets.precast["Curing Waltz"]
  sets.precast["Curing Waltz III"] = sets.precast["Curing Waltz"]
  
  -- Midcast sets

  -- Other sets
  sets.TH = {
    -- sub   = "Sandung",                -- TH+1
    ammo  = "Perfect Lucky Egg",      -- TH+1
    -- head  = "Herculean Helm",         -- TH+1
    -- hands = "Assassin's Armlets +2",  -- TH+2
    feet  = "Skulker's Poulaines +2", -- TH+4
  }
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