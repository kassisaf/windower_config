function get_sets()
  include('Zuri-Logic.lua')
  -- job_init(2, 2, 17)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {
    WS = {
      crit = {}
    }
  }
  sets.midcast = {}

  -- Gear aliases
  ambu_cape = {
    tp = {
      name = "Segomo's Mantle",
      augments = {
        'DEX+20',
        'Accuracy+20 Attack+20',
        'DEX+10',
        '"Dbl.Atk."+10',
        'Damage taken-5%'
      }
    }
    -- ws = {name="Segomo's Mantle", augments={
    --     'STR+20',
    --     'Accuracy+20 Attack+20',
    --     'STR+10',
    --     '"Dbl.Atk."+10',
    --     'Damage taken-5%',
    -- }}
  }

  -- Basic sets
  sets.idle = set_combine(nyame, {
    ammo = "Thew Bomblet",
    main = "Kaja Knuckles",
    neck = "Subtlety Spectacles",
    waist = "Eschan Stone",
    left_ear = "Odr Earring",
    right_ear = "Bloodbead Earring",
    left_ring = "Shneddick Ring",
    right_ring = "Gelatinous Ring +1",
    back = ambu_cape.tp
  })
  sets.TP = set_combine(sets.idle, {
    left_ring = "Mummu Ring"
  })
  sets.FC = {}

  -- Precast sets
  sets.precast.RA = {}

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(nyame, {
    right_ear = "Moonshade Earring",
    left_ring = "Rufescent Ring"
  })
  -- sets.precast.WS["Rudra's Storm"] = sets.precast.WS.melee
  -- sets.precast.WS["Evisceration"] = set_combine(sets.precast.WS.melee,{
  -- })

  -- Job ability sets

  -- Midcast sets

  -- Other sets
  sets.TH = {
    -- ammo  = "Perfect Lucky Egg",
  }
  -- Maximize crit rate for Domain Invasion
  sets.DI = set_combine(sets.TP, {})
  sets.doomed = {}
end -- get_sets()
