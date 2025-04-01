local _, ns = ...
local L = ns.L

OF_NUM_BROWSE_TO_DISPLAY = 8;
OF_NUM_AUCTION_ITEMS_PER_PAGE = 50;
OF_NUM_FILTERS_TO_DISPLAY = 15;
OF_BROWSE_FILTER_HEIGHT = 20;
OF_NUM_BIDS_TO_DISPLAY = 9;
OF_NUM_AUCTIONS_TO_DISPLAY = 9;
OF_AUCTIONS_BUTTON_HEIGHT = 37;
OF_OPEN_FILTER_LIST = {};
OF_MAXIMUM_BID_PRICE = 2000000000;
OFAuctionSort = { };

-- owner sorts
OFAuctionSort["owner_status"] = {
	{ column = "quantity",	reverse = true	},
	{ column = "bid",		reverse = false	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = false	},
	{ column = "duration",	reverse = false	},
	{ column = "status",	reverse = false	},
};

OFAuctionSort["owner_level"] = {
    { column =  "status",	reverse = true	},
    { column =  "bid",		reverse = true	},
    { column =  "duration",	reverse = true	},
    { column =  "quantity",	reverse = false	},
    { column =  "name",		reverse = true	},
    { column =  "quality",	reverse = true	},
    { column =  "level",	reverse = false	},
};

OFAuctionSort["owner_bid"] = {
	{ column = "quantity",	reverse = true	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = false	},
	{ column = "duration",	reverse = false	},
	{ column = "status",	reverse = false	},
	{ column = "bid",		reverse = false	},
};

OFAuctionSort["owner_quality"] = {
	{ column = "bid",		reverse = false	},
	{ column = "quantity",	reverse = true	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = false	},
};

OFAuctionSort["owner_duration"] = {
	{ column = "quantity",	reverse = true	},
	{ column = "bid",		reverse = false	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = false	},
	{ column = "status",	reverse = false	},
	{ column = "duration",	reverse = false	},
};

OFAuctionSort["owner_type"] = {
    { column = "quantity",	reverse = true	},
    { column = "bid",		reverse = false	},
    { column = "name",		reverse = false	},
    { column = "level",		reverse = true	},
    { column = "quality",	reverse = false	},
    { column = "status",	reverse = false	},
    { column = "type",	    reverse = false	},
};

OFAuctionSort["owner_delivery"] = {
    { column = "quantity",	reverse = true	},
    { column = "bid",		reverse = false	},
    { column = "name",		reverse = false	},
    { column = "level",		reverse = true	},
    { column = "quality",	reverse = false	},
    { column = "status",	reverse = false	},
    { column = "delivery",	reverse = false	},
};

-- bidder sorts
OFAuctionSort["bidder_quality"] = {
	{ column =  "bid",		reverse = false	},
	{ column =  "quantity",	reverse = true	},
	{ column =  "name",		reverse = false	},
	{ column =  "level",	reverse = true	},
	{ column =  "quality",	reverse = false	},
};

OFAuctionSort["bidder_type"] = {
    { column =  "bid",		reverse = false	},
    { column =  "quantity",	reverse = true	},
    { column =  "name",		reverse = false	},
    { column =  "level",	reverse = true	},
    { column =  "type",	    reverse = false	},
};

OFAuctionSort["bidder_delivery"] = {
    { column =  "bid",		reverse = false	},
    { column =  "quantity",	reverse = true	},
    { column =  "name",		reverse = false	},
    { column =  "level",	reverse = true	},
    { column =  "delivery",	reverse = false	},
};

OFAuctionSort["bidder_status"] = {
	{ column =  "quantity",	reverse = true	},
	{ column =  "name",		reverse = false	},
	{ column =  "level",	reverse = true	},
	{ column =  "quality",	reverse = false	},
	{ column =  "bid",		reverse = false	},
	{ column =  "duration", reverse = false	},
	{ column =  "status",	reverse = false	},
};

OFAuctionSort["bidder_bid"] = {
	{ column =  "quantity",	reverse = true	},
	{ column =  "name",		reverse = false	},
	{ column =  "level",	reverse = true	},
	{ column =  "quality",	reverse = false	},
	{ column =  "status",	reverse = false	},
	{ column =  "duration",	reverse = false	},
	{ column =  "bid",		reverse = false	},
};

OFAuctionSort["bidder_buyer"] = {
    { column = "duration",	reverse = false	},
    { column = "bid",		reverse = false },
    { column = "quantity",	reverse = true	},
    { column = "name",		reverse = false	},
    { column = "level",		reverse = true	},
    { column = "quality",	reverse = false	},
    { column = "buyer",	    reverse = false	},
};

OFAuctionSort["bidder_rating"] = {
    { column = "buyer",		reverse = false	},
    { column = "rating",	reverse = true	},
};

-- list sorts
OFAuctionSort["list_level"] = {
	{ column = "duration",	reverse = true	},
	{ column = "bid",		reverse = true	},
	{ column = "quantity",	reverse = false	},
	{ column = "name",		reverse = true	},
	{ column = "quality",	reverse = true	},
	{ column = "level",		reverse = false	},
};
OFAuctionSort["list_duration"] = {
	{ column = "bid",		reverse = false	},
	{ column = "quantity",	reverse = true	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = false	},
	{ column = "duration",	reverse = false	},
};
OFAuctionSort["list_seller"] = {
	{ column = "duration",	reverse = false	},
	{ column = "bid",		reverse = false },
	{ column = "quantity",	reverse = true	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = false	},
	{ column = "seller",	reverse = false	},
};
OFAuctionSort["list_bid"] = {
	{ column = "duration",	reverse = false	},
	{ column = "quantity",	reverse = true	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = false	},
	{ column = "bid",		reverse = false	},
};

OFAuctionSort["list_quality"] = {
	{ column = "duration",	reverse = false	},
	{ column = "bid",		reverse = false	},
	{ column = "quantity",	reverse = true	},
	{ column = "name",		reverse = false	},
	{ column = "level",		reverse = true	},
	{ column = "quality",	reverse = true	},
};

OFAuctionSort["list_type"] = {
    { column = "duration",	reverse = false	},
    { column = "bid",		reverse = false	},
    { column = "quantity",	reverse = true	},
    { column = "name",		reverse = false	},
    { column = "level",		reverse = true	},
    { column = "quality",	reverse = false	},
    { column = "type",	    reverse = false	},
};

OFAuctionSort["list_delivery"] = {
    { column = "duration",	reverse = false	},
    { column = "bid",		reverse = false	},
    { column = "quantity",	reverse = true	},
    { column = "name",		reverse = false	},
    { column = "level",		reverse = true	},
    { column = "delivery",	reverse = false	},
};

OFAuctionSort["list_rating"] = {
    { column = "seller",	reverse = false	},
    { column = "rating",	reverse = true	},
};

OFAuctionSort["clips_streamer"] = {
    { column = "when",		reverse = true	},
    { column = "streamer",	reverse = false	},
}

OFAuctionSort["clips_race"] = {
    { column = "when",	reverse = true  },
    { column = "race",	reverse = false	},
}

OFAuctionSort["clips_level"] = {
    { column = "when",	reverse = true  },
    { column = "level",	reverse = false	},
}

OFAuctionSort["clips_class"] = {
    { column = "when",	reverse = true  },
    { column = "class",	reverse = false	},
}

OFAuctionSort["clips_when"] = {
    { column = "streamer",	reverse = false	},
    { column = "when",	reverse = true  },
}

OFAuctionSort["clips_where"] = {
    { column = "when",	reverse = true  },
    { column = "where",	reverse = false	},
}

OFAuctionSort["clips_clip"] = {
    { column = "when",	reverse = true  },
    { column = "clip",	reverse = false	},
}

OFAuctionSort["clips_rating"] = {
    { column = "when",	reverse = true  },
    { column = "rating",reverse = true	},
}

OFAuctionSort["clips_rate"] = {
    { column = "when",	reverse = true  },
    { column = "rate",	reverse = false	},
}


OFAuctionSort["lfg_name"] = {
    { column = "viewers",		reverse = true	},
    { column = "name",	reverse = false	},
    { column = "meetsRequirements",	reverse = true	},
    { column = "isOnline",	reverse = true	},
}

OFAuctionSort["lfg_level"] = {
    { column = "viewers",	reverse = true  },
    { column = "level",	reverse = false	},
    { column = "meetsRequirements",	reverse = true	},
    { column = "isOnline",	reverse = true	},
}

OFAuctionSort["lfg_colab"] = {
    { column = "viewers",	reverse = true  },
    { column = "level",	reverse = false	},
    { column = "isDungeon",	reverse = true },
    { column = "meetsRequirements",	reverse = true	},
    { column = "isOnline",	reverse = true },
}

OFAuctionSort["lfg_viewers"] = {
    { column = "meetsRequirements",	reverse = true	},
    { column = "isOnline",	reverse = true },
    { column = "viewers",	reverse = true  },
}

OFAuctionSort["lfg_livestream"] = {
    { column = "meetsRequirements",	reverse = true	},
    { column = "livestream",	reverse = false	},
    { column = "isOnline",	reverse = true	},
}

OFAuctionSort["lfg_raid"] = {
    { column = "meetsRequirements",	reverse = true	},
    { column = "raid",	reverse = false	},
    { column = "isOnline",	reverse = true	},
}



OFAuctionCategories = {};

local function FindDeepestCategory(categoryIndex, ...)
	local categoryInfo = OFAuctionCategories[categoryIndex];
	for i = 1, select("#", ...) do
		local subCategoryIndex = select(i, ...);
		if categoryInfo and categoryInfo.subCategories and categoryInfo.subCategories[subCategoryIndex] then
			categoryInfo = categoryInfo.subCategories[subCategoryIndex];
		else
			break;
		end
	end
	return categoryInfo;
end

function OFAuctionFrame_FindDeepestCategory(categoryIndex, subCategoryIndex, subSubCategoryIndex)
    return FindDeepestCategory(categoryIndex, subCategoryIndex, subSubCategoryIndex)
end

function OFAuctionFrame_GetDetailColumnString(categoryIndex, subCategoryIndex)
	local categoryInfo = FindDeepestCategory(categoryIndex, subCategoryIndex);
	return categoryInfo and categoryInfo:GetDetailColumnString() or REQ_LEVEL_ABBR;
end

function OFAuctionFrame_DoesCategoryHaveFlag(flag, categoryIndex, subCategoryIndex, subSubCategoryIndex)
	local categoryInfo = FindDeepestCategory(categoryIndex, subCategoryIndex, subSubCategoryIndex);
	if categoryInfo then
		return categoryInfo:HasFlag(flag);
	end
	return false;
end

function OFAuctionFrame_CreateCategory(name)
	local category = CreateFromMixins(OFAuctionCategoryMixin);
	category.name = name;
	OFAuctionCategories[#OFAuctionCategories + 1] = category;
	return category;
end

OFAuctionCategoryMixin = {};

function OFAuctionCategoryMixin:SetDetailColumnString(detailColumnString)
	self.detailColumnString = detailColumnString;
end

function OFAuctionCategoryMixin:GetDetailColumnString()
	if self.detailColumnString then
		return self.detailColumnString;
	end
	if self.parent then
		return self.parent:GetDetailColumnString();
	end
	return REQ_LEVEL_ABBR;
end

function OFAuctionCategoryMixin:CreateSubCategory(classID, subClassID, inventoryType)
	local name = "";
	if inventoryType then
		name = C_Item.GetItemInventorySlotInfo(inventoryType);
	elseif classID and subClassID then
		name = C_Item.GetItemSubClassInfo(classID, subClassID);
	elseif classID then
		name = GetItemClassInfo(classID);
	end
	return self:CreateNamedSubCategory(name);
end

function OFAuctionCategoryMixin:CreateNamedSubCategory(name)
	self.subCategories = self.subCategories or {};

	local subCategory = CreateFromMixins(OFAuctionCategoryMixin);
	self.subCategories[#self.subCategories + 1] = subCategory;
	assert(name and #name > 0);
	subCategory.name = name;
	subCategory.parent = self;
	subCategory.sortIndex = #self.subCategories;
	return subCategory;
end

function OFAuctionCategoryMixin:CreateNamedSubCategoryAndFilter(name, classID, subClassID, inventoryType)
	local category = self:CreateNamedSubCategory(name);
	category:AddFilter(classID, subClassID, inventoryType);

	return category;
end

function OFAuctionCategoryMixin:CreateSubCategoryAndFilter(classID, subClassID, inventoryType)
	local category = self:CreateSubCategory(classID, subClassID, inventoryType);
	category:AddFilter(classID, subClassID, inventoryType);

	return category;
end

function OFAuctionCategoryMixin:AddBulkInventoryTypeCategories(classID, subClassID, inventoryTypes)
	for i, inventoryType in ipairs(inventoryTypes) do
		self:CreateSubCategoryAndFilter(classID, subClassID, inventoryType);
	end
end

function OFAuctionCategoryMixin:AddFilter(classID, subClassID, inventoryType)
	self.filters = self.filters or {};
	self.filters[#self.filters + 1] = { classID = classID, subClassID = subClassID, inventoryType = inventoryType, };

	if self.parent then
		self.parent:AddFilter(classID, subClassID, inventoryType);
	end
end

do
	local function GenerateSubClassesHelper(self, classID, ...)
		for i = 1, select("#", ...) do
			local subClassID = select(i, ...);
			self:CreateSubCategoryAndFilter(classID, subClassID);
		end
	end

	function OFAuctionCategoryMixin:GenerateSubCategoriesAndFiltersFromSubClass(classID)
		GenerateSubClassesHelper(self, classID, GetAuctionItemSubClasses(classID));
	end
end

function OFAuctionCategoryMixin:FindSubCategoryByName(name)
	if self.subCategories then
		for i, subCategory in ipairs(self.subCategories) do
			if subCategory.name == name then
				return subCategory;
			end
		end
	end
end

function OFAuctionCategoryMixin:SortSubCategories()
	if self.subCategories then
		table.sort(self.subCategories, function(left, right)
			return left.sortIndex < right.sortIndex;
		end)
	end
end

function OFAuctionCategoryMixin:SetSortIndex(sortIndex)
	self.sortIndex = sortIndex
end

function OFAuctionCategoryMixin:SetFlag(flag)
	self.flags = self.flags or {};
	self.flags[flag] = true;
end

function OFAuctionCategoryMixin:ClearFlag(flag)
	if self.flags then
		self.flags[flag] = nil;
	end
end

function OFAuctionCategoryMixin:HasFlag(flag)
	return not not (self.flags and self.flags[flag]);
end

do -- Weapons
    local weaponsCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_WEAPONS);

    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Axe1H);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Axe2H);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Bows);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Guns);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Mace1H);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Mace2H);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Polearm);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Sword1H);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Sword2H);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Staff);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Unarmed);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Generic);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Dagger);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Thrown);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Crossbow);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Wand);
    weaponsCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Weapon, Enum.ItemWeaponSubclass.Fishingpole);
end


do -- Armor
    local MiscArmorInventoryTypes = {
        Enum.InventoryType.IndexHeadType,
        Enum.InventoryType.IndexNeckType,
        Enum.InventoryType.IndexBodyType,
        Enum.InventoryType.IndexFingerType,
        Enum.InventoryType.IndexTrinketType,
        Enum.InventoryType.IndexHoldableType,
    };

    local ClothArmorInventoryTypes = {
        Enum.InventoryType.IndexHeadType,
        Enum.InventoryType.IndexShoulderType,
        Enum.InventoryType.IndexChestType,
        Enum.InventoryType.IndexWaistType,
        Enum.InventoryType.IndexLegsType,
        Enum.InventoryType.IndexFeetType,
        Enum.InventoryType.IndexWristType,
        Enum.InventoryType.IndexHandType,
        Enum.InventoryType.IndexCloakType, -- Only for Cloth.
    };

    local ArmorInventoryTypes = {
        Enum.InventoryType.IndexHeadType,
        Enum.InventoryType.IndexShoulderType,
        Enum.InventoryType.IndexChestType,
        Enum.InventoryType.IndexWaistType,
        Enum.InventoryType.IndexLegsType,
        Enum.InventoryType.IndexFeetType,
        Enum.InventoryType.IndexWristType,
        Enum.InventoryType.IndexHandType,
    };

    local armorCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_ARMOR);

    local miscCategory = armorCategory:CreateSubCategory(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Generic);
    miscCategory:AddBulkInventoryTypeCategories(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Generic, MiscArmorInventoryTypes);

    local clothCategory = armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Cloth);
    clothCategory:AddBulkInventoryTypeCategories(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Cloth, ClothArmorInventoryTypes);

    local clothChestCategory = clothCategory:FindSubCategoryByName(C_Item.GetItemInventorySlotInfo(Enum.InventoryType.IndexChestType));
    clothChestCategory:AddFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Cloth, Enum.InventoryType.IndexRobeType);

    local leatherCategory = armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Leather);
    leatherCategory:AddBulkInventoryTypeCategories(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Leather, ArmorInventoryTypes);

    local leatherChestCategory = leatherCategory:FindSubCategoryByName(C_Item.GetItemInventorySlotInfo(Enum.InventoryType.IndexChestType));
    leatherChestCategory:AddFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Leather, Enum.InventoryType.IndexRobeType);

    local mailCategory = armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Mail);
    mailCategory:AddBulkInventoryTypeCategories(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Mail, ArmorInventoryTypes);

    local mailChestCategory = mailCategory:FindSubCategoryByName(C_Item.GetItemInventorySlotInfo(Enum.InventoryType.IndexChestType));
    mailChestCategory:AddFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Mail, Enum.InventoryType.IndexRobeType);

    local plateCategory = armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Plate);
    plateCategory:AddBulkInventoryTypeCategories(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Plate, ArmorInventoryTypes);

    local plateChestCategory = plateCategory:FindSubCategoryByName(C_Item.GetItemInventorySlotInfo(Enum.InventoryType.IndexChestType));
    plateChestCategory:AddFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Plate, Enum.InventoryType.IndexRobeType);

    armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Shield);
    if ClassicExpansionAtLeast(LE_EXPANSION_CATACLYSM) then
        armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Relic);
    else
        armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Libram);
        armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Idol);
        armorCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Totem);
    end
end

do -- Containers
    local containersCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_CONTAINERS);
    --containersCategory:SetDetailColumnString(SLOT_ABBR);
    containersCategory:GenerateSubCategoriesAndFiltersFromSubClass(Enum.ItemClass.Container);
end

do -- Consumables (SubClasses Added in TBC)
    local consumablesCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_CONSUMABLES);
    if ClassicExpansionAtLeast(LE_EXPANSION_BURNING_CRUSADE) then
        consumablesCategory:GenerateSubCategoriesAndFiltersFromSubClass(Enum.ItemClass.Consumable);
    else
        consumablesCategory:AddFilter(Enum.ItemClass.Consumable);
    end
end

do -- Trade Goods (SubClasses Added in TBC)
    local tradeGoodsCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_TRADE_GOODS);
    if ClassicExpansionAtLeast(LE_EXPANSION_BURNING_CRUSADE) then
        tradeGoodsCategory:GenerateSubCategoriesAndFiltersFromSubClass(Enum.ItemClass.Tradegoods);
    else
        tradeGoodsCategory:AddFilter(Enum.ItemClass.Tradegoods);
    end
end

do -- Projectile
    if ClassicExpansionAtMost(LE_EXPANSION_WRATH_OF_THE_LICH_KING) then
        local projectileCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_PROJECTILE);
        projectileCategory:GenerateSubCategoriesAndFiltersFromSubClass(Enum.ItemClass.Projectile);
    end
end

do -- Quiver
    if ClassicExpansionAtMost(LE_EXPANSION_WRATH_OF_THE_LICH_KING) then
        local quiverCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_QUIVER);
        quiverCategory:GenerateSubCategoriesAndFiltersFromSubClass(Enum.ItemClass.Quiver);
    end
end

do -- Recipes
    local recipesCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_RECIPES);
    recipesCategory:GenerateSubCategoriesAndFiltersFromSubClass(Enum.ItemClass.Recipe);
end

do -- Reagent (Changed to a ItemClass.Miscellaneous and other ClassIDs in TBC)
    if GetClassicExpansionLevel() == LE_EXPANSION_CLASSIC then
        local reagentCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_REAGENT);
        reagentCategory:AddFilter(Enum.ItemClass.Reagent);
    end
end

do -- Miscellaneous (SubClasses Added in TBC)
    local miscellaneousCategory = OFAuctionFrame_CreateCategory(AUCTION_CATEGORY_MISCELLANEOUS);
    miscellaneousCategory:AddFilter(Enum.ItemClass.Miscellaneous);
    if ClassicExpansionAtLeast(LE_EXPANSION_BURNING_CRUSADE) then
        miscellaneousCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Miscellaneous, Enum.ItemMiscellaneousSubclass.Junk);
        miscellaneousCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Miscellaneous, Enum.ItemMiscellaneousSubclass.Reagent);
        miscellaneousCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Miscellaneous, Enum.ItemMiscellaneousSubclass.CompanionPet);
        miscellaneousCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Miscellaneous, Enum.ItemMiscellaneousSubclass.Holiday);
        miscellaneousCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Miscellaneous, Enum.ItemMiscellaneousSubclass.Other);
        miscellaneousCategory:CreateSubCategoryAndFilter(Enum.ItemClass.Miscellaneous, Enum.ItemMiscellaneousSubclass.Mount);
    end
end

OFAuctionFrame_CreateCategory(L["Enchants"]):SetFlag("BLUE_HIGHLIGHT")

OFAuctionFrame_CreateCategory(L["Gold Missions"]):SetFlag("BLUE_HIGHLIGHT")

ns.CategoryIndexToID = {
    2,
    4,
    1,
    0,
    7,
    6,
    11,
    9,
    5,
    15,
    ns.SPELL_ITEM_CLASS_ID,
    ns.GOLD_ITEM_CLASS_ID,
}