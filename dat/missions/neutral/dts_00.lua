--[[
<?xml version='1.0' encoding='utf8'?>
<mission name="Defend the System 1">
  <flags>
   <unique />
  </flags>
  <avail>
   <priority>4</priority>
   <chance>3</chance>
   <location>None</location>
   <faction>Dvaered</faction>
   <faction>Frontier</faction>
   <faction>Goddard</faction>
   <faction>Independent</faction>
   <faction>Soromid</faction>
  </avail>
  <notes>
   <tier>3</tier>
  </notes>
 </mission>
 --]]
--[[

   MISSION: Defend the System 1
   DESCRIPTION: A mission to defend the system against swarm of pirate ships.
                This will be the first in a planned series of random encounters.
                After the third specifically scripted pirate invasion, a militia will form.
                The player will have the option to join the militia.
                Perhaps the random missions will eventually lead on to a plot line relating to the pirates.

      Notable events:

         * Stage one: From the bar, the player learns of a pirate fleet attacking the system and joins a defense force.
         * Stage two: The volunteer force attacks the pirates.
         * Stage three: When a sufficient number have been killed, the pirates retreat.
         * Stage four: The portmaster welcomes the fleet back and thanks them with money.
         * Stage five: In the bar afterward, another pilot wonders why the pirates behaved unusually.

TO DO
Add some consequences if the player aborts the mission
]]--

local fleet = require "fleet"
local fmt = require "format"
local pir = require "common.pirate"

text = {}
text[1] = _([[The bar is buzzing when you walk in. All the pilots are talking at once. Every screen in sight carries the same news feed: live footage of a space battle in orbit around %s.
    "A big fleet of pirates have just invaded the system," a woman wearing Nexus insignia explains. "They swarm any ship that tries to take off. Shipping is at a standstill. It's a disaster."
    There's a shout and you turn to see the portmaster standing at the door. "Listen up," he bellows. "The thugs out there have caught us without a defense fleet in system and somehow they've jammed our link with the rest of the Empire. So, I'm here looking for volunteers. Everyone who steps forward will get forty thousand credits when they get back - and of course the thanks of a grateful planet and the pride of serving the Empire.
    "Are you brave enough?"]])
text[11] = _([[You step forward and eight other pilots join you. Together, all of you march off to the your ships and take off to face the pirate horde.]])

text[2] = _([[The portmaster greets the crowd of volunteers on the spaceport causeway.
    "Well done. You got those pirates on the run!" he exclaims. "Maybe they'll think twice now before bothering our peace. I hope you all feel proud. You've spared this planet millions in shipping, and saved countless lives. And you've earned a reward. Before you take off today, the port authority will give you each forty thousand credits. Congratulations!"
    Your comrades raise a cheer, and everyone shakes the portmaster's hand. One of them kisses the master on both cheeks in the Goddard style, then the whole crowd moves toward the bar.]])

text[3] = _([[Many periods later, the celebration has wound down. You find yourself drinking with a small group of 'veterans of the Battle of %s,' as some of them are calling it. A older pilot sits across the table and stares pensively into his drink.
    "It's strange, though," he mutters. "I've never seen pirates swarm like that before."]])

text[4] = _([[You jump out of %s with the sweat still running down your face. The fight to clear the system was brief but intense. After a moment, another ship enters on the same vector. The blast marks on the sides of his craft show that it too comes from combat with the pirates. Your comm beeps.
    "Good flying, mate. We got those pirates on the run!" the pilot exclaims. "You didn't want to go back for the cash either, eh? I don't blame you. I hate pirates, but I don't want the Empire's money!" He smiles grimly. "It's strange, though. I've never seen pirates swarm that way before."
]])
text[5] = _([[Eight pilots step forward. The rest of you stand and watch as they file out the door. The portmaster spares a withering glance for those left behind.
    "Don't get your petticoats caught in the crossfire on your way out of atmo," he sneers. Then he turns to follow his volunteers.]])

-- Create the mission on the current planet, and present the first Bar text.
function create ()
   this_planet, this_system = planet.cur()
   if ( pir.systemPresence(this_system) > 0
         or this_system:presences()["Collective"]
         or this_system:presences()["FLF"] ) then
      misn.finish(false)
   end

   missys = {this_system}
   if not misn.claim(missys) then
      misn.finish(false)
   end

   planet_name = this_planet:name()
   system_name = this_system:name()
   if tk.yesno( _("In the bar"), string.format( text[1], planet_name ) ) then
      misn.accept()
      var.push( "dts_firstSystem", "planet_name")
      tk.msg( _("Volunteers"), text[11])
      reward = 40e3
      misn.setReward( string.format( _("%s and the pleasure of serving the Empire."), fmt.credits(reward)) )
      misn.setDesc( _("Defend the system against a pirate fleet."))
      misn.setTitle( _("Defend the System"))
      misn.markerAdd( this_system, "low" )
      defender = true

      -- hook an abstract deciding function to player entering a system
      hook.enter( "enter_system")

      -- hook warm reception to player landing
      hook.land( "celebrate_victory")
   else
      -- If player didn't accept the mission, the battle's still on, but player has no stake.
      misn.accept()
      var.push( "dts_firstSystem", "planet_name")
      tk.msg( _("Left behind"), text[5])
      misn.setReward( _("No reward for you."))
      misn.setDesc( _("Watch others defend the system."))
      misn.setTitle( _("Watch the action."))
      defender = false

      -- hook an abstract deciding function to player entering a system when not part of defense
      hook.enter( "enter_system")
   end
end

-- Decides what to do when player either takes off starting planet or jumps into another system
function enter_system()

      if this_system == system.cur() and defender == true then
         defend_system()
      elseif victory == true and defender == true then
         hook.timer(1.0, "ship_enters")
      elseif defender == true then
         player.msg( _("You fled from the battle. The Empire won't forget.") )
         faction.modPlayerSingle( "Empire", -3)
         misn.finish( true)
      elseif this_system == system.cur() and been_here_before ~= true then
         been_here_before = true
         defend_system()
      else
         misn.finish( true)
      end
end

-- There's a battle to defend the system
function defend_system()
   local fraider = faction.dynAdd( "Pirate", "Raider", _("Raider") )

   -- Makes the system empty except for the two fleets. No help coming.
   pilot.clear ()
   pilot.toggleSpawn( false )

   -- Set up distances
   angle = rnd.rnd() * 2 * math.pi
   if defender == true then
      raider_position  = vec2.new( 400*math.cos(angle), 400*math.sin(angle) )
      defense_position = vec2.new( 0, 0 )
   else
      raider_position  = vec2.new( 800*math.cos(angle), 800*math.sin(angle) )
      defense_position = vec2.new( 400*math.cos(angle), 400*math.sin(angle) )
   end

   -- Create a fleet of raiding pirates
   raider_fleet = fleet.add( 18, "Hyena", fraider, raider_position, _("Raider Hyena"), {ai="def"} )
   for k,v in ipairs( raider_fleet) do
   v:setHostile()
   end

   -- And a fleet of defending independents
   local dfleet = { "Mule", "Lancelot", "Ancestor", "Gawain" }
   defense_fleet = fleet.add( 2, dfleet, "Trader", defense_position, _("Defender"), {ai="def"} )
   for k,v in ipairs( defense_fleet) do
      v:setFriendly()
   end

   --[[ How the Battle ends:
   hook fleet departure to disabling or killing ships]]
   casualties = 0
   for k, v in ipairs( raider_fleet) do
      hook.pilot (v, "death", "add_cas_and_check")
      hook.pilot (v, "disable", "add_cas_and_check")
   end

   if defender == false then
      misn.finish( true)
   end

   if pilot.get(fraider) == {} then
      player.msg( _("Good job, everyone. Let's get back planetside and get our reward.") )
   end
end

-- Record each raider death and make the raiders flee after too many casualties
function add_cas_and_check()

   casualties = casualties + 1
   if casualties > 8 then

   raiders_left = pilot.get( { faction.get(fraider) } )
   for k, v in ipairs( raiders_left ) do
   v:changeAI("flee")
   end
   if victory ~= true then   -- A few seconds after the raiders start to flee declare victory
   victory = true
player.msg( _("That's right, run away you cowards.") )
   hook.timer(8.0, "victorious")
   end
   end
end

   -- Call ships back to base
function victorious()
   player.msg( _("Good job, everyone. Let's get back planetside and get our reward.") )
end

-- The player lands to a warm welcome (if the job is done).
function celebrate_victory()
   if victory == true then
      tk.msg( _("Welcome back"), string.format( text[2], planet_name ) )
      player.pay( reward)
      faction.modPlayerSingle( "Empire", 3)
      tk.msg( _("Over drinks"), string.format( text[3], system_name ) )
      misn.finish( true)
   else
      tk.msg( _("Not done yet."), _("The system isn't safe yet. Get back out there!"))   -- If any pirates still alive, send player back out.
      player.takeoff()
   end
end

-- A fellow warrior says hello in passing if player jumps out of the system without landing
function ship_enters()
   enter_vect = player.pos()
   pilot.add( "Mule", "Trader", enter_vect:add( 10, 10), _("Trader Mule"), {ai="def"} )
   hook.timer(1.0, "congratulations")
end
function congratulations()
   tk.msg( _("Good job!"), string.format( text[4], _( system_name) ))
   misn.finish( true)
end

function abort()
   if victory ~= true then
      faction.modPlayerSingle( "Empire", -10)
      faction.modPlayerSingle( "Trader", -10)
      player.msg( string.format( _("Comm Trader>You're a coward, %s. You better hope I never see you again."), player.name()) )
   else
      player.msg( string.format( _("Comm Trader>You're running away now, %s? The fight's finished, you know..."), player.name()) )
   end
end
