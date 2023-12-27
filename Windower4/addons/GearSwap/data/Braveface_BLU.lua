function get_sets()
  include('Zuri-Logic.lua')
  -- job_init(2, 2, 17)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- Gear aliases

  -- Basic sets
  sets.idle = {
    ammo       = "Ghastly Tathlum",
    head       = "Ayanmo Zucchetto",
    body       = "Ayanmo Corazza",
    hands      = "Ayanmo Manopolas",
    legs       = "Ayanmo Cosciales",
    feet       = "Ayanmo Gambieras",
    neck       = "Subtlety Spec.",
    waist      = "Eschan Stone",
    left_ear   = "Odr Earring",
    right_ear  = "Steelflash Earring",
    left_ring  = "Shneddick Ring",
    right_ring = "Ayanmo Ring",
  }
  sets.TP = set_combine(sets.idle, {
    main  = "Eminent Scimitar",
    sub   = "Moogle Guard +1",
    hands = "Magus Bazubands",
  })
  sets.FC = {}

  -- Precast sets
  sets.precast.RA = {}

  -- Weaponskill sets
  sets.precast.WS.melee = {
    right_ring = "Rufescent Ring",
  }
  -- sets.precast.WS["Rudra's Storm"] = sets.precast.WS.melee
  -- sets.precast.WS["Evisceration"] = set_combine(sets.precast.WS.melee,{
  -- })

  -- Job ability sets
  
  -- Midcast sets
  sets.midcast["BlueMagic"] = {
    head      = "Jhakri Coronal +1",
    body      = "Jhakri Robe +1",
    hands     = "Jhakri Cuffs +1",
    legs      = "Jhakri Slops +1",
    feet      = "Jhakri Pigaches +1",
  }

  -- Other sets
  sets.TH = {
    -- ammo  = "Perfect Lucky Egg",
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {})
  sets.doomed = {
    -- left_ring  = "Blenmot's Ring +1",
    -- right_ring = "Blenmot's Ring +1",
  }

end -- get_sets()