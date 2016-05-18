local use_moreores = minetest.get_modpath("moreores")

-- Regisiter Shields

minetest.register_tool("shields:shield_admin", {
	description = "Admin Shield",
	inventory_image = "shields_inv_shield_admin.png",
	groups = {armor_shield=1000, armor_heal=100, armor_use=0},
	wear = 0,
})

if ARMOR_MATERIALS.wood then
	minetest.register_tool("shields:shield_wood", {
		description = "Wooden Shield",
		inventory_image = "shields_inv_shield_wood.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=2000},
		armor_groups = {fleshy=5, cracky=5, snappy=3, choppy=2, crumbly=4},
		wear = 0,
	})
	minetest.register_tool("shields:shield_enhanced_wood", {
		description = "Enhanced Wood Shield",
		inventory_image = "shields_inv_shield_enhanced_wood.png",
		armor_groups = {fleshy=10, cracky=10, snappy=8, choppy=3, crumbly=4},
		wear = 0,
	})
	minetest.register_craft({
		output = "shields:shield_enhanced_wood",
		recipe = {
			{"default:steel_ingot"},
			{"shields:shield_wood"},
			{"default:steel_ingot"},
		},
	})
end

if ARMOR_MATERIALS.cactus then
	minetest.register_tool("shields:shield_cactus", {
		description = "Cactus Shield",
		inventory_image = "shields_inv_shield_cactus.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=2000},
		armor_groups = {fleshy=5, cracky=4, snappy=2, choppy=2, crumbly=3},
		wear = 0,
	})
	minetest.register_tool("shields:shield_enhanced_cactus", {
		description = "Enhanced Cactus Shield",
		inventory_image = "shields_inv_shield_enhanced_cactus.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=1000},
		armor_groups = {fleshy=10, cracky=8, snappy=3, choppy=3, crumbly=4},
		wear = 0,
	})
	minetest.register_craft({
		output = "shields:shield_enhanced_cactus",
		recipe = {
			{"default:steel_ingot"},
			{"shields:shield_cactus"},
			{"default:steel_ingot"},
		},
	})
end

if ARMOR_MATERIALS.steel then
	minetest.register_tool("shields:shield_steel", {
		description = "Steel Shield",
		inventory_image = "shields_inv_shield_steel.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=500},
		armor_groups = {fleshy=10, cracky=10, snappy=8, choppy=8, crumbly=10},
		wear = 0,
	})
end

if ARMOR_MATERIALS.bronze then
	minetest.register_tool("shields:shield_bronze", {
		description = "Bronze Shield",
		inventory_image = "shields_inv_shield_bronze.png",
		groups = {armor_shield=1, armor_heal=6, armor_use=250},
		armor_groups = {fleshy=10, cracky=8, snappy=8, choppy=10, crumbly=10},
		wear = 0,
	})
end

if ARMOR_MATERIALS.diamond then
	minetest.register_tool("shields:shield_diamond", {
		description = "Diamond Shield",
		inventory_image = "shields_inv_shield_diamond.png",
		groups = {armor_shield=1, armor_heal=12, armor_use=100},
		armor_groups = {fleshy=15, cracky=10, snappy=15, choppy=15, crumbly=15},
		wear = 0,
	})
end

if ARMOR_MATERIALS.gold then
	minetest.register_tool("shields:shield_gold", {
		description = "Gold Shield",
		inventory_image = "shields_inv_shield_gold.png",
		groups = {armor_shield=1, armor_heal=6, armor_use=250},
		armor_groups = {fleshy=10, cracky=10, snappy=8, choppy=8, crumbly=8},
		wear = 0,
	})
end

if ARMOR_MATERIALS.mithril then
	minetest.register_tool("shields:shield_mithril", {
		description = "Mithril Shield",
		inventory_image = "shields_inv_shield_mithril.png",
		groups = {armor_shield=1, armor_heal=12, armor_use=50},
		armor_groups = {fleshy=15, cracky=10, snappy=15, choppy=15, crumbly=15},
		wear = 0,
	})
end

if ARMOR_MATERIALS.crystal then
	minetest.register_tool("shields:shield_crystal", {
		description = "Crystal Shield",
		inventory_image = "shields_inv_shield_crystal.png",
		groups = {armor_shield=1, armor_heal=12, armor_use=50, armor_fire=1},
		armor_groups = {fleshy=15, cracky=10, snappy=15, choppy=15, crumbly=15},
		wear = 0,
	})
end

for k, v in pairs(ARMOR_MATERIALS) do
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end

minetest.after(0, function()
	table.insert(armor.elements, "shield")
end)

