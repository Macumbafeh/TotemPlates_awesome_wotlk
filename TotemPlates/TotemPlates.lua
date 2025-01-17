local AddOn = "TotemPlates"

if not TotemPlatesDB then
    TotemPlatesDB = {
        EnablePartyIcons = false,
		ShowHealthBar = false,
		EnableBorders = true,
    }
end
local mPlate = {}

local TotemNpcIDs = {
    -- [npcID] = { 
    --   spellID = 8177,  -- e.g., Grounding Totem 
    --   texture = "Interface\\AddOns\\TotemPlates\\Textures\\Grounding Totem.blp", 
    -- }
-- Totems
-- Wrath of Air Totem
	[15447] = { -- 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Wrath of Air Totem.blp", 
    },
-- Strength of Earth Totem
	[5874] = { -- rank 1
        spellID = 8075, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
	[5921] = { -- rank 2
        spellID = 8160, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
	[5922] = { -- rank 3
        spellID = 8161, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
	[7403] = { -- rank 4
        spellID = 10442, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
	[15464] = { -- rank 5
        spellID = 25361, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
	[15479] = { -- rank 6
        spellID = 25528, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
	[30647] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
	[31129] = { -- rank 8
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Strength of Earth Totem.blp", 
    },
-- Grounding Totem
    [5925] = {
        spellID = 8177, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Grounding Totem.blp", 
    },
-- Grace of Air Totem
    [7486] = { -- rank 1
        spellID = 8835, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Grace of Air Totem.blp", 
    },
	[7487] = { -- rank 2
        spellID = 10627, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Grace of Air Totem.blp", 
    },
	[15463] = { -- rank 3
        spellID = 25359, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Grace of Air Totem.blp", 
    },
-- Windwall Totem
    [9687] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windwall Totem.blp", 
    },
	[9688] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windwall Totem.blp", 
    },
	[9689] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windwall Totem.blp", 
    },
	[15492] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windwall Totem.blp", 
    },
-- Stoneskin Totem
	[5873] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[5919] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[5920] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[7366] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[7367] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[7368] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[15470] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[15474] = { -- rank 8
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[31175] = { -- rank 9
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
	[31176] = { -- rank 10
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneskin Totem.blp", 
    },
-- Nature Resistance Totem
	[7467] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Nature Resistance Totem.blp", 
    },
	[7468] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Nature Resistance Totem.blp", 
    },
	[7469] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Nature Resistance Totem.blp", 
    },
	[15490] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Nature Resistance Totem.blp", 
    },
	[31173] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Nature Resistance Totem.blp", 
    },
	[31174] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Nature Resistance Totem.blp", 
    },
-- Fire Resistance Totem
	[5927] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Resistance Totem.blp", 
    },
	[7424] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Resistance Totem.blp", 
    },
	[7425] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Resistance Totem.blp", 
    },
	[15487] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Resistance Totem.blp", 
    },
	[31169] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Resistance Totem.blp", 
    },
	[31170] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Resistance Totem.blp", 
    },
-- Frost Resistance Totem
	[5926] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Frost Resistance Totem.blp", 
    },
	[7412] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Frost Resistance Totem.blp", 
    },
	[7413] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Frost Resistance Totem.blp", 
    },
	[15486] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Frost Resistance Totem.blp", 
    },
	[31171] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Frost Resistance Totem.blp", 
    },
	[31172] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Frost Resistance Totem.blp", 
    },
-- Earth Elemental Totem
	[15430] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Earth Elemental Totem.blp", 
    },
-- Windfury Totem
	[6112] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windfury Totem.blp", 
    },
	[7483] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windfury Totem.blp", 
    },
	[7484] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windfury Totem.blp", 
    },
	[15496] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windfury Totem.blp", 
    },
	[15497] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Windfury Totem.blp", 
    },
-- Flametongue Totem
	[5950] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
	[6012] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
	[7423] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
	[10557] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
	[15485] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
	[31132] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
	[31158] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
	[31133] = { -- rank 8
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Flametongue Totem.blp", 
    },
-- Sentry Totem
	[3968] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Sentry Totem.blp", 
    },
-- Stoneclaw Totem
	[3579] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[3911] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[3912] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[3913] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[7398] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[7399] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[15478] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[31120] = { -- rank 8
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[31121] = { -- rank 9
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
	[31122] = { -- rank 10
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Stoneclaw Totem.blp", 
    },
-- Earthbind Totem
    [2630] = {
        spellID = 2484, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Earthbind Totem.blp", 
    },
-- Magma Totem
	[5929] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Magma Totem.blp", 
    },
	[7464] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Magma Totem.blp", 
    },
	[7465] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Magma Totem.blp", 
    },
	[7466] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Magma Totem.blp", 
    },
	[15484] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Magma Totem.blp", 
    },
	[31166] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Magma Totem.blp", 
    },
	[31167] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Magma Totem.blp", 
    },
-- Fire Elemental Totem
	[15439] = {
        spellID = 2484, 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Elemental Totem.blp", 
    },
-- Searing Totem
	[2523] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[3902] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[3903] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[3904] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[7400] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[7402] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[15480] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[31162] = { -- rank 8
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[31164] = { -- rank 9
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
	[31165] = { -- rank 10
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Searing Totem.blp", 
    },
-- Fire Nova Totem
	[5879] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Nova Totem.blp", 
    },
	[6110] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Nova Totem.blp", 
    },
	[6111] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Nova Totem.blp", 
    },
	[7844] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Nova Totem.blp", 
    },
	[7845] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Nova Totem.blp", 
    },
	[15482] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Nova Totem.blp", 
    },
	[15483] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Fire Nova Totem.blp", 
    },
-- Disease Cleansing Totem or Cleansing Totem
    [5924] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Disease Cleansing Totem.blp",
	},
-- Poison Cleansing Totem
    [5923] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Poison Cleansing Totem.blp",
	},
-- Tremor Totem
    [5913] = { 
        spellID = 8143,
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Tremor Totem.blp",
	},
-- Tranquil Air Totem
    [15803] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Tranquil Air Totem.blp",
	},
-- Mana Tide Totem
    [10467] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Tide Totem.blp",
	},
-- Mana Spring Totem
	[3573] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
	[7414] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
	[7415] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
	[7416] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
	[15489] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
	[31186] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
	[31189] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
	[31190] = { -- rank 8
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Mana Spring Totem.blp", 
    },
-- Healing Stream Totem
	[3527] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[3906] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[3907] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[3908] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[3909] = { -- rank 5
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[15488] = { -- rank 6
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[31181] = { -- rank 7
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[31182] = { -- rank 8
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
	[31185] = { -- rank 9
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Healing Stream Totem.blp", 
    },
-- Totem of Wrath
    [17539] = { -- rank 1
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Totem of Wrath.blp",
	},
	[30652] = { -- rank 2
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Totem of Wrath.blp",
	},
	[30653] = { -- rank 3
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Totem of Wrath.blp",
	},
	[30654] = { -- rank 4
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Totem of Wrath.blp",
	},
	
-- Other
	-- Viper
    [19921] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Viper.blp",
	},
	-- Venomous Snake
    [19833] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Venomous Snake.blp",
	},
	-- Spirit Wolf
    [29264] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Spirit Wolf.blp",
	},
	-- Treant
    [1964] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Treant.blp",
	},
	-- Shadowfiend
    [19668] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Shadowfiend.blp",
	},
	-- Water Elemental
    [510] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Water Elemental.blp",
	},
	-- Ebon Gargoyle
    [27829] = { 
        texture = "Interface\\AddOns\\TotemPlates\\Textures\\Ebon Gargoyle.blp",
	},
}

-- If you still want to track snakes by name or by NPC ID, you can:
local SnakeNpcIDs = {
    -- [npcID] = true
    -- fill with snake IDs if you want
}

-- Optionally keep your ClassIcons table
local ClassIcons = {
    ["WARRIOR"]     = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\WARRIOR.tga",
    ["PALADIN"]     = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\PALADIN.tga",
    ["HUNTER"]      = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\HUNTER.tga",
    ["ROGUE"]       = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\ROGUE.tga",
    ["PRIEST"]      = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\PRIEST.tga",
    ["DEATHKNIGHT"] = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\DEATHKNIGHT.tga",
    ["SHAMAN"]      = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\SHAMAN.tga",
    ["MAGE"]        = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\MAGE.tga",
    ["WARLOCK"]     = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\WARLOCK.tga",
    ["DRUID"]       = "Interface\\AddOns\\TotemPlates\\Textures\\Class\\DRUID.tga",
}

-- Offsets and scaling for your custom icons
local xOfs = 0
local yOfs = 20
local iconScale = 0.6

----------------------------------------------------------------
-- Optional Utility: For party icons, matching the player name with a class
----------------------------------------------------------------
local function GetClassIcon(name)
    if not UnitInRaid("player") and not UnitInParty("player") then
        return nil
    end
    local playerGroup = nil
    if UnitInRaid("player") then
        for i = 1, GetNumGroupMembers() do
            local unit = "raid" .. i
            if UnitExists(unit) and UnitIsUnit(unit, "player") then
                playerGroup = select(3, GetRaidRosterInfo(i))
                break
            end
        end
    end
    local numMembers = GetNumGroupMembers()
    for i = 1, numMembers do
        local unit = (UnitInRaid("player") and "raid" or "party") .. i
        if UnitExists(unit) and UnitName(unit) == name and
           (not UnitInRaid("player") or select(3, GetRaidRosterInfo(i)) == playerGroup) and
           not UnitIsDead(unit) and not UnitIsGhost(unit) and
           UnitIsConnected(unit) and UnitIsFriend("player", unit) then
            local _, class = UnitClass(unit)
            return ClassIcons[class]
        end
    end
    return nil
end

----------------------------------------------------------------
-- NPC ID Extraction
----------------------------------------------------------------
local function GetNPCIDFromGUID(guid)
    if not guid then
        print("GetNPCIDFromGUID: No GUID provided")
        return nil
    end
    
    local idHex = guid:sub(-10, -7)
    local extractedID = tonumber(idHex, 16)
    -- print("Extracted NPC ID:", extractedID, "from GUID:", guid)
    return extractedID
end

----------------------------------------------------------------
-- Helper Function: Update Totem Border Color
----------------------------------------------------------------
local function UpdateTotemBorderTexture(namePlate)
    if not namePlate.totemIconBorder then return end
    
    if namePlate.isTargeted then
        -- Targeted: White border
        namePlate.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderWhite.blp")
    elseif namePlate.isMouseOver then
        -- Mouseover: Grey border
        namePlate.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderGreyBlue.blp")
    else
        -- Default: Based on friendliness
        if UnitIsFriend("player", namePlate.unitId) then
            namePlate.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderGreen.blp")
        else
            namePlate.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderRed.blp")
        end
    end
	
	
    
    -- Simple check: If the texture wasn't set correctly, use default
    if not namePlate.totemIconBorder:GetTexture() then
        namePlate.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\default.blp")
    end
end

----------------------------------------------------------------
-- Driver Frame + Nameplate Events
----------------------------------------------------------------
local TotemPlatesFrame = CreateFrame("Frame", "TotemPlatesDriverFrame", UIParent)
TotemPlatesFrame:RegisterEvent("NAME_PLATE_CREATED")
TotemPlatesFrame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
TotemPlatesFrame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
TotemPlatesFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
TotemPlatesFrame:RegisterEvent("PLAYER_TARGET_CHANGED")

-- Use a local table to keep track of nameplates if you want
local namePlateRegistry = {}




local function HideDefaultNameplateElements(frame)
    if not frame or not frame:GetRegions() then return end
    -- Default textures
    local threat, hpborder, cbshield, cbborder, cbicon, overlay,
          oldname, level, bossicon, raidicon, elite = frame:GetRegions()
    if threat then threat:Hide() end
    if hpborder then hpborder:Hide() end
    if overlay then overlay:SetAlpha(0) end
    if oldname then oldname:Hide() end
    if level then level:Hide() end

    -- Hide the health bar (and possibly cast bar) from GetChildren()
    local HealthBar = frame:GetChildren()
	if TotemPlatesDB.ShowHealthBar then
		if HealthBar then HealthBar:Show() end
	else
		if HealthBar then HealthBar:Hide() end
	end
end

local function ShowDefaultNameplateElements(frame)
    if not frame or not frame:GetRegions() then return end
    local threat, hpborder, cbshield, cbborder, cbicon, overlay,
          oldname, level, bossicon, raidicon, elite = frame:GetRegions()
    if threat then threat:Show() end
    if hpborder then hpborder:Show() end
    if overlay then overlay:SetAlpha(1) end
    if oldname then oldname:Show() end
    if level then level:Show() end

    local HealthBar = frame:GetChildren()
    if HealthBar then HealthBar:Show() end
end

-- Called once when the nameplate frame is created
local function SkinNamePlateFrame(frame)
    namePlateRegistry[frame] = true
end

-- Called when a nameplate is shown for a specific unit
local function OnNamePlateUnitAdded(unitId)
    local namePlate = C_NamePlate.GetNamePlateForUnit(unitId)
    if not namePlate then return end

    local guid = UnitGUID(unitId)
    local name = UnitName(unitId) or ""
    local npcID = GetNPCIDFromGUID(guid)
	
	namePlate.unitId = unitId -- Store unitId for later reference
	
    -- 1) If it's one of your "snake" NPCs (optional)
    if npcID and SnakeNpcIDs[npcID] then
        -- You can show or partially hide. 
        -- Up to you how to handle snakes vs. totems.
        return
    end

    -- 2) Check if it’s a recognized Totem by NPC ID
    if npcID and TotemNpcIDs[npcID] then
        HideDefaultNameplateElements(namePlate)
		namePlate.isTotem = true -- Identification flag
		
        local totemData = TotemNpcIDs[npcID]

        -- Create or show a custom totem icon
        if not namePlate.totemIcon then
            namePlate.totemIcon = namePlate:CreateTexture(nil, "BACKGROUND")
            namePlate.totemIcon:SetPoint("CENTER", namePlate, "CENTER", xOfs, yOfs)
        else
            namePlate.totemIcon:Show()
        end

        -- Use the texture from the table; fallback if missing
        namePlate.totemIcon:SetTexture(totemData.texture or "Interface\\Icons\\INV_Misc_QuestionMark")
        namePlate.totemIcon:SetSize(64 * iconScale, 64 * iconScale)
		
		
		-- Add Border Around Totem Icon
		if TotemPlatesDB.EnableBorders then
			if not namePlate.totemIconBorder then
				namePlate.totemIconBorder = namePlate:CreateTexture(nil, "OVERLAY")
    
				-- Determine which border texture to use based on friendliness
				if UnitIsFriend("player", unitId) then
					namePlate.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderGreen.blp")
				else
					namePlate.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderRed.blp")
				end
    
				namePlate.totemIconBorder:SetSize(80 * iconScale, 80* iconScale) -- Adjust size as needed
				namePlate.totemIconBorder:SetPoint("CENTER", namePlate.totemIcon, "CENTER", 0, 0)
				namePlate.totemIconBorder:SetDrawLayer("OVERLAY", 3)
				namePlate.totemIconBorder:SetTexCoord(0, 1, 0, 1)
				namePlate.totemIconBorder:SetBlendMode("ADD")
				
				-- Initialize color based on friendliness
                UpdateTotemBorderTexture(namePlate)
			else
				namePlate.totemIconBorder:Show()
				
				-- Update color based on current state
                UpdateTotemBorderTexture(namePlate)
			end
		else
            -- If borders are disabled, hide the border texture if it exists
            if namePlate.totemIconBorder then
                namePlate.totemIconBorder:Hide()
            end
		end

		if not mPlate[namePlate] then
			mPlate[namePlate] = true
        
			namePlate.isMouseover = false
			namePlate:SetScript("OnUpdate", function(self)
				local isMouseOverNow = self:IsMouseOver()
            
				if isMouseOverNow and not self.isMouseover then
					self.isMouseover = true
					self.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderGreyBlue.blp")
				elseif not isMouseOverNow and self.isMouseover then
					self.isMouseover = false
					if UnitIsFriend("player", unitId) then
						self.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderGreen.blp")
					else
						self.totemIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\borderRed.blp")
					end
					if UnitIsUnit(unitId, "target") then
						self.isTargeted = true
						UpdateTotemBorderTexture(self)
					else
						self.isTargeted = false
					end
				end
			end)
		end
        return
    end

    -- 3) Check for Party Icons (same logic as before)
    if EnablePartyIcons then
        local classIcon = GetClassIcon(name)
        if classIcon then
            HideDefaultNameplateElements(namePlate)
			namePlate.isParty = true -- Identification flag
			
            if not namePlate.partyIcon then
                namePlate.partyIcon = namePlate:CreateTexture(nil, "BACKGROUND")
                namePlate.partyIcon:SetPoint("CENTER", namePlate, "CENTER", xOfs, yOfs)
            else
                namePlate.partyIcon:Show()
            end
            namePlate.partyIcon:SetTexture(classIcon)
            namePlate.partyIcon:SetSize(64 * iconScale, 64 * iconScale)
			
			-- Add Border Around Party Class Icon
        if TotemPlatesDB.EnableBorders then
            if not namePlate.partyIconBorder then
                namePlate.partyIconBorder = namePlate:CreateTexture(nil, "OVERLAY")
                local _, class = UnitClass(unitId)
                if class then
                    local borderTexturePath = "Interface\\AddOns\\TotemPlates\\Textures\\border\\" .. string.lower(class) .. ".blp"
                    namePlate.partyIconBorder:SetTexture(borderTexturePath)
                else
                    -- Fallback to default border if class is not determined
                    namePlate.partyIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\default.blp")
                end
                namePlate.partyIconBorder:SetSize(80 * iconScale, 80 * iconScale) -- Slightly larger than icon
                namePlate.partyIconBorder:SetPoint("CENTER", namePlate.partyIcon, "CENTER", 0, 0)
                namePlate.partyIconBorder:SetDrawLayer("OVERLAY", 3)
                namePlate.partyIconBorder:SetTexCoord(0, 1, 0, 1)
                namePlate.partyIconBorder:SetBlendMode("ADD")
            else
                namePlate.partyIconBorder:Show()
                -- Update border texture based on current class
                local _, class = UnitClass(unitId)
                if class then
                    local borderTexturePath = "Interface\\AddOns\\TotemPlates\\Textures\\border\\" .. string.lower(class) .. ".blp"
                    namePlate.partyIconBorder:SetTexture(borderTexturePath)
                else
                    -- Fallback to default border if class is not determined
                    namePlate.partyIconBorder:SetTexture("Interface\\AddOns\\TotemPlates\\Textures\\border\\default.blp")
                end
            end
        else
            -- If borders are disabled, hide the border texture if it exists
            if namePlate.partyIconBorder then
                namePlate.partyIconBorder:Hide()
            end
        end
            return
        end
    end

    -- 4) If none matched, revert to default
    if namePlate.totemIcon then
        namePlate.totemIcon:Hide()
    end
    if namePlate.partyIcon then
        namePlate.partyIcon:Hide()
    end
	if namePlate.totemIconBorder then
        namePlate.totemIconBorder:Hide()
    end
	if namePlate.partyIconBorder then
        namePlate.partyIconBorder:Hide()
    end
    ShowDefaultNameplateElements(namePlate)
end

-- Called when a nameplate is hidden
local function OnNamePlateUnitRemoved(unitId)
    local namePlate = C_NamePlate.GetNamePlateForUnit(unitId)
    if not namePlate then return end

    -- Hide any custom icons
    if namePlate.totemIcon then
        namePlate.totemIcon:Hide()
    end
    if namePlate.partyIcon then
        namePlate.partyIcon:Hide()
    end
	if namePlate.totemIconBorder then
        namePlate.totemIconBorder:Hide()
    end
	if namePlate.partyIconBorder then
        namePlate.partyIconBorder:Hide()
    end
	
	-- Reset state flags
    namePlate.isTotem = nil
    namePlate.isParty = nil
    namePlate.isTargeted = nil
    namePlate.isMouseOver = nil
	
    ShowDefaultNameplateElements(namePlate)
end

----------------------------------------------------------------
-- Event Handling
----------------------------------------------------------------
TotemPlatesFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        if not _G[AddOn .. "_PlayerEnteredWorld"] then
            ChatFrame1:AddMessage("|cff00ccff" .. AddOn .. "|cffffffff Loaded")
            _G[AddOn .. "_PlayerEnteredWorld"] = true
        end
        -- Load the saved setting for party icons
        EnablePartyIcons = TotemPlatesDB.EnablePartyIcons
    elseif event == "NAME_PLATE_CREATED" then
        local frame = ...
        SkinNamePlateFrame(frame)

    elseif event == "NAME_PLATE_UNIT_ADDED" then
        local unit = ...
        OnNamePlateUnitAdded(unit)

    elseif event == "NAME_PLATE_UNIT_REMOVED" then
        local unit = ...
        OnNamePlateUnitRemoved(unit)
	elseif event == "PLAYER_TARGET_CHANGED" then
        -- Update targeted status for all totem nameplates
        local currentTarget = "target"
        for namePlate, _ in pairs(namePlateRegistry) do
            if namePlate.isTotem and UnitIsUnit(namePlate.unitId, currentTarget) then
                namePlate.isTargeted = true
            else
                namePlate.isTargeted = false
            end
            -- Update the border color based on the new state
            UpdateTotemBorderTexture(namePlate)
        end
    end
end)

----------------------------------------------------------------
-- Slash Commands
----------------------------------------------------------------
StaticPopupDialogs["TOTEMPLATES_RELOAD_UI"] = {
    text = "TotemPlates: Do you want to reload the UI to apply changes? Recommended if you disabled Party Icons.",
    button1 = "Yes",
    button2 = "No",
    OnAccept = function()
        ReloadUI()
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,
}

SLASH_TOTEMPLATES1 = "/totemplates"
SLASH_TOTEMPLATES2 = "/tm"
SlashCmdList["TOTEMPLATES"] = function(msg)
	local status1 = EnablePartyIcons and "|cff00ff00enabled|r" or "|cffff0000disabled|r"
	local status2 = TotemPlatesDB.ShowHealthBar and "|cff00ff00enabled|r" or "|cffff0000disabled|r"
	local status3 = TotemPlatesDB.EnableBorders and "|cff00ff00enabled|r" or "|cffff0000disabled|r"
    if msg == "partyicons" or msg == "partyicon" then
        TotemPlatesDB.EnablePartyIcons = not TotemPlatesDB.EnablePartyIcons
        EnablePartyIcons = TotemPlatesDB.EnablePartyIcons
        
        -- print("|cff00ccffTotemPlates|r: Party icons are now " .. status1 .. ".")
        StaticPopup_Show("TOTEMPLATES_RELOAD_UI")
	elseif msg == "healthbar" or msg == "healthbars" then
        TotemPlatesDB.ShowHealthBar = not TotemPlatesDB.ShowHealthBar
       -- print("|cff00ccffTotemPlates|r: Health bar is now " .. status2 .. ".")
        StaticPopup_Show("TOTEMPLATES_RELOAD_UI")
	elseif msg == "border" or msg == "borders" then
        TotemPlatesDB.EnableBorders = not TotemPlatesDB.EnableBorders
       -- print("|cff00ccffTotemPlates|r: Borders are now " .. status3 .. ".")
        StaticPopup_Show("TOTEMPLATES_RELOAD_UI")
    elseif msg == "status" then
		print("Totemplates statut:")
		print("|cff00ccffTotemPlates|r: Party icons are now " .. status1 .. ".")
		print("|cff00ccffTotemPlates|r: Health bars are now " .. status2 .. ".")
		print("|cff00ccffTotemPlates|r: Borders are now " .. status3 .. ".")
    else
		print("Totemplates usage:")
        print("|cff00ccff/totemplates partyicon|r: - Toggle party member class icons.")
		print("|cff00ccff/totemplates healthbar|r - Toggle health bar visibility.")	
		print("|cff00ccff/totemplates border|r - Toggle borders visibility.")
        print("|cff00ccff/totemplates status|r - Show the current status of options.")
    end
end
