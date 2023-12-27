function get_sets()
  include('Zuri-Logic.lua')
  job_init(2, 1, 17)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- Basic sets
  sets.idle = {
    head       = "Nyame Helm",
    body       = "Nyame Mail",
    hands      = "Nyame Gauntlets",
    legs       = "Nyame Flanchard",
    feet       = "Nyame Sollerets",
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    left_ear   = "Eabani Earring",
    right_ear  = "Meili Earring",
    left_ring  = "Defending Ring",
    right_ring = "Shneddick Ring",
    back       = "Solemnity Cape",
  }
  sets.TP = {
    -- main       = "Naegling",
    -- sub        = "Tauret",
    range      = empty,
    ammo       = "Expeditious Pinion",

    head       = "Adhemar Bonnet",
    body       = "Adhemar Jacket",
    hands      = "Malignance Gloves",
    legs       = "Meghanada Chausses +2",
    feet       = "Malignance Boots",
    neck       = "Subtlety Spectacles",
    waist      = "Sailfi Belt +1",
    left_ear   = "Brutal Earring",        -- Get Sherida
    right_ear  = "Telos Earring",
    left_ring  = "Chirich Ring +1",
    right_ring = "Petrov Ring",
    back       = "Atheling Mantle",       -- Replace with ambu TP cape
  }
  sets.FC = {
    left_ear   = "Loquacious Earring", -- "Enhances"
    right_ring = "Kishar Ring",        -- 4%
    waist      = "Cornelia's Belt",    -- For 10% haste if midcast doesn't swap it off
  }

  -- Shooting sets
  -- Preshot should contain: Snapshot, Rapid Shot
  sets.precast.RA = {
    range      = "Jinx Discus",
    ammo       = empty,
  }
  -- Midshot should contain: R.acc, STP, crit, R.atk, Recycle, etc.
  sets.midcast.RA = set_combine(full_malignance, {
    body       = "Meghanada Cuirie +2",
    neck       = "Marked Gorget",
    waist      = "Eschan Stone",
    left_ear   = "Telos Earring",
    right_ear  = "Odr Earring",
    left_ring  = "Cacoethic Ring +1",
    -- right_ring = "Cacoethic Ring",
    right_ring = "Ephramad's Ring",
    back       = "Sokolski Mantle",
  })

  -- Precast sets
  sets.precast["Utsusemi"] = set_combine(sets.FC, {
    neck       = "Magoraga Beads",
    body       = "Passion Jacket",
  })

  -- Weaponskill sets
  sets.precast.WS.melee = {
    head       = "Meghanada Visor +2",
    body       = "Meghanada Cuirie +2",
    hands      = "Meghanada Gloves +2",
    legs       = "Meghanada Chausses +2",
    feet       = "Meghanada Jambeaux +2",
    back       = "Sokolski Mantle",
    neck       = "Fotia Gorget",
    left_ear   = "Moonshade Earring",
    right_ear  = "Odr Earring",
    left_ring  = "Rufescent Ring",
    -- right_ring = "Apate Ring",
    right_ring = "Ephramad's Ring",
    waist      = "Fotia Belt",
    -- back      = snapshot_roll_cape,
  }
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    neck       = "Republican Platinum Medal",
    waist      = "Sailfi Belt +1",
    right_ear  = "Ishvara Earring",
  })

  -- Midcast sets

  -- Job ability sets

  -- Use TH for targeted JA's
  -- sets.precast["Box Step"]   = sets.TH

  -- Other sets
  sets.TH = {
    ammo = "Perfect Lucky Egg",
    head = "Herculean Helm",
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {
    main      = "Voluspa Knife",
    ammo      = "Yetshila",
    hands     = "Mummu Wrists +2",
    left_ear  = "Odr Earring",
    left_ring = "Mummu Ring",
  })

end -- get_sets()