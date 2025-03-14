require 'Items/ProceduralDistributions'

SpiffoSuitsMoreColors = SpiffoSuitsMoreColors or {};

function SpiffoSuitsMoreColors:addDistributions(itemsAndChances, locations)
	for item, chance in pairs(itemsAndChances)
	do
		for i, location in ipairs(locations)
		do
			if ProceduralDistributions.list[location] and ProceduralDistributions.list[location].items
			then
				table.insert(ProceduralDistributions.list[location].items, item);
				table.insert(ProceduralDistributions.list[location].items, chance);
			end
		end
	end
end

local sVars = SandboxVars.HCustoms;
sVars.Loot = sVars.Loot or 1;
sVars.GasMasks = sVars.GasMasks or 3;
sVars.Accessories = sVars.Accessories or 3;
sVars.Spiffo = sVars.Spiffo or 3;
sVars.Plushies = sVars.Plushies or 3;
sVars.CazadorSpawn = sVars.CazadorSpawn or true;
sVars.PlushiesSpawn = sVars.PlushiesSpawn or true; 

local GasMaskLowRarity = sVars.GasMasks * sVars.Loot * 0.1;
local GasMaskMidRarity = sVars.GasMasks * sVars.Loot * 0.01;
local GasMaskHighRarity = sVars.GasMasks * sVars.Loot * 0.001;
local AccessoriesCommon = sVars.Accessories * sVars.Loot * 1.0;
local AccessoriesLowRarity = sVars.Accessories * sVars.Loot * 0.1;
local SpiffoRarity = sVars.Spiffo * sVars.Loot * 0.001;
local PlushieRarity = sVars.Plushies * sVars.Loot * 0.001;



if sBvars.CazadorSpawn then
    HCustoms:addDistributions({
        -- Cazador Outfits
        ["HCustoms.LongCoat_Cazador"] = GasMaskHighRarity,
        ["HCustoms.CazadorChest"] = GasMaskHighRarity,
        ["HCustoms.CazadorPants"] = GasMaskHighRarity,
        ["HCustoms.Shoes_CazadorBoots"] = GasMaskHighRarity,
        ["HCustoms.Gloves_CazadorGloves"] = GasMaskHighRarity,
        ["HCustoms.Bag_CazadorBackpack"] = GasMaskHighRarity,
        ["HCustoms.Hat_CazadorGasMask"] = GasMaskHighRarity,
    }, {
        "CrateClothesRandom", 
        "CrateRandomJunk",
        "ClosetShelfGeneric", 
        "ClothingStorageWinter",
    });
else
    HCustoms:addDistributions({
        -- Cazador Outfits
        ["HCustoms.LongCoat_Cazador"] = GasMaskHighRarity,
        ["HCustoms.CazadorChest"] = GasMaskHighRarity,
        ["HCustoms.CazadorPants"] = GasMaskHighRarity,
        ["HCustoms.Shoes_CazadorBoots"] = GasMaskHighRarity,
        ["HCustoms.Gloves_CazadorGloves"] = GasMaskHighRarity,
        ["HCustoms.Bag_CazadorBackpack"] = GasMaskHighRarity,
        ["HCustoms.Hat_CazadorGasMask"] = GasMaskHighRarity,
    }, {
    });
end



-- Spiffo Suits
SpiffoSuitsMoreColors.Procedural_SpiffoSuits  = function(x,count)
    ProceduralDistributions = ProceduralDistributions or {};
    ProceduralDistributions.list = ProceduralDistributions.list or {};
    ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
    ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Stitches");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Green");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Red");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Blue");  
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Yellow");
    table.insert(ProceduralDistributions.list[x].items, count);   
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Indigo");
    table.insert(ProceduralDistributions.list[x].items, count);    
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Pink");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Rainbow");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Black");
    table.insert(ProceduralDistributions.list[x].items, count);    
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_White");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoSuit_Inverted");
    table.insert(ProceduralDistributions.list[x].items, count); 
end

-- Spiffo Tails
SpiffoSuitsMoreColors.Procedural_SpiffoTails  = function(x,count)
    ProceduralDistributions = ProceduralDistributions or {};
    ProceduralDistributions.list = ProceduralDistributions.list or {};
    ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
    ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Stitches");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Green");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Red");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Blue");  
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Yellow");
    table.insert(ProceduralDistributions.list[x].items, count);   
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Indigo");
    table.insert(ProceduralDistributions.list[x].items, count);    
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Pink");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Rainbow");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Black");
    table.insert(ProceduralDistributions.list[x].items, count);    
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_White");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.SpiffoTail_Inverted");
    table.insert(ProceduralDistributions.list[x].items, count); 
end

-- Spiffo Hats
SpiffoSuitsMoreColors.Procedural_SpiffoHats  = function(x,count)
    ProceduralDistributions = ProceduralDistributions or {};
    ProceduralDistributions.list = ProceduralDistributions.list or {};
    ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
    ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Stitches");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Green");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Red");
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Blue");  
    table.insert(ProceduralDistributions.list[x].items, count);
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Yellow");
    table.insert(ProceduralDistributions.list[x].items, count);   
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Indigo");
    table.insert(ProceduralDistributions.list[x].items, count);    
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Pink");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Rainbow");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Black");
    table.insert(ProceduralDistributions.list[x].items, count);    
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_White");
    table.insert(ProceduralDistributions.list[x].items, count); 
    table.insert(ProceduralDistributions.list[x].items,"Base.Hat_Spiffo_Inverted");
    table.insert(ProceduralDistributions.list[x].items, count); 
end

SpiffoSuitsMoreColors.Procedural_SpiffoSuits("CrateSpiffoMerch",2);
SpiffoSuitsMoreColors.Procedural_SpiffoSuits("CrateRandomJunk",0.1);
SpiffoSuitsMoreColors.Procedural_SpiffoSuits("CrateToys",0.1);
SpiffoSuitsMoreColors.Procedural_SpiffoSuits("GigamartToys",0.2);

SpiffoSuitsMoreColors.Procedural_SpiffoTails("CrateSpiffoMerch",2);
SpiffoSuitsMoreColors.Procedural_SpiffoTails("CrateRandomJunk",0.1);
SpiffoSuitsMoreColors.Procedural_SpiffoTails("CrateToys",0.1);
SpiffoSuitsMoreColors.Procedural_SpiffoTails("GigamartToys",0.2);

SpiffoSuitsMoreColors.Procedural_SpiffoHats("CrateSpiffoMerch",2);
SpiffoSuitsMoreColors.Procedural_SpiffoHats("CrateRandomJunk",0.1);
SpiffoSuitsMoreColors.Procedural_SpiffoHats("CrateToys",0.1);
SpiffoSuitsMoreColors.Procedural_SpiffoHats("GigamartToys",0.2);