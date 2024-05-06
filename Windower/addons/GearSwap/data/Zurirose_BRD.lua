-- Usage notes:
-- Create the following macro to toggle dummy modes: /console gs c dummy
-- When enabled, your +songs instrument defined below in `instruments.dummy` will be equipped in midcast
-- When disabled, normal instrument logic applies

function get_sets()
  include('Zuri-Logic.lua')
  job_init(1, 1, 1)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- State flags
  dual_wield_available = player.sub_job == "NIN" -- TODO check for DW trait

  -- Gear aliases
  instruments = {
    general    = "Gjallarhorn",
    lullaby    = "Marsyas",     -- All lullaby except Horde II
    lullaby_h2 = "Daurdabla",   -- Use Blurred +1 if/when 567 string skill can be obtained without the +20 from Daurdabla
    dummy      = "Daurdabla",
  }
  -- JSE prefixes:
  -- Artifact: Choral / Brioso
  -- Relic:    Bard's / Bihu
  -- Empyrean: Aoidos' / Fili
  artifact = {
    head  = "Brioso Roundlet +3",
    body  = "Brioso Justaucorps +2",
    hands = "Brioso Cuffs +2",
    legs  = "Brioso Cannions +2",
    feet  = "Brioso Slippers +3",
  }
  relic = {
    head  = "Bihu Roundlet",
    body  = "Bihu Justaucorps +3",
    hands = "Bihu Cuffs",
    legs  = "Bihu Cannions",
    feet  = "Bihu Slippers +3",
  }
  empyrean = {
    head  = "Fili Calot +2",
    body  = "Fili Hongreline +2",
    hands = "Fili Manchettes +2",
    legs  = "Fili Rhingrave +2",
    feet  = "Fili Cothurnes +2",
  }
  jse_neck = "Bard's Charm +1"
  sortie_earring = "Fili Earring +1"

  ambu_cape = {
    songs = {name="Intarabus's Cape", augments={
      'CHR+20',
      'Mag. Acc+20 /Mag. Dmg.+20',
      'Mag. Acc.+10',
      '"Fast Cast"+10',
      'Damage taken-5%',
    }},
    enmity = {name="Intarabus's Cape", augments={
      'VIT+20',
      'Eva.+20 /Mag. Eva.+20',
      'VIT+10',
      'Enmity+10',
      'Phys. dmg. taken-10%',
    }},
    tp = {name="Intarabus's Cape", augments={
      'DEX+20',
      'Accuracy+20 Attack+20',
      'DEX+5', -- TODO: add 5 dye
      '"Store TP"+10',
      'Damage taken-5%',
    }},
    savage = {name="Intarabus's Cape", augments={
      'STR+20',
      'Accuracy+20 Attack+20',
      'STR+10',
      'Weapon skill damage +10%',
      'Damage taken-5%',
    }},
  }
  
  kali = {
    path_a = {name="Kali", augments={
      'DMG:+15',
      'CHR+15',
      'Mag. Acc.+15',
    }},
    path_c = {name="Kali", augments={
      'MP+60',
      'Mag. Acc.+20',
      '"Refresh"+1',
    }},
  }

  linos = {
    tp = {name="Linos", augments={
      'Accuracy+12',             -- Snowslit: 1-20, any other snow: 1-15
      '"Store TP"+2',            -- Leafslit, Leaftip: 1-4
      'Quadruple Attack +2',     -- Dusktip: 1-3
    }},
    savage = {name="Linos", augments={
      'Attack+15',               -- Snowslit: 1-20, any other snow: 1-15
      'Weapon skill damage +2%', -- Leafslit, Leaftip: 1-3
      'STR+8',                   -- Duskslit: 1-8
    }},
    defense = {name="Linos", augments={
      'DEF+13',                  -- Any snow (but use snowtip): 1-15
      'Phys. dmg. taken -4%',    -- Leafslit: 1-5%
      'VIT+7',                   -- Duskslit: 1-8
    }}
  }

  -- Basic sets
  sets.idle = {
    main       = "Sangoma",
    sub        = "Genmei Shield",
    range      = linos.defense,
    head       = empyrean.head,
    body       = "Inyanga Jubbah +2",
    hands      = empyrean.hands,
    legs       = empyrean.legs,
    feet       = "Inyanga Crackows +2",
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    left_ear   = "Eabani Earring",
    right_ear  = "Odnowa Earring +1",
    left_ring  = "Shneddick Ring",
    right_ring = "Defending Ring",
    back       = ambu_cape.songs,
  }
  sets.TP = {
    main       = "Naegling",
    sub        = "Genmei Shield",
    range      = linos.tp,
    head       = "Ayanmo Zucchetto +2", -- Bunzi's Hat after RP
    body       = "Ayanmo Corazza +2",   -- Ashera (lol)
    hands      = "Bunzi's Gloves",
    legs       = nyame.legs,
    feet       = nyame.feet,            -- Battlecast Gaiters?
    neck       = jse_neck,
    waist      = "Sailfi Belt +1",
    left_ear   = "Dignitary's Earring",
    right_ear  = "Telos Earring",
    left_ring  = "Chirich Ring +1",
    right_ring = "Chirich Ring +1",     -- Ephramad's Ring for acc swap?
    back       = ambu_cape.tp,
  }
  if dual_wield_available then
    sets.TP["sub"] = "Gleti's Knife"
  end
  sets.FC = {
    -- TODO optimize with haste
    -- Don't use ammo FC, messes with instrument swaps... Linos?
    head       = vanya.head.path_d,          -- Fast Cast +10%
    body       = "Inyanga Jubbah +2",   -- FC +14%
    hands      = "Inyan. Dastanas +2",
    legs       = "Ayanmo Cosciales +2", -- FC +6%
    feet       = empyrean.feet,         -- FC +10%
    waist      = "Cornelia's Belt",     -- For 10% haste if midcast doesn't swap it off
    left_ear   = "Malignance Earring",  -- FC +4%
    right_ear  = "Loquacious Earring",  -- FC +2%
    left_ring  = "Kishar Ring",         -- FC +4%
    right_ring = "Naji's Loop",         -- FC +1%
    back       = ambu_cape.songs,       -- FC +10%
  }
  sets.enmity = {
    -- Total +69 enmity, 72 possible with Trux Earring
    main       = "Mafic Cudgel",       -- Enmity +6
    sub        = "Genmei Shield",
    range      = linos.defense,
    head       = "Halitus Helm",       -- Enmity +8
    body       = "Emet Harness +1",    -- Enmity +10
    hands      = empyrean.hands,
    legs       = "Zoar Subligar +1",   -- Enmity +6
    feet       = nyame.feet,
    neck       = "Unmoving Collar +1", -- Enmity +10
    waist      = "Kasiri Belt",        -- Enmity +3
    left_ear   = "Cryptic Earring",    -- Enmity +4
    right_ear  = "Friomisi Earring",   -- Enmity +2 (get Trux from Divine Might for +5)
    left_ring  = "Provocare Ring",     -- Enmity +5
    right_ring = "Supershear Ring",    -- Enmity +5
    back       = ambu_cape.enmity,     -- Enmity +10
  }

  -- Precast sets
  sets.precast.RA = {}
  sets.precast["Cure"] = set_combine(sets.FC, {
    legs      = "Doyen Pants",         -- -15% Cure cast time
    right_ear = "Mendicant's Earring", -- -5% Cure cast time
  })
  sets.precast["Stoneskin"] = set_combine(sets.FC, {
    legs = "Doyen Pants", -- -10% Stoneskin cast time
  })
  sets.precast["BardSong"] = set_combine(sets.FC, {
    legs = "Doyen Pants", -- -6% Song cast time
  })

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(nyame, {
    range      = linos.savage,
    body       = relic.body,
    neck       = "Republican Platinum Medal",
    waist      = "Sailfi Belt +1",
    left_ear   = "Moonshade Earring",
    right_ear  = "Ishvara Earring",
    left_ring  = "Rufescent Ring",
    right_ring = "Ephramad's Ring",
    back       = ambu_cape.savage,
  })

  -- Job ability sets
  sets.precast["Soul Voice"] = {
    legs = relic.legs -- Soul Voice duration +30s
  }
  sets.precast["Nightingale"] = {
    feet = relic.feet -- Nightingale duration +20s (with full merits)
  }
  sets.precast["Troubador"] = {
    body = relic.body -- Troubador duration +20s (with full merits)
  }

  -- Midcast sets
  sets.macc = {
    main       = "Tauret",
    sub        = "Ammurapi Shield",
    range      = "Gjallarhorn",
    neck       = "Incanter's Torque",
    left_ear   = "Dignitary's Earring",
    right_ear  = "Hermetic Earring",
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
  }
  sets.midcast["Enfeebling Magic"] = set_combine(sets.macc, {
    right_ring = "Kishar Ring", -- Enfeebling duration +10%
  })
  sets.midcast["Enhancing Magic"] = {
    sub        = "Ammurapi Shield",     -- Enhancing duration +10%
    hands      = "Inyanga Dastanas +2",
    neck       = "Incanter's Torque",
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
    waist      = "Siegel Sash",         -- Enhancing cast time -8%
  }
  sets.midcast["Stoneskin"] = set_combine(sets.midcast["Enhancing Magic"], {
    -- legs     = "Shedir Seraweels", -- Stoneskin +35
    neck     = "Nodens Gorget",    -- Stoneskin +30
    -- left_ear = "Earthcry Earring", -- Stoneskin +10
    waist    = "Siegel Sash",      -- Stoneskin +20
  })
  sets.midcast["Aquaveil"] = set_combine(sets.midcast["Enhancing Magic"], {
    head = "Chironic Hat", -- Aquaveil +1
    -- legs = "Shedir Seraweels" -- Aquaveil +1
  })

  sets.midcast["BuffSong"] = {
    main       = kali.path_a,
    sub        = "Genbu's Shield",
    range      = "Gjallarhorn",
    head       = empyrean.head,
    body       = empyrean.body,
    hands      = empyrean.hands,
    legs       = "Inyanga Shalwar +2",
    feet       = artifact.feet,
    neck       = "Moonbow Whistle +1",
    left_ear   = "Dignitary's Earring",
    right_ear  = sortie_earring,
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
    back       = ambu_cape.songs,
    
    -- waist      = "Flume Belt +1",
  }
  -- Equip second kali in offhand for more duration if dual wield is available
  if dual_wield_available then
    sets.midcast["BuffSong"]["sub"] = kali.path_c
  end

  sets.midcast["DebuffSong"] = set_combine(sets.midcast["BuffSong"], {
    main  = kali.path_a,
    sub   = "Amurappi Shield",
    feet  = empyrean.feet,
    waist = "Luminary Sash",
  })
  -- No swaps needed for minuet, march
  sets.midcast["Madrigal"] = {
    feet = empyrean.feet, -- Normalizes duration, extra DEX from set bonus
  }
  sets.midcast["Paeon"] = {
    head = artifact.head,
  }
  sets.midcast["Prelude"] = {
    feet = empyrean.feet, -- Normalizes duration
  }
  sets.midcast["Sentinel's Scherzo"] = {
    feet = empyrean.feet,
  }
  -- sets.midcast["Etude"] = {
  --     head = "Mousai Turban +1",
  -- }
  -- sets.midcast["Threnody"] = {
  --     body = "Mousai Manteel +1",
  -- }
  -- sets.midcast["Carol"] = {
  --     hands = "Mousai Gages +1",
  -- }
  -- sets.midcast["Minne"] = {
  --     legs = "Mousai Seraweels +1",
  -- }
  -- sets.midcast["Mambo"] = {
  --     feet = "Mousai Crackows +1",
  -- }
  sets.midcast["Lullaby"] = set_combine(sets.midcast["DebuffSong"], {
    -- Carnwenhan (Level 119 III)
    head  = artifact.head,
    body  = empyrean.body,
    hands = artifact.hands,
    legs  = "Inyanga Shalwar +2",
    feet  = artifact.feet,
    -- waist = "Acuity Belt +1", -- Need to RP this
  })

  sets.midcast["Horde Lullaby II"] = set_combine(sets.midcast["Lullaby"], {
    -- 486 string skill required for 6 yalm radius
    -- 567 string skill required for 7 yalm radius
    -- sub        = "Ammurapi Shield",
    -- head       = "Brioso Roundlet +3",  -- String +13
    -- body       = "Brioso Justau. +3",   -- String +14
    -- hands      = "Inyanga Dastanas +2", -- Combined +40
    -- legs       = "Inyanga Shalwar +2",  -- Duration +17%
    -- feet       = "Bihu Slippers +3",    -- String +15
    -- neck       = "Incanter's Torque",   -- Combined +20, use Moonbow+1 at ML20
    -- left_ear   = "Gersemi Earring",     -- String +10
    -- right_ear  = "Darkside Earring",    -- Combined +10
    -- left_ring  = "Stikini Ring + 1",    -- Combined +16
    -- right_ring = "Stikini Ring + 1",    -- Combined +16
    -- waist      = "Harfner's Sash",      -- Combined +10
    -- back       = "Erato's Cape",        -- String +4
    body  = relic.body,
    hands = empyrean.hands,
  })

  tanking_in_odyssey = false  -- TODO add a toggle for this
  if tanking_in_odyssey then
    sets.midcast["Lullaby"] = set_combine(
      sets.midcast["Lullaby"],
      sets.enmity
    )
    sets.midcast["Horde Lullaby II"] = set_combine(
      sets.midcast["Horde Lullaby II"],
      sets.enmity
    )
    sets.midcast["Magic Finale"] = set_combine(
      sets.midcast["DebuffSong"],
      sets.enmity
    )
  end

  sets.midcast["Cure"] = {
    main       = "Daybreak",
    sub        = "Ammurapi Shield",
    ammo       = "Hydrocera",
    head       = vanya.head.path_b,
    body       = vanya.body.path_b,
    hands      = vanya.hands.path_b,
    legs       = vanya.legs.path_b,
    feet       = vanya.feet.path_b,
    neck       = "Incanter's Torque",
    waist      = "Luminary Sash",
    left_ear   = "Meili Earring",
    right_ear  = "Mendicant's Earring",
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
    back       = "Solemnity Cape",
  }
  sets.midcast["Curaga"] = sets.midcast["Cure"]

  sets.precast["Curing Waltz"] = set_combine(sets.idle,{
    left_ring  = "Defending Ring",
    right_ring = "Asklepian Ring",
  })
  sets.precast["Curing Waltz II"]  = sets.precast["Curing Waltz"]
  sets.precast["Curing Waltz III"] = sets.precast["Curing Waltz"]

  -- Other sets
  sets.TH = {
    ammo  = "Perfect Lucky Egg",
    head  = "White Rarab Cap +1",
    -- waist = "Chaac Belt",
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    main = "Voluspa Knife",
  })

end -- get_sets()