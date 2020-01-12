-- Table of available core systems by class.
equip_classOutfits_coreSystems = {
   ["Yacht"] = {
      "Unicorp PT-100 Core System"
   },
   ["Luxury Yacht"] = {
      "Unicorp PT-100 Core System"
   },
   ["Scout"] = {
      "Unicorp PT-100 Core System", "Milspec Aegis 2201 Core System"
   },
   ["Courier"] = {
      "Unicorp PT-200 Core System", "Milspec Aegis 3601 Core System"
   },
   ["Freighter"] = {
      "Unicorp PT-600 Core System", "Milspec Aegis 5401 Core System"
   },
   ["Armoured Transport"] = {
      "Milspec Aegis 5401 Core System", "Milspec Orion 5501 Core System"
   },
   ["Fighter"] = {
      "Unicorp PT-200 Core System", "Milspec Orion 3701 Core System"
   },
   ["Bomber"] = {
      "Unicorp PT-200 Core System", "Milspec Orion 3701 Core System"
   },
   ["Corvette"] = {
      "Unicorp PT-500 Core System", "Milspec Orion 4801 Core System"
   },
   ["Destroyer"] = {
      "Unicorp PT-600 Core System", "Milspec Orion 5501 Core System"
   },
   ["Cruiser"] = {
      "Unicorp PT-1000 Core System", "Milspec Orion 9901 Core System"
   },
   ["Carrier"] = {
      "Milspec Orion 9901 Core System"
   },
   ["Drone"] = {
      "Milspec Orion 2301 Core System"
   },
   ["Heavy Drone"] = {
      "Milspec Orion 3701 Core System"
   }
}


-- Table of available engines by class.
equip_classOutfits_engines = {
   ["Yacht"] = {
      "Unicorp Hawk 150 Engine", "Nexus Dart 150 Engine"
   },
   ["Luxury Yacht"] = {
      "Unicorp Hawk 150 Engine", "Nexus Dart 150 Engine"
   },
   ["Scout"] = {
      "Unicorp Hawk 150 Engine", "Nexus Dart 150 Engine",
      "Tricon Zephyr Engine"
   },
   ["Courier"] = {
      "Unicorp Hawk 300 Engine", "Nexus Dart 300 Engine",
      "Tricon Zephyr II Engine", "Melendez Ox XL Engine"
   },
   ["Freighter"] = {
      "Unicorp Falcon 1200 Engine", "Malendez Buffalo XL Engine"
   },
   ["Armoured Transport"] = {
      "Malendez Buffalo XL Engine"
   },
   ["Fighter"] = {
      "Unicorp Hawk 300 Engine", "Nexus Dart 300 Engine",
      "Tricon Zephyr II Engine"
   },
   ["Bomber"] = {
      "Unicorp Hawk 300 Engine", "Nexus Dart 300 Engine",
      "Tricon Zephyr II Engine"
   },
   ["Corvette"] = {
      "Unicorp Falcon 550 Engine", "Nexus Arrow 550 Engine",
      "Tricon Cyclone Engine"
   },
   ["Destroyer"] = {
      "Unicorp Falcon 1200 Engine", "Nexus Arrow 1200 Engine",
      "Tricon Cyclone II Engine"
   },
   ["Cruiser"] = {
      "Unicorp Eagle 6500 Engine", "Nexus Bolt 6500 Engine",
      "Tricon Typhoon II Engine"
   },
   ["Carrier"] = {
      "Nexus Bolt 6500 Engine", "Tricon Typhoon II Engine",
      "Malendez Mammoth XL Engine"
   },
   ["Drone"] = {
      "Tricon Zephyr Engine"
   },
   ["Heavy Drone"] = {
      "Tricon Zephyr II Engine"
   }
}


-- Table of available hulls by class.
equip_classOutfits_hulls = {
   ["Yacht"] = {
      "Unicorp D-2 Light Plating", "Unicorp B-2 Light Plating"
   },
   ["Luxury Yacht"] = {
      "Unicorp D-2 Light Plating", "Unicorp B-2 Light Plating"
   },
   ["Scout"] = {
      "Unicorp D-2 Light Plating", "Unicorp B-2 Light Plating",
      "S&K Ultralight Stealth Plating"
   },
   ["Courier"] = {
      "Unicorp D-4 Light Plating", "S&K Small Cargo Hull"
   },
   ["Freighter"] = {
      "Unicorp D-12 Medium Plating", "S&K Medium Cargo Hull"
   },
   ["Armoured Transport"] = {
      "S&K Medium Cargo Hull"
   },
   ["Fighter"] = {
      "Unicorp D-4 Light Plating", "Unicorp B-4 Light Plating",
      "S&K Light Stealth Plating", "S&K Light Combat Plating"
   },
   ["Bomber"] = {
      "Unicorp D-4 Light Plating", "Unicorp B-4 Light Plating",
      "S&K Light Stealth Plating", "S&K Light Combat Plating"
   },
   ["Corvette"] = {
      "Unicorp D-8 Medium Plating", "Unicorp B-8 Medium Plating",
      "S&K Medium Stealth Plating", "S&K Medium Combat Plating"
   },
   ["Destroyer"] = {
      "Unicorp D-12 Medium Plating", "Unicorp B-12 Medium Plating",
      "S&K Medium-Heavy Stealth Plating", "S&K Medium-Heavy Combat Plating"
   },
   ["Cruiser"] = {
      "Unicorp D-20 Heavy Plating", "Unicorp B-20 Heavy Plating",
      "S&K Superheavy Combat Plating"
   },
   ["Carrier"] = {
      "Unicorp B-20 Heavy Plating", "S&K Superheavy Combat Plating"
   },
   ["Drone"] = {
      "S&K Ultralight Stealth Plating"
   },
   ["Heavy Drone"] = {
      "S&K Light Stealth Plating"
   }
}


-- Tables of available weapons by class.
-- See equip_set function for more info.
equip_classOutfits_weapons = {
   ["Yacht"] = {
      {
         "Laser Cannon MK1", "Laser Cannon MK2", "Razor MK1", "Razor MK2",
         "Laser PD MK1", "Turreted Gauss Gun"
      }
   },
   ["Luxury Yacht"] = {
      {
         "Laser Cannon MK1", "Laser Cannon MK2", "Razor MK1", "Razor MK2"
      }
   },
   ["Scout"] = {
      {
         "Laser PD MK1", "Laser PD MK2", "Razor Turret MK1",
         "Turreted Gauss Gun"
      }
   },
   ["Courier"] = {
      {
         "Laser PD MK1", "Laser PD MK2", "Razor Turret MK1",
         "Turreted Gauss Gun"
      }
   },
   ["Freighter"] = {
      {
         num = 1;
         "Laser Turret MK1", "Laser Turret MK2", "EMP Grenade Launcher",
         "Pulse Beam", "Enygma Systems Turreted Fury Launcher"
      },
      {
         "Laser Turret MK1", "Laser Turret MK2"
      }
   },
   ["Armoured Transport"] = {
      {
         num = 1;
         "Pulse Beam", "Enygma Systems Turreted Fury Launcher",
         "Heavy Laser", "Heavy Ripper Turret", "Lancelot Fighter Bay"
      },
      {
         "Laser Turret MK2", "Laser Turret MK3"
      }
   },
   ["Fighter"] = {
      {
         num = 1;
         "Mass Driver MK1", "Ion Cannon", "Unicorp Mace Launcher",
         "Unicorp Banshee Launcher", "Orion Lance", "Shattershield Lance",
         "Unicorp Headhunter Launcher", "Unicorp Fury Launcher",
         "Unicorp Medusa Launcher", "Ripper Cannon"
      },
      {
         "Plasma Blaster MK1", "Plasma Blaster MK2", "Gauss Gun",
         "Vulcan Gun", "Ripper Cannon"
      }
   },
   ["Bomber"] = {
      {
         num = 3, varied = true;
         "TeraCom Fury Launcher", "TeraCom Medusa Launcher",
         "Unicorp Headhunter Launcher", "Unicorp Mace Launcher",
         "Unicorp Banshee Launcher"
      },
      {
         "Gauss Gun", "Vulcan Gun", "Laser Cannon MK2", "Plasma Blaster MK2"
      }
   },
   ["Corvette"] = {
      {
         num = 1;
         "TeraCom Fury Launcher", "Unicorp Headhunter Launcher",
         "TeraCom Medusa Launcher"
      },
      {
         num = 2;
         "Mass Driver MK1", "Mass Driver MK2", "Heavy Ion Cannon",
         "Laser Turret MK1", "Plasma Turret MK2", "Razor Turret MK2"
      },
      {
         "Ripper Cannon", "Plasma Blaster MK2", "Laser Cannon MK2",
         "Vulcan Gun", "Ion Cannon"
      }
   },
   ["Destroyer"] = {
      {
         num = 2;
         "Railgun", "Heavy Ripper Turret", "Heavy Laser", "Orion Beam",
         "Grave Beam", "Laser Turret MK3", "Razor Turret MK2"
      },
      {
         num = 1;
         "Enygma Systems Turreted Fury Launcher", "Unicorp Caesar IV Launcher",
         "Unicorp Headhunter Launcher", "TeraCom Medusa Launcher"
      },
      {
         "Laser Turret MK2", "Laser Turret MK3", "Turreted Vulcan Gun"
      }
   },
   ["Cruiser"] = {
      {
         num = 2;
         "Turbolaser", "Ragnarok Beam", "Grave Beam", "Railgun Turret"
      },
      {
         "Heavy Laser", "Heavy Ripper Turret", "Railgun Turret"
      },
      {
         "Laser Turret MK3", "Turreted Vulcan Gun"
      }
   },
   ["Carrier"] = {
      {
         num = 2;
         "Turbolaser", "Ragnarok Beam"
      },
      {
         num = 2;
         "Heavy Laser", "Grave Beam", "Railgun Turret"
      },
      {
         "Lancelot Fighter Bay"
      },
      {
         "Laser Turret MK3", "Turreted Vulcan Gun"
      }
   },
   ["Drone"] = {
      {
         "Neutron Disruptor"
      }
   },
   ["Heavy Drone"] = {
      {
         "Heavy Neutron Disruptor"
      },
      {
         "Electron Burst Cannon"
      }
   }
}


-- Tables of available utilities by class.
-- See equip_set function for more info.
equip_classOutfits_utilities = {
   ["Yacht"] = {
      {
         varied = true;
         "Reactor Class I", "Unicorp Scrambler", "Jump Scanner",
         "Generic Afterburner"
      }
   },
   ["Luxury Yacht"] = {
      {
         varied = true;
         "Reactor Class I", "Unicorp Scrambler", "Small Shield Booster"
      }
   },
   ["Scout"] = {
      {
         varied = true;
         "Unicorp Scrambler", "Small Shield Booster", "Jump Scanner",
         "Generic Afterburner", "Emergency Shield Booster"
      }
   },
   ["Courier"] = {
      {
         varied = true;
         "Reactor Class I", "Small Shield Booster", "Unicorp Scrambler",
         "Hellburner", "Emergency Shield Booster"
      }
   },
   ["Freighter"] = {
      {
         varied = true;
         "Reactor Class II", "Medium Shield Booster", "Milspec Scrambler",
         "Droid Repair Crew", "Boarding Androids MKI"
      }
   },
   ["Armoured Transport"] = {
      {
         varied = true;
         "Reactor Class II", "Medium Shield Booster", "Milspec Scrambler",
         "Droid Repair Crew", "Boarding Androids MKI"
      }
   },
   ["Fighter"] = {
      {
         varied = true;
         "Reactor Class I", "Unicorp Scrambler", "Emergency Shield Booster",
         "Reverse Thrusters"
      }
   },
   ["Bomber"] = {
      {
         varied = true;
         "Reactor Class I", "Milspec Scrambler", "Small Shield Booster",
         "Emergency Shield Booster", "Hellburner", "Reverse Thrusters"
      }
   },
   ["Corvette"] = {
      {
         varied = true;
         "Reactor Class II", "Medium Shield Booster", "Milspec Scrambler",
         "Droid Repair Crew", "Boarding Androids MKI", "Hellburner"
      }
   },
   ["Destroyer"] = {
      {
         varied = true;
         "Reactor Class II", "Medium Shield Booster", "Droid Repair Crew",
         "Boarding Androids MKI"
      }
   },
   ["Cruiser"] = {
      {
         varied = true;
         "Reactor Class III", "Large Shield Booster", "Droid Repair Crew",
         "Boarding Androids MKII"
      }
   },
   ["Carrier"] = {
      {
         varied = true;
         "Reactor Class III", "Large Shield Booster", "Droid Repair Crew",
         "Boarding Androids MKII"
      }
   },
   ["Drone"] = {
      {
         "Reactor Class I"
      }
   },
   ["Heavy Drone"] = {
      {
         num = 1;
         "Unicorp Scrambler"
      },
      {
         "Reactor Class I"
      }
   }
}

-- Tables of available structurals by class.
-- See equip_set function for more info.
equip_classOutfits_structurals = {
   ["Yacht"] = {
      {
         varied = true;
         "Cargo Pod", "Solar Panel", "Fuel Pod", "Battery", "Shield Capacitor",
         "Improved Stabilizer", "Engine Reroute", "Steering Thrusters"
      }
   },
   ["Luxury Yacht"] = {
      {
         varied = true;
         "Shield Capacitor", "Engine Reroute", "Steering Thrusters"
      }
   },
   ["Scout"] = {
      {
         varied = true;
         "Fuel Pod", "Improved Stabilizer", "Shield Capacitor"
      }
   },
   ["Courier"] = {
      {
         varied = true;
         "Cargo Pod", "Fuel Pod", "Improved Stabilizer",
         "Improved Refrigeration Cycle"
      }
   },
   ["Freighter"] = {
      {
         varied = true;
         "Cargo Pod", "Cargo Pod", "Cargo Pod", "Medium Fuel Pod"
      }
   },
   ["Armoured Transport"] = {
      {
         varied = true;
         "Cargo Pod", "Medium Fuel Pod", "Battery II", "Shield Capacitor II",
         "Improved Power Regulator"
      }
   },
   ["Fighter"] = {
      {
         varied = true;
         "Solar Panel", "Fuel Pod", "Steering Thrusters", "Engine Reroute",
         "Battery", "Shield Capacitor", "Power Regulation Override",
         "Forward Shock Absorbers"
      }
   },
   ["Bomber"] = {
      {
         varied = true;
         "Fuel Pod", "Steering Thrusters", "Engine Reroute", "Shield Capacitor"
      }
   },
   ["Corvette"] = {
      {
         varied = true;
         "Solar Panel", "Medium Fuel Pod", "Battery II", "Shield Capacitor II",
         "Forward Shock Absorbers"
      }
   },
   ["Destroyer"] = {
      {
         varied = true;
         "Plasteel Plating", "Medium Fuel Pod", "Battery II",
         "Shield Capacitor II", "Improved Power Regulator",
         "Targeting Array"
      }
   },
   ["Cruiser"] = {
      {
         varied = true;
         "Biometal Armour", "Nanobond Plating", "Large Fuel Pod",
         "Battery III", "Shield Capacitor III", "Shield Capacitor IV"
      }
   },
   ["Carrier"] = {
      {
         varied = true;
         "Biometal Armour", "Nanobond Plating", "Large Fuel Pod",
         "Battery III", "Shield Capacitor III", "Shield Capacitor IV"
      }
   },
   ["Drone"] = {
      {
         "Steering Thrusters"
      }
   },
   ["Heavy Drone"] = {
      {
         num = 1;
         "Steering Thrusters"
      },
      {
         "Solar Panel"
      }
   }
}


-- Table of available core systems by base type.
equip_typeOutfits_coreSystems = {}


-- Table of available engines by base type.
equip_typeOutfits_engines = {}


-- Table of available hulls by base type.
equip_typeOutfits_hulls = {}


-- Tables of available weapons by base type.
-- See equip_set function for more info.
equip_typeOutfits_weapons = {}


-- Tables of available utilities by base type.
-- See equip_set function for more info.
equip_typeOutfits_utilities = {}

-- Tables of available structurals by base type.
-- See equip_set function for more info.
equip_typeOutfits_structurals = {}


-- Table of available core systems by ship.
equip_shipOutfits_coreSystems = {}


-- Table of available engines by ship.
equip_shipOutfits_engines = {}


-- Table of available hulls by ship.
equip_shipOutfits_hulls = {}


-- Tables of available weapons by ship.
-- See equip_set function for more info.
equip_shipOutfits_weapons = {}


-- Tables of available utilities by ship.
-- See equip_set function for more info.
equip_shipOutfits_utilities = {}

-- Tables of available structurals by ship.
-- See equip_set function for more info.
equip_shipOutfits_structurals = {}


--[[
-- @brief Wrapper for pilot.addOutfit that prints a warning if no outfits added.
--]]
function equip_warn( p, outfit, q, bypass )
   if q == nil then q = 1 end
   if bypass == nil then bypass = false end
   local r = pilot.addOutfit( p, outfit, q, bypass )
   if r <= 0 then
      warn("Could not equip " .. system .. " on pilot " .. p:name() .. "!")
   end
   return r
end


--[[
-- @brief Choose an outfit from a table of outfits.
--
--    @param p Pilot to equip to.
--    @param set table laying out the set of outfits to equip (see below).
--
-- ``set`` is split up into sub-tables that are iterated through. These
-- tables include a "num" field which indicates how many of the chosen outfit
-- to equip before moving on to the next set; if nil, the chosen outfit will be
-- equipped as many times as possible. For example, if you list 3 tables with
-- "num" set to 2, 1, and nil respectively, two of an outfit from the first
-- table will be equipped, followed by one of an outfit from the second table,
-- and then finally all remaining slots will be filled with an outfit from the
-- third table.
--
-- If, rather than equipping multiples of the same outfit you would like to
-- select a random outfit `num` times, you can do so by setting "varied" to
-- true.
--
-- Note that there should only be one type of outfit (weapons, utilities, or
-- structurals) in ``set``; including multiple types will prevent proper
-- detection of how many are needed.
--]]
function equip_set( p, set )
   if set == nil then return end

   local num = set.num
   local varied = set.varied
   local choices, c, i, equipped

   for k, v in ipairs( set ) do
      choices = {}
      for i, choice in ipairs( v ) do
         choices[i] = choice
      end

      c = rnd.rnd( 1, #choices )
      i = 1
      while #choices > 0 and (num == nil or i <= num) do
         i = i + 1
         if varied then c = rnd.rnd( 1, #choices ) end

         equipped = p:addOutfit( choices[c] )
         if equipped <= 0 then
            if varied or num == nil then
               table.remove( choices, c )
               c = rnd.rnd( 1, #choices )
            else
               break
            end
         end
      end
   end
end


--[[
-- @brief Does generic pilot equipping
--
--    @param p Pilot to equip
--]]
function equip_generic( p )
   -- Start with an empty ship
   p:rmOutfit( "all" )
   p:rmOutfit( "cores" )

   local shipname = p:ship():name()
   local basetype = p:ship():baseType()
   local class = p:ship():class()
   local success
   local o

   -- Core systems
   success = false
   o = equip_shipOutfits_coreSystems[shipname]
   if o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   o = equip_typeOutfits_coreSystems[basetype]
   if not success and o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   o = equip_classOutfits_coreSystems[class]
   if not success and o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   if not success then
      equip_warn( p, "Unicorp PT-100 Core System" )
   end

   -- Engines
   success = false
   o = equip_shipOutfits_engines[shipname]
   if o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   o = equip_typeOutfits_engines[basetype]
   if not success and o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   o = equip_classOutfits_engines[class]
   if not success and o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   if not success then
      equip_warn( p, "Unicorp Hawk 150 Engine" )
   end

   -- Hulls
   success = false
   o = equip_shipOutfits_hulls[shipname]
   if o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   o = equip_typeOutfits_hulls[basetype]
   if not success and o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   o = equip_classOutfits_hulls[class]
   if not success and o ~= nil then
      success = equip_warn( p, o[rnd.rnd(1, #o)] )
   end
   if not success then
      equip_warn( p, "Unicorp Hawk 150 Engine" )
   end

   -- Weapons
   equip_set( p, equip_shipOutfits_weapons[shipname] )
   equip_set( p, equip_typeOutfits_weapons[basetype] )
   equip_set( p, equip_classOutfits_weapons[class] )

   -- Utilities
   equip_set( p, equip_shipOutfits_utilities[shipname] )
   equip_set( p, equip_typeOutfits_utilities[basetype] )
   equip_set( p, equip_classOutfits_utilities[class] )

   -- Structurals
   equip_set( p, equip_shipOutfits_structurals[shipname] )
   equip_set( p, equip_typeOutfits_structurals[basetype] )
   equip_set( p, equip_classOutfits_structurals[class] )
end
