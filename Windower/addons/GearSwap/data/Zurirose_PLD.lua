function get_sets()
  include('Zuri-Logic.lua')
  job_init(6, 1, 6)   -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}
  sets.cycles = {}

  -- Gear Aliases

  -- JSE Prefixes:
  -- Artifact: Gallant / Reverence
  -- Relic:    Valor / Caballarius
  -- Empyrean: Creed / Chevalier's
  artifact = {
    -- head  = "Gallant Coronet",   -- Stored, consider using for Cover after upgrading
    body  = "Reverence Surcoat",
    -- hands = "Gallant Gauntlets", -- Stored
    legs  = "Reverence Breeches",
    -- feet  = "Gallant Leggings",  -- Stored
  }
  relic = {
    -- head  = "Valor Coronet",   -- Stored
    -- body  = "Valor Surcoat",   -- Stored
    -- hands = "Valor Gauntlets", -- Stored
    -- legs  = "Valor Breeches",  -- Stored
    -- feet  = "Valor Leggings",  -- Stored
  }
  empyrean = {
    head  = "Chevalier's Armet +2",
    body  = "Chevalier's Cuirass +2",
    hands = "Chevalier's Gauntlets +2",
    legs  = "Chevalier's Cuisses +2",
    feet  = "Chevalier's Sabatons +2",
  }
  -- jse_neck = ""
  sortie_earring = "Chevalier's Earring +1"

  ambu_cape = {
    meva = {name = "Rudianos's Mantle", augments = {
      'HP+60',
      'Mag. Evasion+10',
      'Enmity+10',
      'Occ. inc. resist. to stat. ailments+10'
    }},
    cure = {name = "Rudianos's Mantle", augments = {
      'MND+20',
      'Eva.+20 /Mag. Eva.+20',
      'VIT+10',
      '"Cure" potency +10%',
      'Spell interruption rate down-10%'
    }},
    -- fast_cast = {name = "Rudianos's Mantle", augments = {}},
    -- tp = {name = "Rudianos's Mantle", augments = {}},
  }

  odyssean_head = {
    phalanx = {name="Odyssean Helm", augments={
      'Pet: "Subtle Blow"+8',
      'Rng.Atk.+14',
      'Phalanx +3',
      'Accuracy+19 Attack+19',
      'Mag. Acc.+3 "Mag.Atk.Bns."+3',
    }},
    th = {name="Odyssean Helm", augments={
      'MND+3',
      'Magic burst dmg.+6%',
      '"Treasure Hunter"+2',
      'Accuracy+7 Attack+7',
      'Mag. Acc.+5 "Mag.Atk.Bns."+5'
    }}
  }
  odyssean_body = {
    phalanx = {name="Odyss. Chestplate", augments={
      'Magic dmg. taken -2%',
      '"Mag.Atk.Bns."+20',
      'Phalanx +4',
    }}
  }

  -- Basic sets
  sets.idle = set_combine(nyame, {
		main       = "Malignance Sword",
		sub        = "Srivatsa",
		ammo       = "Sapience Orb",         -- "Staunch Tathlum +1",
		head       = empyrean.head,
		body       = sakpata.body,
		hands      = sakpata.hands,
		legs       = empyrean.legs,
		feet       = sakpata.feet,
		neck       = "Unmoving Collar +1",
		back       = ambu_cape.meva,
		waist      = "Platinum Moogle Belt",
		left_ear   = "Foresti Earring",
		right_ear  = sortie_earring,
		left_ring  = "Warden's Ring",
		right_ring = "Shneddick Ring",
  })

  sets.TP = set_combine(sets.idle, {
    -- legs       = empyrean.legs,

    -- neck       = "Loricate Torque +1", -- Sacrificing neck for DT, consider using ring slot instead after Iskur Gorget
    -- waist      = "Sailfi Belt +1",
    -- left_ear   = "Eabani Earring",
    -- right_ear  = "Telos Earring",
    -- left_ring  = "Chirich Ring +1",
    -- right_ring = "Chirich Ring +1",
    -- back       = melee_tp_cape,
  })
  sets.FC = {
    ammo       = "Sapience Orb",         -- 2% FC
    head       = "Carmine Mask +1",      -- 14% FC
    hands      = "Leyline Gloves",       -- 5+1% FC
    feet       = empyrean.feet,          -- 10% FC at +2
    left_ear   = "Loquacious Earring",   -- 2% FC
    right_ear  = "Odnowa Earring +1",    -- HP +110
    left_ring  = "Gelatinous Ring +1",   -- HP +135
    right_ring = "Kishar Ring",          -- 4% FC (Medada's Ring for 10%)
    waist      = "Platinum Moogle Belt",

		-- head = "Carmine Mask +1", --14% FC
    -- body = artifact.body, -- 10% FC at +3
		-- legs = "Enif Cosciales" --8% FC
    -- back = ambu_cape.fc, -- 10% FC
		-- neck = "Baetyl Pendant", -- 4% FC (Orunmila's Torque gets 5)
  }
  sets.enmity = {
    ammo       = "Sapience Orb",           -- Enmity +2
    head       = "Loess Barbuta +1",       -- Enmity +24
    body       = "Souveran Cuirass +1",    -- Enmity +20
    legs       = relic.legs,               -- Enmity +?
    hands      = "Souveran Handschuhs +1", -- Enmity +9 with path ???
    feet       = empyrean.feet,            -- Enmity +?
    neck       = "Unmoving Collar +1",     -- Enmity +10
    waist      = "Creed Baudrier",         -- Enmity +5
    back       = ambu_cape.meva,           -- Enmity +10 (swap with physical def cape?)
    left_ear   = "Cryptic Earring",        -- Enmity +4
    right_ear  = "Friomisi Earring",       -- Enmity +2 (get Trux from Divine Might for +5)
    left_ring  = "Provocare Ring",         -- Enmity +5 (get Apeile Ring +1, Eiwaz Ring)
    right_ring = "Supershear Ring",        -- Enmity +5
  }
  sets.sird = {
    head      = "Souveran Schaller +1",
    feet      = empyrean.feet,
    waist     = "Platinum Moogle Belt",
    left_ear  = "Magnetic Earring",
    right_ear = "Knightly Earring",

    -- body = af_body,
    -- legs = "Founder's Hose",
    -- neck = "Moonlight Necklace"
    -- right_ring = "Moonlight Ring",
  }
  sets.phalanx_received = set_combine(sets.sird, {
    main  = "Sakpata's Sword",        -- Phalanx +5
    sub   = "Priwen",                 -- Phalanx +2
    head  = odyssean_head.phalanx,    -- Phalanx +3
    body  = odyssean_body.phalanx,    -- Phalanx +4
    hands = "Souveran Handschuhs +1", -- Phalanx +5, path D for shield skill
    legs  = "Sakpata's Cuisses",      -- Phalanx +5
    feet  = "Souveran Schuhs +1",     -- Phalanx +5
    back  = "Weard Mantle",           -- Phalanx +3 (can roll up to +5 with refractive crystals)
    waist = "Gishdubar Sash",         -- Because maybe we get refresh at the same time
  })                                  -- Total: +32
  sets.cursna_received = {
    legs       = "Shabti Cuisses +1",   -- 15%
    neck       = "Nicander's Necklace", -- 20%
    waist      = "Gishdubar Sash",      -- 10%
    left_ring  = "Purity Ring",         -- 7%
    left_ear   = "Odnowa Earring +1",   -- More DT to offset the +10% PDT from Nicander's
    
    -- body = artifact.body,
		-- hands = "Souveran Handschuhs +1",   -- Path C for shield skill
    -- right_ring = "Saida Ring",          -- 15% (20% possible with HQ (Eshmun's))
		-- back = "Moonbeam Cape",
  }                                     -- Total 67%

  -- Precast sets
  sets.precast["Chivalry"]    = set_combine(sets.enmity, {hands = relic.hands})
  sets.precast["Fealty"]      = set_combine(sets.enmity, {body = relic.body})
  sets.precast["Invincible"]  = set_combine(sets.enmity, {legs = relic.legs})
  sets.precast["Rampart"]     = set_combine(sets.enmity, {head = relic.head})
  sets.precast["Sentinel"]    = set_combine(sets.enmity, {feet = relic.feet})
  sets.precast["Shield Bash"] = set_combine(sets.enmity, {
    hands     = relic.hands,
    right_ear = "Knightly Earring",
  })
  sets.precast["Holy Circle"]  = set_combine(sets.enmity, {feet = artifact.feet})

  sets.precast["Divine Emblem"]  = sets.enmity
  sets.precast["Majesty"]        = sets.enmity
  sets.precast["Palisade"]       = sets.enmity

  sets.precast["Provoke"]        = sets.enmity
  sets.precast["Warcry"]         = sets.enmity
  sets.precast["Burst Affinity"] = sets.enmity
  sets.precast["Pflug"]          = sets.enmity
  sets.precast["Swordplay"]      = sets.enmity
  sets.precast["Valiance"]       = sets.enmity
  sets.precast["Vallation"]      = sets.enmity

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(nyame, {
    hands      = "Meghanada Gloves +2",
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ear   = "Moonshade Earring",
    right_ear  = "Ishvara Earring",
    left_ring  = "Regal Ring",
    right_ring = "Ephramad's Ring",     -- Fall back to Regal or Apate if swapping TVR ring

    -- back       = ambu_cape.savage_blade,
  })
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    neck  = "Republican Platinum Medal",
    waist = "Sailfi Belt +1",
  })
  -- sets.precast.WS["Requiescat"] = set_combine(sets.precast.WS.melee, {
  --   left_ear  = "Telos Earring",
  --   right_ear = "Ishvara Earring",
  --   -- back = "" MND/Atk./Acc./DA
  -- })
  -- sets.precast.WS["Aeolian Edge"] = set_combine(sets.precast.WS.melee, {
  --   body       = relic.body,
  --   feet       = relic.feet,
  --   neck       = "Sanctity Necklace",
  --   waist      = "Eschan Stone",
  --   right_ear  = "Friomisi Earring",
  --   left_ring  = "Dingir Ring",
  --   right_ring = "Shiva Ring +1",
  -- })
  
  -- Job ability sets
  -- sets.precast["Fold"] = {
  --   hands = relic.hands,
  -- }
  -- sets.precast["Random Deal"] = {
  --   body = relic.body,
  -- }
  -- sets.precast["Snake Eye"] = {
  --   legs = relic.legs,
  -- }
  -- sets.precast["Wild Card"] = {
  --   feet = relic.feet,
  -- }

  -- Use TH for targeted JA's
  -- sets.precast["Box Step"]   = sets.TH
  -- sets.precast["Quick Step"] = sets.TH

  sets.precast["Cure"] = set_combine(sets.FC, {
    neck     = "Diemer Gorget",       -- Cure spellcasting time -4%
    left_ear = "Mendicant's Earring", -- Cure spellcasting time -5%
    
    -- waist = "Acerbic Sash +1", -- Cure spellcasting time -8%
  })

  sets.precast["CureSelf"] = set_combine(sets.precast["Cure"], {
    -- HP conversion gear to lower HP before self cures (free hate generation)
    left_ring  = "Mephitas's Ring",
    right_ring = "Mephitas's Ring +1",
    
    -- right_ear = "Influx Earring",
  })

  -- Midcast sets
  sets.midcast["Cure"] = {
    back = ambu_cape.cure,
  }

  sets.midcast["Phalanx"] = set_combine(sets.sird, sets.phalanx_received, {
    left_ear = "Mimir Earring", -- Enhancing +10
  })

  -- Other sets
  sets.TH = {
    ammo = "Perfect Lucky Egg",
    head = odyssean_head.th,
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    -- main      = "Voluspa Knife",
    -- sub       = "Gleti's Knife",
    -- hands     = "Mummu Wrists +2",
    -- left_ear  = "Odr Earring",
    -- left_ring = "Mummu Ring",
  })
  sets.dynamis_rp = {
    -- sub  = stp_knife,
    -- neck = jse_neck,
  }
end -- get_sets()

-- Job-specific "cure cheating"
function job_precast(spell, mapped_spell)
  if spell.target.type == "SELF" and (mapped_spell == "Cure" or mapped_spell == "Curaga") then
    equip(sets.precast["CureSelf"])
  end
end