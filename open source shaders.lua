local lighting = game:GetService("Lighting")

for _, v in pairs(lighting:GetChildren()) do
    if v:IsA("PostEffect") then
        v.Enabled = false
    end
end

-- Enable Future lighting for better visuals
lighting.Technology = Enum.Technology.Future
lighting.Ambient = Color3.fromRGB(150, 150, 150)
lighting.OutdoorAmbient = Color3.fromRGB(120, 120, 120)
lighting.Brightness = 1
lighting.GlobalShadows = true
lighting.EnvironmentDiffuseScale = 1.5
lighting.EnvironmentSpecularScale = 1.5

-- Add Bloom (Glow effect)
local bloom = Instance.new("BloomEffect")
bloom.Intensity = 0.5
bloom.Size = 24
bloom.Threshold = 1
bloom.Parent = lighting

-- Add Blur (Slight smoothing effect)
local blur = Instance.new("BlurEffect")
blur.Size = 2
blur.Parent = lighting

-- Add Color Correction (More vibrant colors)
local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Brightness = 0.1
colorCorrection.Contrast = 0.2
colorCorrection.Saturation = 0.15
colorCorrection.Parent = lighting

-- Add Sun Rays (More realistic sunlight)
local sunRays = Instance.new("SunRaysEffect")
sunRays.Intensity = 0.15
sunRays.Spread = 1
sunRays.Parent = lighting

-- Add Depth of Field (Simulates distance blur)
local depthOfField = Instance.new("DepthOfFieldEffect")
depthOfField.FarIntensity = 0.08
depthOfField.FocusDistance = 50
depthOfField.NearIntensity = 0.1
depthOfField.Parent = lighting

print("Realism shader applied successfully!")

-- Nat
