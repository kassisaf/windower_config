function get_sets()
  include('Zuri-Logic.lua')
  job_init(3, 3, 3)   -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- Gear Aliases
  
  -- JSE Prefixes:
  -- Artifact: Corsair's / Laksamana's
  -- Relic:    Commodore / Lanun
  -- Empyrean: Navarch's / Chasseur's
  af = {
    -- head  = "Laksamana's Tricorne",
    -- body  = "Laksamana's Frac +3",
    -- hands = "Laksamana's Gants +1",
    -- legs  = "Laksamana's Trews +1",
    -- feet  = "Laksamana's Bottes +2", -- Upgrade these for quick draw
  }
  relic = {
    -- head  = "Lanun Tricorne",
    -- body  = "Lanun Frac +3",
    -- hands = "Lanun Gants +1",
    -- legs  = "Lanun Trews",
    -- feet  = "Lanun Bottes +3",
  }
  empyrean = {
    -- head  = "Chasseur's Tricorne +2",
    -- body  = "Chasseur's Frac +2",
    -- hands = "Chasseur's Gants +2",
    -- legs  = "Chasseur's Culottes +2",
    -- feet  = "Chasseur's Bottes +3",
  }
  -- jse_neck    = "Commodore Charm +1"

  bullets = {
    physical  = "Eminent Bullet",
    acc       = "Decimating Bullet",
    macc      = "Orichalcum Bullet",
    quickdraw = "Hauksbok Bullet",   -- 1000 DI points
  }

  -- Basic sets
  sets.idle = set_combine(full_nyame, {
    main       = "Eminent Scimitar",
    sub        = "Nusku Shield",
    range      = "Compensator",
    ammo       = bullets["physical"],
    neck       = "Dampener's Torque",
    waist      = "Eschan Stone",
    left_ear   = "Bloodbead Earring",
    right_ear  = "Odr Earring",
    left_ring  = "Shneddick Ring",
    right_ring = "Defending Ring",
    back       = "Solemnity Cape",
  })
  sets.TP = set_combine(sets.idle, {
    -- head       = "Malignance Chapeau",
    -- body       = "Adhemar Jacket",
    -- hands      = "Malignance Gloves",
    -- feet       = "Malignance Boots",
    
    -- legs       = empyrean.legs,

    -- neck       = "Loricate Torque +1", -- Sacrificing neck for DT, consider using ring slot instead after Iskur Gorget
    -- waist      = "Sailfi Belt +1",
    -- left_ear   = "Eabani Earring",
    -- right_ear  = "Telos Earring",
    -- left_ring  = "Chirich Ring +1",
    -- right_ring = "Petrov Ring",
    -- back       = melee_tp_cape,
  })
  sets.FC = {
    -- left_ear   = "Loquacious Earring", -- "Enhances"
    -- right_ring = "Kishar Ring",        -- 4%
    -- waist      = "Cornelia's Belt",    -- For 10% haste if midcast doesn't swap it off
  }

  -- Shooting sets
  -- Preshot should contain: Snapshot, Rapid Shot
  -- Snapshot caps at 70% (-10% from gifts) and applies to aiming delay directly
  -- Rapid Shot caps at 99%, and reduces aiming delay by up to 50% on proc
  sets.precast.RA = {
    ammo  = bullets["acc"],
    -- ammo  = bullets["physical"],
    -- Total from gear: 50 Snapshot, 40 Rapid Shot
    -- head  = empyrean.head,                     -- 0 Snapshot, 16 Rapid Shot
    -- body  = "Ikenga's Vest",               -- 9 Snapshot
    -- hands = "Carmine Finger Gauntlets +1", -- 8 Snapshot, 11 Rapid Shot (path D)
    -- legs  = "Adhemar Kecks +1",            -- 10 Snapshot, 13 Rapid Shot
    -- feet  = "Meghanada Jambeaux +2",       -- 10 Snapshot
    -- neck  = jse_neck,                      -- 3 Snapshot
    -- back  = snapshot_roll_cape,            -- 10 Snapshot
    -- waist = "Yemaya Belt",
  }
  -- Midshot should contain: R.acc, STP, crit, R.atk, Recycle, etc.
  sets.midcast.RA = {
    -- head       = "Meghanada Visor +2", -- Ikenga after RP
    -- body       = empyrean.body,
    -- hands      = empyrean.hands,
    -- legs       = empyrean.legs,
    -- feet       = "Malignance Boots",
    -- back       = "Sokolski Mantle",
    -- neck       = "Marked Gorget",  -- Iskur Gorget
    -- waist      = "Eschan Stone",
    -- left_ring  = "Cacoethic Ring +1",
    -- -- right_ring = "Cacoethic Ring",
    -- right_ring = "Ephramad's Ring",
    -- left_ear   = "Telos Earring",
    -- right_ear  = "Beyla Earring",
    -- back       = leaden_salute_cape,   -- Replace with shooting cape?
  }

  -- Precast sets
  sets.precast["Utsusemi"] = set_combine(sets.FC, {
    -- neck = "Magoraga Beads",
    -- body = "Passion Jacket",
  })

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(full_nyame, {
    -- hands      = "Meghanada Gloves +2",
    -- neck       = "Fotia Gorget",
    -- waist      = "Fotia Belt",
    -- left_ear   = "Moonshade Earring",
    -- right_ear  = "Ishvara Earring",
    -- left_ring  = "Rufescent Ring",
    -- right_ring = "Ephramad's Ring",     -- Fall back to Regal or Apate if swapping TVR ring
    -- back       = leaden_salute_cape,    -- 10% WSD
  })
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    -- neck  = "Republican Platinum Medal",
    -- waist = "Sailfi Belt +1",
  })
  sets.precast.WS["Requiescat"] = set_combine(sets.precast.WS.melee, {
    -- right_ear = "Telos Earring",
    -- back = "" MND/Atk./Acc./DA
  })
  sets.precast.WS["Aeolian Edge"] = set_combine(sets.precast.WS.melee, {
    -- ammo       = bullets["macc"],
    -- body       = relic.body,
    -- feet       = relic.feet,
    -- neck       = "Sanctity Necklace",
    -- waist      = "Eschan Stone",
    -- right_ear  = "Friomisi Earring",
    -- left_ring  = "Dingir Ring",
    -- right_ring = "Shiva Ring +1",
  })

  -- Default ranged WS assumes physical
  sets.precast.WS.ranged = set_combine(sets.precast.WS.melee, {
    -- ammo      = bullets["physical"],
    -- head      = "Meghanada Visor +2",
    -- body      = relic.body,
    -- hands     = empyrean.hands,
    -- legs      = "Malignance Tights",
    -- feet      = "Malignance Boots",   -- Replace with Relic
    -- left_ear  = "Ishvara Earring",
    -- right_ear = "Telos Earring",
    -- back      = leaden_salute_cape,   -- Replace with WS capes
  })
  sets.precast.WS["Leaden Salute"] = set_combine(sets.precast.WS.ranged, {
    -- ammo       = bullets["macc"],
    -- head       = "Pixie Hairpin +1",
    -- body       = relic.body,
    -- hands      = nyame.hands,
    -- legs       = nyame.legs,
    -- feet       = relic.feet,
    -- neck       = jse_neck,
    -- left_ear   = "Friomisi Earring",
    -- right_ear  = "Moonshade Earring",
    -- left_ring  = "Archon Ring",
    -- right_ring = "Dingir Ring",
    -- waist      = "Eschan Stone",      -- 7 macc, 7 mab  (Hachirin will override if weather/day appropriate)
    -- back       = leaden_salute_cape,
  })
  sets.precast.WS["Wildfire"] = set_combine(sets.precast.WS["Leaden Salute"], {
    -- ammo      = bullets["macc"],
    -- head      = nyame.head,
    -- right_ear = "Hecate's Earring",
  })
  sets.precast.WS["Aeolian Edge"] = sets.precast.WS["Leaden Salute"]
  sets.precast.WS["Hot Shot"] = set_combine(sets.precast.WS["Leaden Salute"], {
    -- ammo       = bullets["macc"],
    -- head       = "Malignance Chapeau",
    -- body       = artifact.body,
    -- hands      = "Malignance Gloves",
    -- legs       = empyrean.legs,
    -- feet       = empyrean.feet,
    -- left_ring  = "Cacoethic Ring +1",
    -- -- right_ring = "Cacoethic Ring",
    -- right_ring = "Ephramad's Ring",
    -- left_ear   = "Telos Earring",
    -- right_ear  = "Beyla Earring",
    -- waist      = "Fotia Belt",
    -- back       = leaden_salute_cape,
  })
  sets.precast.WS["Last Stand"] = set_combine(sets.precast.WS.ranged, {
    -- body  = artifact.body,
    -- ammo  = bullets["acc"],
    -- neck  = "Fotia Gorget",
    -- waist = "Fotia Belt",
  })
  
  -- Job ability sets

  -- Rolls
  sets.precast["Phantom Roll"] = set_combine(sets.idle, {
    -- -- Purely defensive
    -- feet       = "Malignance Boots",
    -- left_ring  = "Defending Ring",

    -- -- Actually helps with rolls
    -- main       = roll_knife,
    range      = "Compensator",
    -- head       = relic.head,
    -- hands      = empyrean.hands,
    -- legs       = "Desultor Tassets",
    -- -- neck       = "Regal Necklace",
    left_ring  = "Barataria Ring",
    right_ring = "Luzaf's Ring",
    -- back       = snapshot_roll_cape,
  })
  sets.precast["Blitzer's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    head = empyrean.head,
  })
  sets.precast["Tactician's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    body = empyrean.body,
  })
  sets.precast["Caster's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    legs = empyrean.legs,
  })
  sets.precast["Courser's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    feet = empyrean.feet,
  })

  -- Other JA's
  sets.precast["Fold"] = {
    hands = relic.hands,
  }
  sets.precast["Random Deal"] = {
    body = relic.body,
  }
  sets.precast["Snake Eye"] = {
    legs = relic.legs,
  }
  sets.precast["Wild Card"] = {
    feet = relic.feet,
  }

  -- Quick Draw sets
  quick_draw_stp = {
    -- ammo       = bullets["quickdraw"],
    -- head       = "Malignance Chapeau",
    -- body       = "Mirke Wardecors",
    -- hands      = "Malignance Gloves",
    -- legs       = "Malignance Tights",
    -- feet       = empyrean.feet,             -- Empy quickdraw traight gives 25/28/31% bonus to next elemental damage of same element
    -- neck       = "Marked Gorget",       -- Iskur Gorget
    -- left_ear   = "Telos Earring",
    -- right_ear  = "Dignitary's Earring",
    -- left_ring  = "Chirich Ring +1",
    -- right_ring = "Rajas Ring",          -- STP +5 without the enmity from Petrov
    -- waist      = "Eschan Stone",
    -- back       = leaden_salute_cape,    -- Replace with quickdraw_cape: AGI/MDmg/STP/MAB
  }
  quick_draw_acc = set_combine(quick_draw_stp, {
    -- ammo       = bullets["macc"],
    -- head       = artifact.head,
    -- hands      = artifact.hands,
    -- feet       = artifact.feet,               -- AF quickdraw trait gives flat damage +20 and macc +20
    -- neck       = jse_neck,
    -- left_ear   = "Chasseur's Earring",  -- 9 macc
    -- right_ear  = "Dignitary's Earring",
    -- left_ring  = "Stikini Ring",
    -- right_ring = "Stikini Ring",
  })
  quick_draw_dmg = set_combine(quick_draw_stp, {
    -- head       = nyame.head,
    -- body       = relic.body,
    -- hands      = "Carmine Finger Gauntlets +1",
    -- legs       = nyame.legs,
    -- -- feet       = relic.feet,
    -- neck       = jse_neck,
    -- left_ear   = "Friomisi Earring",
    -- right_ear  = "Hecate's Earring",
    -- left_ring  = "Dingir Ring",
    -- right_ring = "Shiva Ring +1",               -- Fenrir Ring +1
    -- waist      = "Eschan Stone",                -- Skrymir Cord +1
  })
  -- Use STP for quickdraw by default
  sets.precast["CorsairShot"] = quick_draw_stp
  -- Light and dark shots optimized for m.acc
  sets.precast["Light Shot"] = quick_draw_acc
  sets.precast["Dark Shot"]  = set_combine(quick_draw_acc, {
    -- right_ring = "Archon Ring",
  })

  -- All Curing and Divine waltzes fall back to Waltz when spell mappings are checked
  sets.precast["Waltz"] = {
    -- body       = "Passion Jacket",
    -- left_ring  = "Defending Ring",
    -- right_ring = "Asklepian Ring",
  }

  -- Use TH for targeted JA's
  sets.precast["Box Step"]   = sets.TH
  sets.precast["Quick Step"] = sets.TH

  -- Midcast sets

  -- Other sets
  sets.TH = {
    -- ammo = "Perfect Lucky Egg",
    -- head = "Herculean Helm",
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    -- main      = "Voluspa Knife",
    -- sub       = "Gleti's Knife",
    hands     = "Mummu Wrists +2",
    left_ear  = "Odr Earring",
    left_ring = "Mummu Ring",
  })
  sets.dynamis_rp = {
    -- sub  = stp_knife,
    -- neck = jse_neck,
  }

end -- get_sets()