function get_sets()
  include('Zuri-Logic.lua')
  job_init(6, 1, 7, "Noble Chocobo") -- Macro book, macro page, lockstyle set, preferred mount
  initialize_empty_sets()

  -- Gear Aliases

  -- JSE Prefixes:
  -- Artifact: Gallant / Reverence
  -- Relic:    Valor / Caballarius
  -- Empyrean: Creed / Chevalier's
  artifact = {
    -- head  = "Gallant Coronet",   -- Stored, consider using for Cover after upgrading
    body = "Reverence Surcoat +1",
    -- hands = "Gallant Gauntlets", -- Stored
    legs = "Reverence Breeches +1"
    -- feet  = "Gallant Leggings",  -- Stored
  }
  relic = {
    head = "Caballarius Coronet +1",
    body = "Caballarius Surcoat +1",
    hands = "Caballarius Gauntlets +1",
    legs = "Caballarius Breeches +1",
    feet = "Caballarius Leggings +1"
  }
  empyrean = {
    head = "Chevalier's Armet +2",
    body = "Chevalier's Cuirass +2",
    hands = "Chevalier's Gauntlets +2",
    legs = "Chevalier's Cuisses +2",
    feet = "Chevalier's Sabatons +2"
  }
  -- jse_neck = ""
  sortie_earring = "Chevalier's Earring +1"

  ambu_cape = {
    meva = {
      name = "Rudianos's Mantle",
      augments = {
        'HP+60',
        'Mag. Evasion+10',
        'Enmity+10',
        'Occ. inc. resist. to stat. ailments+10'
      }
    },
    cure_potency = {
      name = "Rudianos's Mantle",
      augments = {
        'MND+20',
        'Eva.+20 /Mag. Eva.+20',
        'VIT+10',
        '"Cure" potency +10%',
        'Spell interruption rate down-10%'
      }
    },
    fast_cast = {
      name = "Rudianos's Mantle",
      augments = {
        'HP+60',
        'Eva.+20 /Mag. Eva.+20',
        'Mag. Evasion+10',
        '"Fast Cast"+10',
        'Spell interruption rate down-10%'
      }
    }
    -- tp = {name = "Rudianos's Mantle", augments = {}},
  }

  odyssean = {
    head = {
      phalanx = {
        name = "Odyssean Helm",
        augments = {
          'Pet: "Subtle Blow"+8',
          'Rng.Atk.+14',
          'Phalanx +3',
          'Accuracy+19 Attack+19',
          'Mag. Acc.+3 "Mag.Atk.Bns."+3'
        }
      },
      th = {
        name = "Odyssean Helm",
        augments = {
          'MND+3',
          'Magic burst dmg.+6%',
          '"Treasure Hunter"+2',
          'Accuracy+7 Attack+7',
          'Mag. Acc.+5 "Mag.Atk.Bns."+5'
        }
      }
    },
    body = {
      phalanx = {
        name = "Odyss. Chestplate",
        augments = {
          'Magic dmg. taken -2%',
          '"Mag.Atk.Bns."+20',
          'Phalanx +4'
        }
      }
    },
    feet = {
      cure_potency = {
        name = "Odyssean Greaves",
        augments = {
          '"Mag.Atk.Bns."+18',
          '"Cure" potency +5%',
          'MND+9'
        }
      }
    }
  }

  -- Weapon cycles
  sets.cycles.weapons = {
    physical_tank = {
      main = "Sakpata's Sword",
      sub = "Srivatsa"
    },
    magic_tank = {
      main = "Malignance Sword",
      sub = "Aegis"
    },
    aeolian = {
      main = "Levante Dagger",
      sub = "Duban"
    }
    -- cata_cleave = {
    --   main = "Malignance Pole",
    --   sub = "Willpower Grip"
    -- }
  }

  -- Basic sets
  sets.idle = set_combine(nyame, {
    main = "Malignance Sword",
    sub = "Srivatsa",
    ammo = "Staunch Tathlum",
    head = empyrean.head,
    body = sakpata.body,
    hands = sakpata.hands,
    legs = empyrean.legs,
    feet = sakpata.feet,
    neck = "Unmoving Collar +1",
    back = ambu_cape.meva,
    waist = "Platinum Moogle Belt",
    left_ear = "Foresti Earring",
    right_ear = sortie_earring,
    left_ring = "Warden's Ring",
    right_ring = "Shneddick Ring"
  })

  -- For sweaty magic tanking
  sets.idle_magic = set_combine(sets.idle, {
    neck = "Warder's Charm +1",
    left_ear = "Eabani Earring",
    right_ear = "Hearty Earring",
    right_ring = "Shadow Ring"
  })

  sets.tp = set_combine(sets.idle, {
    -- neck = "Warder's Charm +1" -- For sweaty magic tanking
    right_ring = "Shadow Ring"
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
    ammo = "Sapience Orb", -- 2% FC
    head = "Carmine Mask +1", -- 14% FC
    -- body = artifact.body, -- 5% at +2, 10% at +3
    body = "Sacro Breastplate", -- 10% FC HP+182
    hands = "Leyline Gloves", -- 5+1% FC
    legs = "Enif Cosciales", -- 8% FC
    feet = empyrean.feet, -- 10% FC at +2
    left_ear = "Loquacious Earring", -- 2% FC
    right_ear = "Odnowa Earring +1", -- HP +110
    left_ring = "Gelatinous Ring +1", -- HP +135
    right_ring = "Kishar Ring", -- 4% FC (Medada's Ring for 10%)
    waist = "Platinum Moogle Belt",
    back = ambu_cape.fast_cast -- 10% FC

    -- head = "Carmine Mask +1", --14% FC
    -- body = artifact.body, -- 10% FC at +3
    -- legs = "Enif Cosciales" --8% FC
    -- neck = "Baetyl Pendant", -- 4% FC (Orunmila's Torque gets 5)
  }
  sets.enmity = {
    ammo = "Sapience Orb", -- Enmity +2
    head = "Loess Barbuta +1", -- Enmity +24
    body = "Souveran Cuirass +1", -- Enmity +20
    legs = relic.legs, -- Enmity +?
    hands = "Souveran Handschuhs +1", -- Enmity +9 with path ???
    feet = empyrean.feet, -- Enmity +?
    neck = "Unmoving Collar +1", -- Enmity +10
    waist = "Creed Baudrier", -- Enmity +5
    back = ambu_cape.meva, -- Enmity +10 (swap with physical def cape?)
    left_ear = "Cryptic Earring", -- Enmity +4
    right_ear = "Friomisi Earring", -- Enmity +2 (get Trux from Divine Might for +5)
    left_ring = "Provocare Ring", -- Enmity +5 (get Apeile Ring +1, Eiwaz Ring)
    right_ring = "Supershear Ring" -- Enmity +5
  }
  sets.sird = {
    ammo = "Staunch Tathlum", -- 10% SIRD
    head = "Souveran Schaller +1", -- 20% SIRD
    legs = "Founder's Hose", -- 30% SIRD
    feet = empyrean.feet,
    waist = "Platinum Moogle Belt",
    left_ear = "Magnetic Earring", -- 8% SIRD
    right_ear = "Knightly Earring" -- 9% SIRD

    -- body = af_body,
    -- neck = "Moonlight Necklace"
    -- right_ring = "Moonlight Ring",
  }
  sets.phalanx_received = set_combine(sets.idle, sets.sird, {
    main = "Sakpata's Sword", -- Phalanx +5
    sub = "Priwen", -- Phalanx +2
    head = odyssean.head.phalanx, -- Phalanx +3
    body = odyssean.body.phalanx, -- Phalanx +4
    hands = "Souveran Handschuhs +1", -- Phalanx +5, path D for shield skill
    legs = "Sakpata's Cuisses", -- Phalanx +5
    feet = "Souveran Schuhs +1", -- Phalanx +5
    back = "Weard Mantle", -- Phalanx +3 (can roll up to +5 with refractive crystals)
    left_ear = "Odnowa Earring +1", -- Just for defense

    waist = "Gishdubar Sash", -- Because we might get Refresh at the same time
    right_ear = "Brachyura Earring" -- Because we might get Shell at the same time
  }) -- Total: +32
  sets.cursna_received = {
    legs = "Shabti Cuisses +1", -- Cursna Received +15%
    neck = "Nicander's Necklace", -- Cursna Received +20%, Holy Water +30%, PDT+10%
    waist = "Gishdubar Sash", -- Cursna Received +10%
    left_ring = "Purity Ring", -- Cursna Received +7%
    left_ear = "Odnowa Earring +1" -- More DT to offset the +10% PDT from Nicander's

    -- body = artifact.body,
    -- hands = "Souveran Handschuhs +1",   -- Path C for shield skill
    -- right_ring = "Saida Ring",          -- 15% (20% possible with HQ (Eshmun's))
    -- back = "Moonbeam Cape",
  } -- Total 67%

  -- Precast sets
  sets.precast["Chivalry"] = set_combine(sets.enmity, {
    hands = relic.hands
  })
  sets.precast["Fealty"] = set_combine(sets.enmity, {
    body = relic.body
  })
  sets.precast["Invincible"] = set_combine(sets.enmity, {
    legs = relic.legs
  })
  sets.precast["Rampart"] = set_combine(sets.enmity, {
    head = relic.head
  })
  sets.precast["Sentinel"] = set_combine(sets.enmity, {
    feet = relic.feet
  })
  sets.precast["Shield Bash"] = set_combine(sets.enmity, {
    hands = relic.hands,
    right_ear = "Knightly Earring"
  })
  sets.precast["Holy Circle"] = set_combine(sets.enmity, {
    feet = artifact.feet
  })

  sets.precast["Divine Emblem"] = sets.enmity
  sets.precast["Majesty"] = sets.enmity
  sets.precast["Palisade"] = sets.enmity

  sets.precast["Provoke"] = sets.enmity
  sets.precast["Warcry"] = sets.enmity
  sets.precast["Burst Affinity"] = sets.enmity
  sets.precast["Pflug"] = sets.enmity
  sets.precast["Swordplay"] = sets.enmity
  sets.precast["Valiance"] = sets.enmity
  sets.precast["Vallation"] = sets.enmity

  -- Weaponskill sets
  sets.precast.WS.melee = set_combine(nyame, {
    ammo = "Oshasha's Treatise",
    back = "Atheling mantle", -- Replace with ambu str cape
    neck = "Fotia Gorget",
    waist = "Fotia Belt",
    left_ear = "Thrud Earring",
    right_ear = "Moonshade Earring",
    left_ring = "Ephramad's Ring", -- Epaminondas's Ring
    right_ring = "Regal Ring"
  })
  sets.precast.WS["Savage Blade"] = set_combine(sets.precast.WS.melee, {
    ammo = "Coiste Bodhar",
    neck = "Republican Platinum Medal",
    waist = "Sailfi Belt +1"
  })
  sets.precast.WS["Sanguine Blade"] = set_combine(sets.precast.WS.melee, {
    ammo = "Ghastly Tathlum +1",
    head = "Pixie Hairpin +1",
    neck = "Sibyl Scarf",
    left_ear = "Thrud Earring",
    right_ear = "Friomisi Earring", -- Halasz, Crematio?
    left_ring = "Archon Ring",
    right_ring = "Shiva Ring +1", -- Medada's?
    back = "Toro Cape",
    waist = "Eschan Stone" -- "Orpheus's Sash",
  })
  sets.precast.WS["Cataclysm"] = sets.precast.WS["Sanguine Blade"]
  sets.precast.WS["Aeolian Edge"] = set_combine(sets.precast.WS["Sanguine Blade"], {
    head = nyame.head,
    right_ear = "Moonshade Earring"
    -- back = "Mecistopins Mantle"
  })
  sets.precast.WS["Earth Crusher"] = sets.precast.WS["Aeolian Edge"]
  sets.precast.WS["Chant du Cygne"] = set_combine(sets.precast.WS.melee, sakpata, {
    ammo = "Coiste Bodhar",
    body = "Hjarrandi Breastplate",
    left_ring = "Begrudging Ring"
    -- back = ambu_cape.dex,
    -- left_ear = "Mache Earring +1",
  })
  sets.precast.WS["Requiescat"] = set_combine(sets.precast.WS.melee, sakpata, {
    ammo = "Coiste Bodhar",
    left_ring = "Beithir Ring"
    -- back      = "Vespid Mantle",
    -- left_ear  = "Cessance Earring",
  })

  sets.precast["Cure"] = set_combine(sets.FC, {
    neck = "Diemer Gorget", -- Cure spellcasting time -4%
    left_ear = "Mendicant's Earring", -- Cure spellcasting time -5%
    waist = "Acerbic Sash +1" -- Cure spellcasting time -8%
  })
  sets.precast["CureSelf"] = set_combine(sets.precast["Cure"], {
    -- Lose (convert) HP before self-curing for more hate generation
    right_ear = "Influx Earring", -- 55 HP to MP
    left_ring = "Mephitas's Ring", -- 100 HP to MP
    right_ring = "Mephitas's Ring +1" -- 110 HP to MP
  })

  -- Midcast sets
  sets.midcast["Enhancing Magic"] = {
    body = "Shabti Cuirass"

    -- hands = "Regal Gauntlets",
    -- left_ring = "Stikini Ring",
    -- right_ring = "Stikini Ring",
  }
  sets.midcast["Protect"] = set_combine(sets.midcast["Enhancing Magic"], {
    sub = "Srivatsa",
    left_ear = "Brachyura Earring"
  })
  sets.midcast["Cure"] = {
    head = "Souveran Schaller +1", -- CPR +15%, +9 Enmity, +280 HP, SIRD -20
    body = "Souveran Cuirass +1", -- CP, CPR, Enmity, HP, DT
    hands = "Macabre Gauntlets",
    back = ambu_cape.cure_potency,
    legs = empyrean.legs, -- HP, enmity retention, DT
    feet = odyssean.feet.cure_potency,
    right_ear = sortie_earring -- CP, DT

    -- neck  = "Sacro Gorget",                  -- CP1 +10
    -- ring2 = "Gelatinous Ring +1",
    -- body  = "Souveran Cuirass +1",           -- CP1 +11
    -- hands = gear.Souveran_ShieldSkill_Hands,
    -- back  = gear.PLD_CurePot_Cape,           -- CP1 +10
  }
  sets.midcast["CureSelf"] = set_combine(nyame, sets.midcast["Cure"], {
    -- Raise max HP before the cure lands for more hate generation
    neck = "Sanctity Necklace", -- HP +35
    waist = "Platinum Moogle Belt", -- HP +10%
    left_ear = "Odnowa Earring +1", -- 110 MP to HP
    right_ear = "Cryptic Earring", -- HP +40, enmity +4
    left_ring = "Defending Ring",
    right_ring = "Moonbeam Ring" -- HP +100, DT-4

    -- ammo  = "Egoist's Tathlum",         --	+45 HP
    -- neck  = "Sacro Gorget",             --	CP1 +10%,  +5 Enmity,        +50 HP
    -- hands = "Macabre Gauntlets +1",     --	CP1 +11%,  +89 HP,           PDT -4
    -- back  = "Moonbeam Cape",            --	+250 HP,   DT -5
    -- feet  = gear.Odyssean_CurePot_Feet, --	CP1 +10%,  SIRD -20
  })
  sets.midcast["Phalanx"] = set_combine(sets.sird, sets.phalanx_received, {
    left_ear = "Mimir Earring" -- Enhancing +10
  })
  sets.midcast["Refresh"] = set_combine(sets.sird, {
    -- TODO: selfcast only
    waist = "Gishdubar Sash" -- Refresh duration +20
  })
  sets.midcast["Flash"] = sets.enmity
  sets.midcast["Banishga"] = sets.enmity
  sets.midcast["Blue Magic"] = sets.sird

  -- Other sets
  sets.TH = {
    ammo = "Perfect Lucky Egg",
    head = odyssean.head.th
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

  sets.doomed = set_combine(sets.global.holy_water, sets.cursna_received)
end -- get_sets()

-- PLD-specific "cure cheating"
function job_precast(spell, mapped_spell)
  if spell.target.type == "SELF" and (mapped_spell == "Cure" or mapped_spell == "Curaga") then
    safe_equip(sets.precast["CureSelf"])
  end
end
function job_midcast(spell, mapped_spell)
  if spell.target.type == "SELF" and (mapped_spell == "Cure" or mapped_spell == "Curaga") then
    safe_equip(sets.midcast["CureSelf"])
  elseif buffactive["Rampart"] == false then
    safe_equip(sets.sird)
  end
end
