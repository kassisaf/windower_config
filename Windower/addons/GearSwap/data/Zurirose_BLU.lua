function get_sets()
  include('Zuri-Logic.lua')
  job_init(5, 1, 5)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- JSE Prefixes:
  -- Artifact: Magus / Assimilator's
  -- Relic:    Mirage / Luhlaza
  -- Empyrean: Mavi / Hashishin
  artifact = {
    -- head  = "Magus Keffiyeh",
    -- body  = "Magus Jubbah",
    hands = "Assimilator's Bazubands +1"
    -- legs  = "Magus Shalwar",
    -- feet  = "Magus Charuqs",
  }
  relic = {
    -- head  = "Mirage Keffiyeh",
    -- body  = "Mirage Jubbah",
    -- hands = "Mirage Bazubands",
    -- legs  = "Mirage Shalwar",
    -- feet  = "Mirage Charuqs",
  }
  empyrean = {
    -- head  = "Mavi Kavuk",
    -- body  = "Mavi Mintan",
    -- hands = "Mavi Bazubands",
    -- legs  = "Mavi Tayt",
    -- feet  = "Mavi Basmak",
  }
  -- jse_neck = ""
  -- sortie_earring = ""

  ambu_cape = {}

  -- Basic sets
  sets.idle = set_combine(nyame, {
    ammo       = "Crepuscular Pebble", -- Staunch Tathlum +1",
    -- body       = empyrean.body,
    neck       = "Loricate Torque +1",
    left_ear   = "Eabani Earring",
    right_ear  = "Odnowa Earring +1",
    left_ring  = "Defending Ring",
    right_ring = "Shneddick Ring",
    waist      = "Carrier's Sash",
    back       = "Shadow Mantle",
  })
  sets.TP = set_combine(sets.idle, {
    main       = "Naegling",
    sub        = "Iris", -- Machaera for trials
    ammo       = "Coiste Bodhar",
    head       = malignance.head,
    body       = "Adhemar Jacket",
    -- hands      = artifact.hands,
    hands      = malignance.hands
    legs       = malignance.legs,
    feet       = malignance.feet,
    neck       = "Sanctity Necklace",
    left_ear   = "Telos Earring",
    right_ear  = "Hashishin Earring +1",
    right_ring = "Chirich Ring +1",
    right_ring = "Chirich Ring +1",
    waist      = "Sailfi Belt +1",
    back       = "Atheling Mantle",
  })
  sets.FC = {
    hands      = empyrean.hands,            -- Fast Cast +5%
    legs       = "Ayanmo Cosciales +2", -- Fast Cast +11%
    feet       = "Agwu's Pigaches",     -- Fast Cast +4%
    waist      = "Cornelia's Belt",     -- For 10% haste if midcast doesn't swap it off
    left_ear   = "Malignance Earring", -- Fast Cast +4%
    right_ear  = "Loquacious Earring", -- Fast Cast +2%
    left_ring  = "Kishar Ring",        -- Fast Cast +4%
    right_ring = "Naji's Loop",        -- Fast Cast +1%
  }

  -- Shooting sets
  sets.precast.RA = {
    range      = "Jinx Discus",
    ammo       = empty,
  }
  sets.midcast.RA = {}

  -- Precast sets
  sets.precast["Utsusemi"] = set_combine(sets.FC, {
    body = "Passion Jacket",
  })

  -- Weaponskill sets
  -- sets.precast.WS.melee = set_combine(nyame, {
  --   ammo       = "Crepuscular Pebble",
  --   neck       = "Republican Platinum Medal",
  --   waist      = "Sailfi Belt +1",
  --   back       = "Phalangite Mantle",
  --   left_ear   = "Moonshade Earring",
  --   right_ear  = "Ishvara Earring",
  --   left_ring  = "Rufescent Ring",
  --   right_ring = "Ephramad's Ring",           -- Fall back to Regal or Apate if swapping TVR ring
  -- })
  -- sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
  -- })

  sets.precast.WS.melee = set_combine(nyame, {
    hands      = "Meghanada Gloves +2",
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ear   = "Moonshade Earring",
    right_ear  = "Ishvara Earring",
    left_ring  = "Regal Ring",
    right_ring = "Ephramad's Ring",     -- Fall back to Regal or Apate if swapping TVR ring
    back       = "Phalangite Mantle",
  })
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    neck  = "Republican Platinum Medal",
    waist = "Sailfi Belt +1",
  })

  -- Job ability sets
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
  sets.midcast["Blue Magic"] = set_combine(sets.idle, {
    head       = "Jhakri Coronal +2",
    body       = "Jhakri Robe +2",
    hands      = "Jhakri Cuffs +2",
    legs       = "Jhakri Slops +2",
    feet       = "Jhakri Pigaches +2",
    waist      = "Eschan Stone",
    left_ring  = "Shiva Ring +1",
    right_ring = "Stikini Ring",
    left_ear   = "Friomisi Earring",
    right_ear  = "Hermetic Earring",
    neck       = "Sanctity Necklace",
  })

  -- Other sets
  sets.TH = {
    ammo  = "Perfect Lucky Egg",      -- TH+1
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    -- main      = "Voluspa Knife",
    -- sub       = "Gleti's Knife",
    -- ammo      = "Yetshila",
    -- hands     = "Mummu Wrists +2",
    -- legs      = "Meghanada Chausses +2",
    -- left_ear  = "Eabani Earring",
    -- right_ear = "Odr Earring",
    -- left_ring = "Mummu Ring",
  })
  sets.Mireu = set_combine(sets.DI, nyame)

end -- get_sets()