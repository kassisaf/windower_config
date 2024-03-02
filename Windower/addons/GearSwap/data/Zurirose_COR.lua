function get_sets()
  include('Zuri-Logic.lua')
  job_init(2, 1, 2)   -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}
  sets.cycles = {}

  -- State flags
  dual_wield_available = player.sub_job == "NIN" -- TODO check for DW trait

  -- Gear Aliases
  bullets = {
    physical = "Chrono Bullet",
    macc     = "Orichalcum Bullet",
    qd_dmg   = "Hauksbok Bullet",
    qd_acc   = "Animikii Bullet",
  }
  snapshot_roll_cape = {name="Camulus's Mantle", augments={
    'INT+20',
    'Eva.+20 /Mag. Eva.+20',
    'Mag. Evasion+10',
    '"Snapshot"+10',
    'Mag. Evasion+15',
  }}
  leaden_salute_cape = {name="Camulus's Mantle", augments={
    'AGI+20',
    'Mag. Acc+20 /Mag. Dmg.+20',
    'AGI+10',
    'Weapon skill damage +10%',
    'Damage taken-5%',
  }}
  last_stand_cape = { name="Camulus's Mantle", augments={
    'AGI+20',
    'Rng.Acc.+20 Rng.Atk.+20',
    'AGI+10',
    'Weapon skill damage +10%',
    'Damage taken-5%',
  }}
  melee_tp_cape = {name="Camulus's Mantle", augments={
    'DEX+20',
    'Accuracy+20 Attack+20',
    'Accuracy+10',
    '"Dbl.Atk."+10',
    'Damage taken-5%',
  }}
  savage_cape = {name="Camulus's Mantle", augments={
    'STR+20',
    'Accuracy+20 Attack+20',
    'STR+10',
    'Weapon skill damage +10%',
    'Damage taken-5%',
  }}
  roll_knife = {name="Lanun Knife", augments={'Path: C'}}
  stp_knife = {name="Lanun Knife", augments={'Path: A'}}

  -- JSE Notes:
  -- Artifact: Corsair's / Laksamana's
  -- Relic:    Commodore / Lanun
  -- Empyrean: Navarch's / Chasseur's
  af_head     = "Laksamana's Tricorne"
  af_body     = "Laksamana's Frac +3"
  af_hands    = "Laksamana's Gants +1"
  af_legs     = "Laksamana's Trews +1"
  af_feet     = "Laksamana's Bottes +2" -- Upgrade these for quick draw
  relic_head  = "Lanun Tricorne"
  relic_body  = "Lanun Frac +3"
  relic_hands = "Lanun Gants +1"
  relic_legs  = "Lanun Trews"
  relic_feet  = "Lanun Bottes +3"
  empy_head   = "Chasseur's Tricorne +2"
  empy_body   = "Chasseur's Frac +2"
  empy_hands  = "Chasseur's Gants +2"
  empy_legs   = "Chasseur's Culottes +2"
  empy_feet   = "Chasseur's Bottes +3"
  jse_neck    = "Commodore Charm +1"

  -- Basic sets
  sets.idle = {
    main       = "Naegling",
    sub        = "Gleti's Knife",
    range      = "Ataktos",
    ammo       = bullets["physical"],
    head       = "Nyame Helm",
    body       = empy_body,
    hands      = "Nyame Gauntlets",
    legs       = empy_legs,
    feet       = "Nyame Sollerets",
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    left_ear   = "Eabani Earring",
    right_ear  = "Odnowa Earring +1",
    left_ring  = "Defending Ring",
    right_ring = "Shneddick Ring",
    back       = snapshot_roll_cape,
  }
  sets.TP = set_combine(sets.idle, {
    -- head       = "Malignance Chapeau",
    -- body       = "Adhemar Jacket",
    -- hands      = "Malignance Gloves",
    -- feet       = "Malignance Boots",
    
    legs       = empy_legs,

    neck       = "Loricate Torque +1", -- Sacrificing neck for DT, consider using ring slot instead after Iskur Gorget
    waist      = "Sailfi Belt +1",
    left_ear   = "Eabani Earring",
    right_ear  = "Telos Earring",
    left_ring  = "Chirich Ring +1",
    right_ring = "Chirich Ring +1",
    back       = melee_tp_cape,
  })
  sets.FC = {
    left_ear   = "Loquacious Earring", -- "Enhances"
    right_ring = "Kishar Ring",        -- 4%
    waist      = "Cornelia's Belt",    -- For 10% haste if midcast doesn't swap it off
  }

  -- Shooting sets
  sets.cycles.shooting = {
    physical = {
      main  = "Kustawi +1",
      sub   = "Nusku Shield",
      range = "Fomalhaut",
      ammo  = bullets["physical"]
    },
    magic = {
      main  = stp_knife,
      sub   = "Tauret",
      range = "Molybdosis",
      ammo  = bullets["macc"]
    },
    statue_crusher = {
      main  = "Naegling",
      sub   = "Tauret",
      range = "Ataktos",
      ammo  = bullets["macc"]
    },
  }

  -- Preshot should contain: Snapshot, Rapid Shot
  -- Snapshot caps at 70% (-10% from gifts) and applies to aiming delay directly
  -- Rapid Shot caps at 99%, and reduces aiming delay by up to 50% on proc
  sets.precast.RA = {
    ammo  = bullets["physical"],
    -- Total from gear: 50 Snapshot, 40 Rapid Shot
    head  = empy_head,                     -- 0 Snapshot, 16 Rapid Shot
    body  = "Ikenga's Vest",               -- 9 Snapshot
    hands = "Carmine Finger Gauntlets +1", -- 8 Snapshot, 11 Rapid Shot (path D)
    legs  = "Adhemar Kecks +1",            -- 10 Snapshot, 13 Rapid Shot
    feet  = "Meghanada Jambeaux +2",       -- 10 Snapshot
    neck  = jse_neck,                      -- 3 Snapshot
    back  = snapshot_roll_cape,            -- 10 Snapshot
    waist = "Tellen Belt",
  }
  -- Midshot should contain: R.acc, STP, crit, R.atk, Recycle, etc.
  sets.midcast.RA = {
    head       = "Meghanada Visor +2", -- Ikenga after RP
    body       = empy_body,
    hands      = empy_hands,
    legs       = empy_legs,
    feet       = "Malignance Boots",
    back       = "Sokolski Mantle",
    neck       = "Marked Gorget",  -- Iskur Gorget
    waist      = "Eschan Stone",
    left_ring  = "Cacoethic Ring +1",
    right_ring = "Ephramad's Ring",  -- Fall back to NQ Cacoethic if swapping TVR ring
    left_ear   = "Telos Earring",
    right_ear  = "Enervating Earring",
    -- right_ear  = "Beyla Earring",
    back       = last_stand_cape,
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
    ammo       = bullets["macc"],
    body       = relic_body,
    feet       = relic_feet,
    neck       = "Sanctity Necklace",
    waist      = "Eschan Stone",
    right_ear  = "Friomisi Earring",
    left_ring  = "Dingir Ring",
    right_ring = "Shiva Ring +1",
  })

  -- Default ranged WS assumes physical
  sets.precast.WS.ranged = set_combine(sets.precast.WS.melee, {
    ammo      = bullets["physical"],
    head      = "Meghanada Visor +2",
    body      = relic_body,
    hands     = empy_hands,
    legs      = "Malignance Tights",
    feet      = "Malignance Boots",   -- Replace with Relic
    left_ear  = "Telos Earring",
    right_ear = "Ishvara Earring",
    waist     = "Tellen Belt",
    back      = leaden_salute_cape,   -- Replace with WS capes
  })
  sets.precast.WS["Leaden Salute"] = set_combine(sets.precast.WS.ranged, {
    ammo       = bullets["macc"],
    head       = "Pixie Hairpin +1",
    body       = relic_body,
    hands      = "Nyame Gauntlets",
    legs       = "Nyame Flanchard",
    feet       = relic_feet,
    neck       = jse_neck,
    left_ear   = "Friomisi Earring",
    right_ear  = "Moonshade Earring",
    left_ring  = "Archon Ring",
    right_ring = "Dingir Ring",
    waist      = "Eschan Stone",      -- 7 macc, 7 mab  (Hachirin will override if weather/day appropriate)
    back       = leaden_salute_cape,
  })
  sets.precast.WS["Wildfire"] = set_combine(sets.precast.WS["Leaden Salute"], {
    ammo      = bullets["macc"],
    head      = "Nyame Helm",
    right_ear = "Hecate's Earring",
    left_ring = "Regal Ring",
  })
  sets.precast.WS["Aeolian Edge"] = sets.precast.WS["Leaden Salute"]
  sets.precast.WS["Hot Shot"] = set_combine(sets.precast.WS["Leaden Salute"], {
    ammo       = bullets["macc"],
    head       = "Malignance Chapeau",
    body       = af_body,
    hands      = "Malignance Gloves",
    legs       = empy_legs,
    feet       = empy_feet,
    left_ring  = "Cacoethic Ring +1",
    -- right_ring = "Cacoethic Ring",
    right_ring = "Ephramad's Ring",
    left_ear   = "Telos Earring",
    right_ear  = "Beyla Earring",
    waist      = "Fotia Belt",
    back       = leaden_salute_cape,
  })
  sets.precast.WS["Last Stand"] = set_combine(sets.precast.WS.ranged, {
    body  = af_body,
    ammo  = bullets["physical"],
    neck  = "Fotia Gorget",
    waist = "Fotia Belt",
    back  = last_stand_cape,
  })
  
  -- Job ability sets

  -- Rolls
  sets.precast["Phantom Roll"] = set_combine(sets.idle, {
    -- Purely defensive
    feet       = "Malignance Boots",
    left_ring  = "Defending Ring",
    -- Actually helps with rolls
    main       = roll_knife,         -- +7, duration +45
    range      = "Compensator",      -- duration +20
    head       = relic_head,         -- effect +50
    hands      = empy_hands,         -- duration +45/50/55/60
    legs       = "Desultor Tassets", -- delay -5
    neck       = "Regal Necklace",   -- +7, duration +20
    right_ring = "Luzaf's Ring",     -- range *2 (from 8 to 16 yalms)
    back       = snapshot_roll_cape, -- duration +30
  })
  sets.precast["Blitzer's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    head = empy_head,
  })
  sets.precast["Tactician's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    body = empy_body,
  })
  sets.precast["Caster's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    legs = empy_legs,
  })
  sets.precast["Courser's Roll"] = set_combine(sets.precast["Phantom Roll"], {
    feet = empy_feet,
  })

  -- Other JA's
  sets.precast["Fold"] = {
    hands = relic_hands,
  }
  sets.precast["Random Deal"] = {
    body = relic_body,
  }
  sets.precast["Snake Eye"] = {
    legs = relic_legs,
  }
  sets.precast["Wild Card"] = {
    feet = relic_feet,
  }

  -- Quick Draw sets
  quick_draw_stp = {
    ammo       = bullets["qd_acc"],
    head       = "Malignance Chapeau",
    body       = "Mirke Wardecors",
    hands      = "Malignance Gloves",
    legs       = "Malignance Tights",
    feet       = empy_feet,             -- Empy quickdraw trait gives 25/28/31% bonus to next elemental damage of same element
    neck       = "Marked Gorget",       -- Iskur Gorget
    left_ear   = "Telos Earring",
    right_ear  = "Dignitary's Earring",
    left_ring  = "Chirich Ring +1",
    right_ring = "Rajas Ring",          -- STP +5 without the enmity from Petrov
    waist      = "Eschan Stone",
    back       = leaden_salute_cape,    -- Replace with quickdraw_cape: AGI/MDmg/STP/MAB
  }
  quick_draw_acc = set_combine(quick_draw_stp, {
    ammo       = bullets["macc"],
    head       = af_head,
    hands      = af_hands,
    feet       = af_feet,               -- AF quickdraw trait gives flat damage +20 and macc +20
    neck       = jse_neck,
    left_ear   = "Chasseur's Earring",  -- 9 macc
    right_ear  = "Dignitary's Earring",
    left_ring  = "Regal Ring",
    right_ring = "Stikini Ring",
  })
  quick_draw_dmg = set_combine(quick_draw_stp, {
    ammo       = bullets["qd_dmg"],
    head       = "Nyame Helm",
    body       = relic_body,
    hands      = "Carmine Finger Gauntlets +1",
    legs       = "Nyame Flanchard",
    feet       = relic_feet,
    neck       = jse_neck,
    left_ear   = "Friomisi Earring",
    right_ear  = "Hecate's Earring",
    left_ring  = "Dingir Ring",
    right_ring = "Shiva Ring +1",               -- Fenrir Ring +1
    waist      = "Eschan Stone",                -- Skrymir Cord +1
  })
  -- Use STP for quickdraw by default
  sets.precast["CorsairShot"] = quick_draw_stp
  -- Light and dark shots optimized for m.acc
  sets.precast["Light Shot"] = quick_draw_acc
  sets.precast["Dark Shot"]  = set_combine(quick_draw_acc, {
    right_ring = "Archon Ring",
  })
  sets.precast["Ice Shot"] = quick_draw_dmg

  -- All Curing and Divine waltzes fall back to Waltz when spell mappings are checked
  sets.precast["Waltz"] = {
    body       = "Passion Jacket",
    left_ring  = "Defending Ring",
    right_ring = "Asklepian Ring",
  }

  -- Use TH for targeted JA's
  sets.precast["Box Step"]   = sets.TH
  sets.precast["Quick Step"] = sets.TH

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
