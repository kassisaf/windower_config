function get_sets()
  include('Zuri-Logic.lua')
--     job_init(2, 2, 17)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- Basic sets
  sets.idle = set_combine(full_nyame, {
    main       = "Hepatizon Axe",
    sub        = "Kaja Grip",
    -- ammo = "",
    neck       = "Loricate Torque +1",
    waist      = "Carrier's Sash",
    left_ear   = "Eabani Earring",
    right_ear  = "Handler's Earring +1",
    left_ring  = "Defending Ring",
    right_ring = "Shneddick Ring",
    back       = "Agema Cape",
  })
  sets.TP = {
    ammo       = "Coiste Bodhar",
    head       = "Sakpata's Helm",
    body       = "Sakpata's Breastplate",
    hands      = "Sakpata's Gauntlets",
    legs       = "Sakpata's Cuisses",
    feet       = "Sakpata's Leggings",
    neck       = "Subtlety Spectacles",
    waist      = "Sailfi Belt +1",
    left_ear   = "Dignitary's Earring",
    right_ear  = "Boii Earring +1",
    left_ring  = "Chirich Ring +1",
    right_ring = "Petrov Ring",
    back       = "Atheling Mantle",
  }
  sets.FC = {}

  -- Precast sets

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(full_nyame, {
    ammo       = "Knobkierre",
    neck       = "Republican Platinum Medal",
    waist      = "Sailfi Belt +1",
    left_ear   = "Moonshade Earring",
    right_ear  = "Thrud Earring",
    left_ring  = "Rufescent Ring",    -- Get Regal
    -- right_ring = "Apate Ring",        -- Get Ilabrat
    right_ring = "Ephramad's Ring",
    back       = "Phalangite Mantle",
  })

  -- Job ability sets
  
  -- Midcast sets

  -- Other sets
  sets.TH = {
    ammo  = "Perfect Lucky Egg",
  }
  -- Maximize crit rate for Domain Invasion
  -- sets.DI = set_combine(sets.TP, {})

end -- get_sets()