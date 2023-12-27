-- Usage notes:
-- Create the following macro to toggle dummy modes: /console gs c dummy
-- When enabled, your +songs instrument defined below in `instrument_dummy` will be equipped in midcast
-- When disabled, normal instrument logic applies

function get_sets()
  include('Zuri-Logic.lua')
  job_init(1, 1, 16)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- State flags
  dual_wield_available = player.sub_job == "NIN" -- TODO check for DW trait

  -- Gear aliases
  instrument_general    = "Gjallarhorn"
  instrument_lullaby    = "Marsyas"     -- All lullaby except Horde II
  instrument_lullaby_h2 = "Daurdabla"   -- Use Blurred +1 if/when 567 string skill can be obtained without the +20 from Daurdabla
  instrument_dummy      = "Daurdabla"
  kali_a = {name="Kali", augments={
    'DMG:+15',
    'CHR+15',
    'Mag. Acc.+15',}}
  kali_c = {name="Kali", augments={
    'MP+60',
    'Mag. Acc.+20',
    '"Refresh"+1',}}
  af_head     = "Brioso Roundlet +3"
  af_body     = "Brioso Justaucorps +2"
  af_hands    = "Brioso Cuffs +2"
  af_legs     = "Brioso Cannions +2"
  af_feet     = "Brioso Slippers +3"
  relic_head  = "Bihu Roundlet"
  relic_body  = "Bihu Justaucorps +3"
  relic_hands = "Bihu Cuffs"
  relic_legs  = "Bihu Cannions"
  relic_feet  = "Bihu Slippers +2"
  empy_head   = "Fili Calot +2"
  empy_body   = "Fili Hongreline +2"
  empy_hands  = "Fili Manchettes +2"
  empy_legs   = "Fili Rhingrave +2"
  empy_feet   = "Fili Cothurnes +2"

  -- Basic sets
  sets.idle = {
    main       = "Sangoma",
    sub        = "Genmei Shield",
    range      = instrument_general,
    head       = empy_head,
    body       = "Inyanga Jubbah +2",
    hands      = empy_hands,
    legs       = empy_legs,
    feet       = "Inyanga Crackows +2",
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    left_ear   = "Eabani Earring",
    right_ear  = "Meili Earring",
    left_ring  = "Shneddick Ring",
    right_ring = "Defending Ring",
    back       = "Intarabus's Cape",
  }
  sets.TP = set_combine(full_nyame, {
    main       = "Naegling",
    sub        = "Genmei Shield",

    neck       = "Sanctity Necklace",
    waist      = "Sailfi Belt +1",
    left_ear   = "Digni. Earring",
    right_ear  = "Fili Earring",
    left_ring  = "Chirich Ring +1",
    right_ring = "Petrov Ring",
    back       = "Agema Cape",
  })
  if dual_wield_available then
    sets.TP["sub"] = "Centovente"
  end
  sets.FC = {
    -- TODO optimize with haste
    -- Don't use ammo FC, messes with instrument swaps... Linos?
    head       = vanya_head_d,          -- Fast Cast +10%
    body       = "Inyanga Jubbah +2",   -- FC +14%
    hands      = "Inyan. Dastanas +2",
    legs       = "Ayanmo Cosciales +2", -- FC +6%
    feet       = empy_feet,             -- FC +10%
    waist      = "Cornelia's Belt",     -- For 10% haste if midcast doesn't swap it off
    left_ear   = "Malignance Earring",  -- FC +4%
    right_ear  = "Loquacious Earring",  -- FC +2%
    left_ring  = "Kishar Ring",         -- FC +4%
    right_ring = "Naji's Loop",         -- FC +1%
    back       = "Intarabus's Cape",    -- FC +10%
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
  sets.precast.WS.melee = set_combine(full_nyame, {
    body       = relic_body,
    neck       = "Fotia Gorget",
    waist      = "Fotia Belt",
    left_ear   = "Moonshade Earring",
    right_ear  = "Ishvara Earring",
    left_ring  = "Rufescent Ring",
    -- right_ring = "Apate Ring",
    right_ring = "Ephramad's Ring",
    back       = "Phalangite Mantle",
  })
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    neck  = "Republican Platinum Medal",
    waist = "Sailfi Belt +1",
  })

  -- Job ability sets
  sets.precast["Soul Voice"] = {
    legs = relic_legs -- Soul Voice duration +30s
  }
  sets.precast["Nightingale"] = {
    feet = relic_feet -- Nightingale duration +20s (with full merits)
  }
  sets.precast["Troubador"] = {
    body = relic_body -- Troubador duration +20s (with full merits)
  }

  -- Midcast sets
  sets.macc = {
    main       = "Tauret",
    sub        = "Ammurapi Shield",
    range      = "Gjallarhorn",
    neck       = "Incanter's Torque",
    right_ear  = "Dignitary's Earring",
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
    main       = kali_a,
    sub        = "Genbu's Shield",
    range      = "Gjallarhorn",
    head       = empy_head,
    body       = empy_body,
    hands      = empy_hands,
    legs       = "Inyanga Shalwar +2",
    feet       = af_feet,
    neck       = "Moonbow Whistle +1",
    -- waist      = "Flume Belt +1",
    left_ear   = "Dignitary's Earring",
    right_ear  = "Fili Earring",
    left_ring  = "Stikini Ring",
    right_ring = "Stikini Ring",
    back       = "Intarabus's Cape",
  }
  -- Equip second kali in offhand for more duration if dual wield is available
  if dual_wield_available then
    sets.midcast["BuffSong"]["sub"] = kali_c
  end

  sets.midcast["DebuffSong"] = set_combine(sets.midcast["BuffSong"], {
    main  = kali_a,
    sub   = "Amurappi Shield",
    feet  = empy_feet,
    waist = "Luminary Sash",
  })
  -- No swaps needed for minuet, march
  sets.midcast["Madrigal"] = {
    feet = empy_feet, -- Normalizes duration, extra DEX from set bonus
  }
  sets.midcast["Paeon"] = {
    head = af_head,
  }
  sets.midcast["Prelude"] = {
    feet = empy_feet, -- Normalizes duration
  }
  sets.midcast["Sentinel's Scherzo"] = {
    feet = empy_feet,
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
    head  = af_head,
    body  = empy_body,
    hands = af_hands,
    legs  = "Inyanga Shalwar +2",
    feet  = af_feet,
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
    body  = relic_body,
    hands = empy_hands,
  })

  sets.midcast["Cure"] = {
    main       = "Daybreak",
    sub        = "Ammurapi Shield",
    ammo       = "Hydrocera",
    head       = vanya_head_b,
    body       = vanya_body_b,
    hands      = vanya_hands_b,
    legs       = vanya_legs_b,
    feet       = vanya_feet_b,
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