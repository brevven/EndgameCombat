--[[
REPAIR_CHANCES = {1/2048, 1/512, 1/128, 1/64, 1/32, 1/16, 1/8, 1/4, 1/2}
REPAIR_FACTORS = {0.03125, 0.0625, 0.125, 0.25, 0.5, 0.5, 0.5, 0.5, 0.5}
REPAIR_LIMITS = {1, 2, 5, 10, 25}
--]]

REPAIR_CHANCES = {}
REPAIR_FACTORS = {}
REPAIR_LIMITS = {}

local function addRepairTier(chance, factor, limit)
	REPAIR_CHANCES[#REPAIR_CHANCES+1] = chance
	REPAIR_FACTORS[#REPAIR_FACTORS+1] = factor
	REPAIR_LIMITS[#REPAIR_LIMITS+1] = limit
end

addRepairTier(1/2048, 0.03125, 1)
addRepairTier(1/512, 0.0625, 2)
addRepairTier(1/128, 0.125, 5)
addRepairTier(1/64, 0.25, 10)
addRepairTier(1/32, 0.5, 25)
addRepairTier(1/16, 0.5, 40)
addRepairTier(1/8, 0.5, 50)
addRepairTier(1/4, 0.5, 100)
addRepairTier(1/2, 0.5, 250)

NAPALM_RADIUS = 36

HEAVY_TRAIN_FACTOR = 25