function get_sets()
  include('Zuri-Logic.lua')
  job_init(1, 1, 1)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- Gear aliases

  -- Basic sets
  sets.idle = set_combine(full_nyame, {
    ammo       = "Ghastly Tathlum",
    neck       = "Sanctity Necklace",
    waist      = "Eschan Stone",
    back       = "Solemnity Cape",
    left_ear   = "Odr Earring",
    right_ear  = "Steelflash Earring",
    left_ring  = "Shneddick Ring",
    right_ring = "Ayanmo Ring",
  })
  sets.TP = set_combine(sets.idle, {
    main  = "Eminent Scimitar",
    sub   = "Machaera",
    hands = "Magus Bazubands",
    neck  = "Lissome Necklace",
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
    head      = "Jhakri Coronal +2",
    body      = "Jhakri Robe +2",
    hands     = "Jhakri Cuffs +2",
    legs      = "Jhakri Slops +2",
    feet      = "Jhakri Pigaches +2",
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