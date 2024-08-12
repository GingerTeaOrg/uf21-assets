AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
function ENT:Initialize()
    self:SetModel("models/lilly/uf/scenery/citaro_2d/citaro_2d.mdl")
end