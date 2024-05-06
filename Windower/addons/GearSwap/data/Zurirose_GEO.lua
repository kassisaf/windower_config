function get_sets()
  include('Zuri-Logic.lua')
  job_init(3, 1, 3)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- Gear aliases

  -- JSE Prefixes:
  -- Artifact: Geomancy
  -- Relic:    Bagua
  -- Empyrean: Azimuth
  artifact = {
    head  = "Geomancy Galero +1",
    body  = "Geomancy Tunic +1",
    hands = "Geomancy Mitaines +3",
    legs  = "Geomancy Pants +1",
    feet  = "Geomancy Sandals +1",
  }
  relic = {
    head  = "Bagua Galero",
    body  = "Bagua Tunic +3",
    -- hands = "",
    legs  = "Bagua Pants +3",
    feet  = "Bagua Sandals +3",
  }
  empyrean = {
    head  = "Azimuth Hood +2",
    body  = "Azimuth Coat +3",
    hands = "Azimuth Gloves +2",
    legs  = "Azimuth Tights +3",
    feet  = "Azimuth Gaiters +3",
  }
  jse_neck = "Bagua Charm +1"
  -- sortie_earring = ""

  ambu_cape = {
    idle = {name="Nantosuelta's Cape", augments={
      'VIT+20',
      'Eva.+20 /Mag. Eva.+20',
      -- TODO: Add dye (eva, meva?)
      'Pet: "Regen"+10',
      'Pet: "Regen"+5',
    }},
    nuke = {name="Nantosuelta's Cape", augments={
      'INT+20',
      'Mag. Acc+20 /Mag. Dmg.+20',
      'INT+10',
      '"Mag.Atk.Bns."+10',
      'Damage taken-5%',
    }}
  }

  -- Basic sets
  sets.idle = {
    main       = "Malignance Pole",
    sub        = "Khonsu",
    range      = "Dunna",
    -- ammo       = "Crepuscular Pebble",
    head       = empyrean.head,        -- DT -11%
    body       = empyrean.body,        -- Refresh +3, no DT
    hands      = empyrean.hands,       -- DT -11%
    legs       = nyame.legs,           -- DT -8%
    feet       = empyrean.feet,        -- DT -10%
    neck       = "Loricate Torque +1", -- DT -6%,     55-60 def
    left_ear   = "Eabani Earring",     -- m.eva +8,   eva +15
    right_ear  = "Lugalbanda Earring", -- m.eva +10,  mdb +5
    left_ring  = "Defending Ring",     -- DT -10%
    right_ring = "Shneddick Ring",     -- Movespeed,  status resists
    waist      = "Carrier's Sash",     -- Ele resist tier
    back       = ambu_cape.nuke,  -- DT -5%
  }
  sets.idle_with_pet = set_combine(sets.idle, {
    main      = "Idris",                -- Luopan DT -25%
    sub       = "Genmei Shield",
    hands     = artifact.hands,         -- Luopan DT -13%
    feet      = relic.feet,             -- pet regen +2-5
    neck      = jse_neck,               -- Luopan absorb damage +8%
    left_ear  = "Handler's Earring +1", -- pet PDT -4%
    right_ear = "Handler's Earring",    -- pet PDT -3%
    back      = ambu_cape.idle,         -- pet regen +10, pet DT -2%
    waist     = "Isa Belt",             -- pet regen +1,  pet DT -3%

    -- Telchine augs: pet DT -4%, pet regen +3
    -- head  = "Telchine Cap",
    -- legs  = "Telchine Braconi",
    -- feet  = "Bagua Sandals +3",
  })
  sets.TP = set_combine(nyame, {
    main       = "Idris",
    sub        = "Genmei Shield",
    head       = empyrean.head,
    neck       = "Loricate Torque +1",
    left_ear   = "Dignitary's Earring",
    right_ear  = "Brutal Earring",
    left_ring  = "Chirich Ring +1",
    right_ring = "Chirich Ring +1",
    waist      = "Eschan Stone",
    back       = ambu_cape.idle,
  })
  sets.FC = {
    -- Fast Cast reduces spellcasting time up to 80%, and half of that applies to recast
    -- FC is multiplied by total haste and JA mods in the recast calculation
    -- TODO optimize with haste
    -- main       = "Solstice",           -- Fast Cast +5%
    -- sub        = "Genmei Shield",

    range      = "Dunna",              -- Fast Cast +3%
    head       = vanya.head.path_d,    -- Fast Cast +10%
    body       = "Merlinic Jubbah",    -- Fast Cast +10%
    hands      = empyrean.hands,       -- Fast Cast +5%
    legs       = artifact.legs,        -- Fast Cast +11%
    feet       = "Agwu's Pigaches",    -- Fast Cast +4%
    waist      = "Cornelia's Belt",    -- For 10% haste if midcast doesn't swap it off
    left_ear   = "Malignance Earring", -- Fast Cast +4%
    right_ear  = "Loquacious Earring", -- Fast Cast +2%
    left_ring  = "Kishar Ring",        -- Fast Cast +4%
    right_ring = "Naji's Loop",        -- Fast Cast +1%

    -- Total: 59% FC
  }
  sets.macc = {
    main       = "Malignance Pole",
    sub        = "Khonsu",
    ammo       = "Hydrocera",
    head       = empyrean.head,
    body       = empyrean.body,
    hands      = empyrean.hands,
    legs       = empyrean.legs,
    feet       = empyrean.feet,
    neck       = jse_neck,
    left_ear   = "Malignance Earring",
    right_ear  = "Dignitary's Earring",
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
    back       = ambu_cape.nuke,
    waist      = "Acuity Belt +1",
  }

  -- Precast sets
  sets.precast.RA = {}
  sets.precast["Cure"] = set_combine(sets.FC, {
    legs      = "Doyen Pants",         -- -15% Cure cast time
    right_ear = "Mendicant's Earring",
  })
  sets.precast["Stoneskin"] = set_combine(sets.FC, {
    legs = "Doyen Pants", -- -10% Stoneskin cast time
  })

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(nyame, {
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ring  = "Rufescent Ring",
    right_ring = "Ephramad's Ring",
  })

  -- Job ability sets
  sets.precast["Full Circle"] = {
    head = empyrean.head,
  }
  sets.precast["Radial Arcana"] = {
    feet = relic.feet,
  }
  sets.precast["Bolster"] = {
    body = relic.body,
  }
  sets.precast["Life Cycle"] = {
    body = "Geomancy Tunic +1",
    back = ambu_cape.nuke,
  }
  sets.precast["Mending Halation"] = {
    legs = relic.legs,
  }
  sets.precast["Cardinal Chant"] = {
    head = artifact.head,
  }

  -- Midcast sets
  sets.midcast["Geomancy"] = {
    -- Naked skill at ML10: 435 handbell + 435 geomancy = 870 (need 30 to hit 900 tier)
    -- Fill remaining slots with duration, defense, and empy set bonus to cast without MP
    -- Gada with 11% duration lasts ~10s longer than Solstice, but loses 6 conserve MP
    main       = "Idris",
    sub        = "Genmei Shield",       -- PDT -10%
    range      = "Dunna",               -- Skill +18
    head       = empyrean.head,         -- Skill +20,         DT -11%
    body       = empyrean.body,         -- For empy bonus... no DT
    hands      = empyrean.hands,        -- DT -11%
    legs       = relic.legs,            -- Indi Duration +18, no DT
    feet       = empyrean.feet,         -- Indi Duration +25, DT -10%
    neck       = jse_neck,              -- Luopan duration +20%
    back       = ambu_cape.nuke,        -- Indi Duration +20, DT -5%
    waist      = "Luminary Sash",       -- Conserve MP +4
    left_ear   = "Mendicant's Earring", -- Conserve MP +2
    right_ear  = "Lugalbanda Earring",  -- m.eva +10
    left_ring  = "Defending Ring",      -- DT -10%
    right_ring = "Gelatinous Ring +1",  -- PDT -7% MDT +1%
  }
  sets.midcast["Indi"] = {
    back = "Lifestream Cape", -- Indi Duration +20%, no DT (~30s longer than ambu cape)
  }
  sets.midcast["Indi-Entrust"] = set_combine(sets.midcast["Indi"], {
    -- Potency doesn't apply to entrust bubbles, so we swap Idris to Gada for more duration
    main = "Gada",          -- Indi Duration +11%
    sub  = "Genmei Shield",
  })

  sets.midcast["Elemental Magic"] = set_combine(sets.macc,{
    main       = "Daybreak",
    sub        = "Ammurapi Shield",
    ammo       = "Ghastly Tathlum +1",
    head       = empyrean.head,
    body       = empyrean.body,
    hands      = empyrean.hands,
    legs       = empyrean.legs,
    feet       = empyrean.feet,
    neck       = "Mizukage-no-Kubikazari",
    left_ear   = "Malignance Earring",
    right_ear  = "Azimuth Earring",        -- Regal earring > Barkarole earring
    left_ring  = "Shiva Ring +1",
    right_ring = "Jhakri Ring",            -- Freke Ring
    waist      = "Acuity Belt +1",         -- Better than refoc. for now? Get Sacro Cord
    back       = ambu_cape.nuke,
  })
  sets.midcast["Enhancing Magic"] = {
    main       = "Gada",              -- 18 enhancing skill
    sub        = "Ammurapi Shield",   -- Enhancing duration +10%
    neck       = "Incanter's Torque",
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
    waist      = "Siegel Sash",       -- Enhancing cast time -8%
  }
  sets.midcast["Enfeebling Magic"] = set_combine(sets.macc, {
    neck       = "Incanter's Torque",
    left_ring  = "Stikini Ring",
    right_ring = "Kishar Ring",       -- Enfeebling duration +10%
    waist      = "Obstinate Sash",    -- Enfeebling duration +5%, m.acc+15 at R15
  })
  sets.midcast["Dark Magic"] = set_combine(sets.macc, {
    -- head       = "Pixie Hairpin +1",
    legs       = empyrean.legs,      -- Dark Magic skill +30
    right_ring = "Evanescence Ring",
  })
  sets.midcast["Aspir"] = set_combine(sets.midcast["Dark Magic"], {
    neck       = "Erra Pendant",
    feet       = "Agwu's Pigaches",
    left_ring  = "Shiva Ring +1",
    right_ring = "Evanescence Ring",
    waist      = "Fucho-no-Obi",
  })
  sets.midcast["Drain"] = sets.midcast["Aspir"]
  sets.midcast["Stoneskin"] = set_combine(sets.midcast["Enhancing Magic"], {
    neck  = "Nodens Gorget", -- Stoneskin +30
    waist = "Siegel Sash",   -- Stoneskin +20

    -- legs     = "Shedir Seraweels", -- Stoneskin +35
    -- left_ear = "Earthcry Earring", -- Stoneskin +10
  })
  sets.midcast["Aquaveil"] = set_combine(sets.midcast["Enhancing Magic"], {
    head = "Chironic Hat", -- Aquaveil +1

    -- legs = "Shedir Seraweels" -- Aquaveil +1
  })

  sets.midcast["Cure"] = {
    main       = "Daybreak",
    sub        = "Genbu's Shield",      -- 3% cure potency augment
    ammo       = "Hydrocera",
    head       = vanya.head.path_b,
    body       = vanya.body.path_b,
    hands      = vanya.hands.path_b,
    legs       = vanya.legs.path_b,
    feet       = vanya.feet.path_b,
    neck       = "Incanter's Torque",
    left_ear   = "Meili Earring",
    right_ear  = "Mendicant's Earring",
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
    back       = "Solemnity Cape",
    waist      = "Luminary Sash",
  }
  sets.midcast["Curaga"] = sets.midcast["Cure"]

  -- Other sets
  sets.TH = {
    ammo  = "Perfect Lucky Egg",
    head  = "White Rarab Cap +1",

    -- waist = "Chaac Belt",
  }
  -- Maximize crit rate for Domain Invasion
  -- sets.DI = set_combine(sets.tp, {})

end -- get_sets()