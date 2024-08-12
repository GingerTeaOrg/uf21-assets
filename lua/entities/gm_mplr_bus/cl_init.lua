function ENT:Initialize()
    -- Play the looping ambient sound
    self:EmitAmbientSound("lilly/ambience/vehicles/citaro.wav", 75, 100, SNDLVL_75dB)
end

function ENT:EmitAmbientSound(soundName, volume, pitch, soundLevel)
    -- Create a sound patch for looping
    if not self.SoundPatch then self.SoundPatch = CreateSound(self, soundName) end
    -- Start the sound patch with volume and pitch
    self.SoundPatch:SetSoundLevel(soundLevel or SNDLVL_NORM)
    self.SoundPatch:Play()
    self.SoundPatch:ChangeVolume(volume or 1, 0)
    self.SoundPatch:ChangePitch(pitch or 100, 0)
end

function ENT:OnRemove()
    -- Stop the looping sound when the entity is removed
    if self.SoundPatch then self.SoundPatch:Stop() end
end