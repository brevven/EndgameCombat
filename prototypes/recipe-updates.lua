local turretArmorSteel = 10

if data.raw.item["titanium-plate"] then
  --table.insert(data.raw["recipe"]["concussion-turret"].ingredients,{"titanium-plate", 25})
  table.insert(data.raw["recipe"]["plasma-turret"].ingredients,{"titanium-plate", 25})
  table.insert(data.raw["recipe"]["cannon-turret"].ingredients,{"titanium-plate", 50})
  
  table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"titanium-plate", 25})
else
  turretArmorSteel = 50
  
  table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"steel-plate", 100})
end

table.insert(data.raw["recipe"]["concussion-turret"].ingredients,{"steel-plate", --[[turretArmorSteel--]]25})
table.insert(data.raw["recipe"]["plasma-turret"].ingredients,{"steel-plate", turretArmorSteel})
table.insert(data.raw["recipe"]["cannon-turret"].ingredients,{"steel-plate", turretArmorSteel*2})

if data.raw.item["speed-module-5"] then
	table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"speed-module-5", 10})
	table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"effectivity-module-5", 10})
	table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"productivity-module-5", 10})
end

if data.raw.item["electronic-processing-board"] then
	table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"electronic-processing-board", 50})
else
	table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"processing-unit", 50})
end

--table.insert(data.raw["recipe"]["nuke-shell"].ingredients,{"uranium-238", 10})
--table.insert(data.raw["recipe"]["nuke-shell"].ingredients,{"uranium-235", 4})
table.insert(data.raw["recipe"]["neutron-shell"].ingredients,{"uranium-235", 1})
table.insert(data.raw["technology"]["nuclear-shells"].prerequisites,"atomic-bomb")
table.insert(data.raw["recipe"]["hiex-cannon-shell-big"].ingredients,{"uranium-238", 4})
table.insert(data.raw["recipe"]["radiation-capsule"].ingredients,{"uranium-235", 1}) 
table.insert(data.raw["recipe"]["sulfur-heavy-bullet-magazine"].ingredients,{"uranium-238", 5})
--table.insert(data.raw["recipe"]["nuke-shell"].ingredients,{"explosives", 20})
table.insert(data.raw["recipe"]["neutron-shell"].ingredients,{"explosives", 100})

local tankArmorSteel = 50

if data.raw.item["titanium-plate"] then
	table.insert(data.raw["recipe"]["better-tank"].ingredients,{"titanium-plate", 25})
else
	tankArmorSteel = 200
end

table.insert(data.raw["recipe"]["better-tank"].ingredients,{"steel-plate", tankArmorSteel})

if data.raw.item["tungsten-plate"] then
	table.insert(data.raw["recipe"]["better-tank"].ingredients,{"tungsten-plate", 25})
else
	table.insert(data.raw["recipe"]["better-tank"].ingredients,{"copper-plate", 50})
end

if data.raw.item["nitinol-alloy"] then
	table.insert(data.raw["recipe"]["better-tank"].ingredients,{"nitinol-alloy", 25})
	table.insert(data.raw["recipe"]["power-armor-3"].ingredients,{"nitinol-alloy", 25})
else
	table.insert(data.raw["recipe"]["better-tank"].ingredients,{"plastic-bar", 50})
end

if data.raw.item["lithium-ion-battery"] then
	table.insert(data.raw["recipe"]["plasma-turret"].ingredients,{"lithium-ion-battery", 20})
else
	table.insert(data.raw["recipe"]["plasma-turret"].ingredients,{"battery", 20})
end
--[[
data:extend( --extra convenience recipes
{
 {
    type = "recipe",
    name = "bullet-conversion-1",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
	  {"firearm-magazine", 1},
      {"copper-plate", 3}
    },
    result = "piercing-rounds-magazine"
  }
 }
table.insert(data.raw["technology"]["military-2"].effects, {type = "unlock-recipe", recipe = "bullet-conversion-1"})
)--]]