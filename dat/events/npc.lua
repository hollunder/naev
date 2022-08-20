--[[
<?xml version='1.0' encoding='utf8'?>
<event name="NPC">
 <location>land</location>
 <chance>100</chance>
</event>
--]]

--[[
Event for creating random characters in the spaceport bar.
The random NPCs will tell the player things about the Naev universe in general,
about their faction, or about the game itself.
--]]
local vn = require 'vn'
local lf = require "love.filesystem"
local npc = require "common.npc"

-- luacheck: globals land npc_talk (NPC functions passed by name)

local npcs, npc_list, npc_spawners

function create()
   -- Try to load all the modular npc files
   npc_list = {}
   for k,v in ipairs(lf.enumerate("events/npc")) do
      table.insert( npc_list, require( "events.npc."..string.gsub(v,".lua","") ) )
   end

   hook.land( "land" )
   land()
end

function land ()
   -- Logic to decide what to spawn, if anything.
   local cur = spob.cur()

   -- Do not spawn any NPCs on restricted spobs or that don't want NPC
   local t = cur:tags()
   if t.nonpc then
      return
   end

   local total_w = 0
   npc_spawners = {}
   for k,v in ipairs(npc_list) do
      local s = v()
      if s then
         s.w = s.w or 1 -- default weight
         total_w = total_w + s.w
         table.insert( npc_spawners, s )
      end
   end
   table.sort( npc_spawners, function( a, b )
      return a.w > b.w
   end )

   local npccache = npc.cache()
   local num_npc
   if t.urban then
      num_npc = rnd.rnd(2, 7)
   elseif t.rural then
      num_npc = rnd.rnd(1, 3)
   else
      num_npc = rnd.rnd(1, 5)
   end
   local w = 0
   npcs = {}
   for i=0, num_npc do
      local r = rnd.rnd() * total_w
      local npcdata
      for k,v in ipairs(npc_spawners) do
         w = w+v.w
         if r < w then
            npcdata = v.create()
            local npcrep = false
            for j,n in pairs(npcs) do
               if n.msg == npcdata.msg then
                  npcrep = true
                  break
               end
            end
            if npcrep or npccache[ npcdata.msg ] then
               npcdata = v.create() -- Try to recreate
            end
            break
         end
      end

      if npcdata then
         if type(npcdata.name)=="function" then
            npcdata.name = npcdata.name()
         end
         if type(npcdata.desc)=="function" then
            npcdata.desc= npcdata.desc()
         end
         local id = evt.npcAdd( "npc_talk", npcdata.name, npcdata.portrait, npcdata.desc, 10 )
         npcs[id] = npcdata
      else
         warn(_("NPC spawner failed to spawn NPC!"))
      end
   end
end

function npc_talk( id )
   local npcdata = npcs[id]

   vn.clear()
   vn.scene()
   local n = vn.newCharacter( npcdata.name, { image=npcdata.image } )
   vn.transition()
   if npcdata.func then
      vn.func( function ()
         npcdata.func( npcdata )
      end )
   end
   n( npcdata.msg )
   if type(npcdata.msg)~="function" then
      vn.func( function ()
         local c = npc.cache()
         c[ npcdata.msg ] = true
      end )
   end
   vn.run()
end
