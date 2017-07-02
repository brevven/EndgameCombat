data:extend(
{
--[[
   {
    type = "item-group",
    name = "better-ammo",
    order = "aaa-a",
    inventory_order = "c-a",
    icon = "__EndgameCombat__/graphics/icons/ammo.png",
  },]]
    {
    type = "ammo-category",
    name = "plasma-turret"
  },
    {
    type = "ammo-category",
    name = "concussion-turret"
  },
}
)

data:extend(
{
  {
    type = "damage-type",
    name = "cutting" --used by spiked walls
  }, 
  {
    type = "damage-type",
    name = "radiation" --used by neutron bomb, unstoppable
  }, 
}
)