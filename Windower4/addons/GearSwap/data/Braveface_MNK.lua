function get_sets()
  include('Zuri-Logic.lua')
  -- job_init(2, 2, 17)  -- Macro book, macro page, lockstyle set

  -- Leave these empty
  sets.precast = {WS = {crit = {}}}
  sets.midcast = {}

  -- Gear aliases
  tp_cape = {name="Segomo's Mantle", augments={
    'DEX+20',
    'Accuracy+20 Attack+20',
    'DEX+10',
    '"Dbl.Atk."+10',
    'Damage taken-5%',
  }}
  ws_cape = {name="Segomo's Mantle", augments={
    'STR+20',
    'Accuracy+20 Attack+20',
    'STR+10',
    '"Dbl.Atk."+10',
    'Damage taken-5%',
  }}

  -- Basic sets
  sets.idle = {
    ammo       = "Thew Bomblet",
    main       = "Kaja Knuckles",
    head       = "Hizamaru Somen +2",
    body       = "Mummu Jacket +2",
    hands      = "Mummu Wrists +2",
    legs       = "Mummu Kecks +2",
    feet       = "Mummu Gamashes +2",
    neck       = "Subtlety Spectacles",
    waist      = "Eschan Stone",
    left_ear   = "Odr Earring",
    right_ear  = "Steelflash Earring",
    left_ring  = "Shneddick Ring",
    right_ring = "Ayanmo Ring",
    back       = tp_cape,
  }
  sets.TP = set_combine(sets.idle, {
    left_ring  = "Mummu Ring",
  })
  sets.FC = {}

  -- Precast sets
  sets.precast.RA = {}

  -- Weaponskill sets
  sets.precast.WS.melee = {
    neck      = "Anu Torque",
    left_ring = "Rufescent Ring",
    back      = ws_cape,
  }
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
  sets.doomed = {
    -- left_ring  = "Blenmot's Ring +1",
    -- right_ring = "Blenmot's Ring +1",
  }

end -- get_sets()