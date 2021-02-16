GLOBAL.setmetatable(
  env,
  {
    __index = function(t, k)
      return GLOBAL.rawget(GLOBAL, k)
    end
  }
)

local total_day_time = 480
local wilson_health = 150
local base_armor_durability_105 = 105

-- 海钓
-- 甩杆更远
TUNING.OCEAN_FISHING.MAX_CAST_DIST = 24
-- 钓鱼线更难被拉断
TUNING.OCEAN_FISHING.LINE_TENSION_HIGH = 0.97

-- 时间常量和速度修改
-- 烹饪基准速度
-- TUNING.BASE_COOK_TIME = 0.8
-- 鼹鼠帽
TUNING.MOLEHAT_PERISHTIME = total_day_time * 4.5
-- 矿工帽
TUNING.MINERHAT_LIGHTTIME = TUNING.MINERHAT_LIGHTTIME * 3
-- 生物生成时间
-- 龙蝇
-- TUNING.DRAGONFLY_RESPAWN_TIME = total_day_time * 30
-- 地下蛤蟆
-- TUNING.TOADSTOOL_RESPAWN_TIME = total_day_time * 15

-- 物品修改
-- 基础
-- TUNING.AXE_USES = 300
-- TUNING.PICKAXE_USES = 99
-- TUNING.MULTITOOL_AXE_PICKAXE_USES = 1600
-- 步行手杖
TUNING.CANE_SPEED_MULT = 1.75
-- 打火机
TUNING.LIGHTER_DAMAGE = 27
TUNING.LIGHTER_FUEL = 20000
-- 天气棒
TUNING.TORNADOSTAFF_USES = 120

-- 人物修改
-- 女武神
TUNING.WATHGRITHR_HEALTH = 450
TUNING.WATHGRITHR_HUNGER = 180
TUNING.WATHGRITHR_SANITY = 100
TUNING.WATHGRITHR_DAMAGE_MULT = 1.55
TUNING.WATHGRITHR_ABSORPTION = 0.18
-- 机器人
TUNING.WX78_MIN_HEALTH = 100
TUNING.WX78_MIN_HUNGER = 100
TUNING.WX78_MIN_SANITY = 100
TUNING.WX78_MAX_HEALTH = 1500
TUNING.WX78_MAX_HUNGER = 600
TUNING.WX78_MAX_SANITY = 800
-- 沃尔夫冈
-- TUNING.WOLFGANG_HUNGER = 300
-- TUNING.WOLFGANG_START_HUNGER = 200
-- TUNING.WOLFGANG_START_MIGHTY_THRESH = 225
-- TUNING.WOLFGANG_END_MIGHTY_THRESH = 220
-- TUNING.WOLFGANG_START_WIMPY_THRESH = 100
-- TUNING.WOLFGANG_END_WIMPY_THRESH = 105
-- TUNING.WOLFGANG_HUNGER_RATE_MULT_MIGHTY = 4
-- TUNING.WOLFGANG_HUNGER_RATE_MULT_NORMAL = 2
-- TUNING.WOLFGANG_HUNGER_RATE_MULT_WIMPY = 1.2
-- TUNING.WOLFGANG_HEALTH_MIGHTY = 450
-- TUNING.WOLFGANG_HEALTH_NORMAL = 250
-- TUNING.WOLFGANG_HEALTH_WIMPY = 150
-- TUNING.WOLFGANG_ATTACKMULT_MIGHTY_MAX = 3.6
-- TUNING.WOLFGANG_ATTACKMULT_MIGHTY_MIN = 1.5
-- TUNING.WOLFGANG_ATTACKMULT_NORMAL = 1
-- TUNING.WOLFGANG_ATTACKMULT_WIMPY_MAX = .75
-- TUNING.WOLFGANG_ATTACKMULT_WIMPY_MIN = .4
-- 薇洛
TUNING.WILLOW_ABSORPTION = 0.05
TUNING.WILLOW_MAX_XUSHI = 5
-- 温蒂
TUNING.WENDY_HEALTH = 180
TUNING.WENDY_HUNGER = 180
TUNING.WENDY_SANITY = 180
TUNING.WENDY_DAMAGE_MULT = 0.65
TUNING.ABIGAIL_SPEED = 10
TUNING.ABIGAIL_HEALTH = wilson_health * 8
TUNING.ABIGAIL_HEALTH_LEVEL1 = wilson_health * 2
TUNING.ABIGAIL_HEALTH_LEVEL2 = wilson_health * 4
TUNING.ABIGAIL_HEALTH_LEVEL3 = wilson_health * 8
TUNING.ABIGAIL_DAMAGE =
{
	day = 40,
	dusk = 60,
	night = 100,
}
TUNING.ABIGAIL_VEX_DURATION = 4
TUNING.ABIGAIL_VEX_DAMAGE_MOD = 1.5
TUNING.ABIGAIL_VEX_GHOSTLYFRIEND_DAMAGE_MOD = 2.2
TUNING.ABIGAIL_DMG_PERIOD = 1.2
TUNING.ABIGAIL_LIGHTING =
{
	{l = 0.0, r = 0.0},
	{l = 0.1, r = 0.8, i = 0.8, f = 0.5},
	{l = 0.5, r = 1.5, i = 0.95, f = 0.6},
}
-- 麦斯威尔
-- TUNING.SHADOWWAXWELL_SPEED = 10
-- TUNING.SHADOWWAXWELL_DAMAGE = 80
-- TUNING.SHADOWWAXWELL_LIFE = 300
-- TUNING.SHADOWWAXWELL_ATTACK_PERIOD = 1
-- TUNING.SHADOWWAXWELL_HEALTH_REGEN = 10
-- TUNING.SHADOWWAXWELL_HEALTH_REGEN_PERIOD = 1
-- TUNING.SHADOWWAXWELL_TARGET_DIST = 17
-- 恶魔
-- TUNING.WORTOX_HEALTH = 400
-- TUNING.WORTOX_HUNGER = 350
-- TUNING.WORTOX_SANITY = 300
-- TUNING.WORTOX_SANITY_AURA_MULT = .8
-- TUNING.WORTOX_MAX_SOULS = 40
-- TUNING.WORTOX_FOOD_MULT = .8
-- TUNING.WORTOX_SOULEXTRACT_RANGE = 30 --die within this range of wortox to spawn soul
-- TUNING.WORTOX_SOULSTEALER_RANGE = 20 --souls fly towards wortox when he walks within this range
-- TUNING.WORTOX_SOULHEAL_RANGE = 16
-- 植物人
-- TUNING.WORMWOOD_HEALTH = 250
-- TUNING.WORMWOOD_HUNGER = 250
-- TUNING.WORMWOOD_SANITY = 200
-- 老奶奶
TUNING.WICKERBOTTOM_SANITY = 1000
TUNING.WICKERBOTTOM_STALE_FOOD_HUNGER = .333
TUNING.WICKERBOTTOM_SPOILED_FOOD_HUNGER = .167
TUNING.WICKERBOTTOM_STALE_FOOD_HEALTH = .25
TUNING.WICKERBOTTOM_SPOILED_FOOD_HEALTH = 0.1
-- 蜘蛛
-- TUNING.WEBBER_HEALTH = 350
-- TUNING.WEBBER_SANITY = 100
-- TUNING.WEBBER_HUNGER = 350
-- 厨师
-- TUNING.WARLY_HUNGER = 500
-- TUNING.WARLY_HUNGER_RATE_MODIFIER = 2
-- TUNING.WARLY_SAME_OLD_COOLDOWN = 480 * 3
-- TUNING.WARLY_SAME_OLD_MULTIPLIERS = { .9, .8, .65, .5, .3 }
-- 女工
-- (投石机)
-- TUNING.WINONA_CATAPULT_HEALTH = 10000
-- TUNING.WINONA_CATAPULT_HEALTH_REGEN_PERIOD = 1
-- TUNING.WINONA_CATAPULT_HEALTH_REGEN = 2
-- TUNING.WINONA_CATAPULT_DAMAGE = 120
-- TUNING.WINONA_CATAPULT_MIN_RANGE = 4
-- TUNING.WINONA_CATAPULT_MAX_RANGE = 40
-- TUNING.WINONA_CATAPULT_ATTACK_PERIOD = 1.5
-- TUNING.WINONA_CATAPULT_AOE_RADIUS = 3
-- -- (聚光灯)
-- TUNING.WINONA_SPOTLIGHT_RADIUS = 3.5
-- TUNING.WINONA_SPOTLIGHT_MIN_RANGE = 2
-- TUNING.WINONA_SPOTLIGHT_MAX_RANGE = 60
-- -- (发电机)
-- TUNING.WINONA_BATTERY_LOW_FUEL_RATE_MULT = .125 --changes max fuel to last 1 full day, while still only costing 2 nitre
-- TUNING.WINONA_BATTERY_HIGH_MAX_FUEL_TIME = 28800
-- TUNING.WINONA_BATTERY_MIN_LOAD = .1
-- 鱼人
-- TUNING.WURT_HEALTH = 250
-- TUNING.WURT_HUNGER = 300
-- TUNING.WURT_SANITY = 250

-- 武器
-- TUNING.BATBAT_DAMAGE = 56

-- TUNING.RUINS_BAT_DAMAGE = 78

-- TUNING.HAMBAT_DAMAGE = 98
-- TUNING.HAMBAT_MIN_DAMAGE_MODIFIER = .2

TUNING.PIPE_DART_DAMAGE = 150
TUNING.YELLOW_DART_DAMAGE = 250

TUNING.WATHGRITHR_SPEAR_DAMAGE = 66
TUNING.WATHGRITHR_SPEAR_USES = 600
-- 铠甲
TUNING.ARMOR_WATHGRITHRHAT = base_armor_durability_105 * 140

TUNING.ARMOR_WATHGRITHRHAT_ABSORPTION = 7 / 9

TUNING.ARMORGRASS = base_armor_durability_105 * 2.5
TUNING.ARMORWOOD = base_armor_durability_105 * 5
TUNING.ARMOR_FOOTBALLHAT = base_armor_durability_105 * 13
TUNING.ARMORMARBLE = base_armor_durability_105 * 30

TUNING.ARMORMARBLE_ABSORPTION = 0.92

TUNING.ARMORSNURTLESHELL = base_armor_durability_105 * 11

TUNING.ARMORMARBLE_SLOW = 0.9

TUNING.ARMORSLURPER_SLOW_HUNGER = 1 / 3

TUNING.ARMORRUINS = base_armor_durability_105 * 120
TUNING.ARMOR_RUINSHAT = base_armor_durability_105 * 100
TUNING.ARMORDRAGONFLY = base_armor_durability_105 * 40
TUNING.ARMOR_SLURTLEHAT = base_armor_durability_105 * 10

TUNING.ARMOR_SLURTLEHAT_ABSORPTION = 0.98
-- 伯尼熊
-- TUNING.BERNIE_BIG_HEALTH = 10000
-- TUNING.BERNIE_BIG_WALK_SPEED = 10
-- TUNING.BERNIE_BIG_RUN_SPEED = 12
-- TUNING.BERNIE_BIG_DAMAGE = 100
-- TUNING.BERNIE_BIG_ATTACK_PERIOD = 0.75
-- TUNING.BERNIE_BIG_ATTACK_RANGE = 4
-- TUNING.BERNIE_BIG_HIT_RANGE = 8
-- 切斯特
TUNING.CHESTER_HEALTH = 800
TUNING.CHESTER_RESPAWN_TIME = 240 -- total_day_time = 480
-- 陷阱
TUNING.TRAP_TEETH_DAMAGE = 110
TUNING.TRAP_TEETH_RADIUS = 2.25

-- 生物加强
-- 海星
TUNING.STARFISH_TRAP_DAMAGE = 260
-- 猪
-- TUNING.PIG_DAMAGE = 44
-- TUNING.PIG_HEALTH = 800
-- -- 疯猪
-- TUNING.WEREPIG_DAMAGE = 72
-- TUNING.WEREPIG_HEALTH = 1400
-- -- 猪猪守卫
-- TUNING.PIG_GUARD_DAMAGE = 88
-- TUNING.PIG_GUARD_HEALTH = 3000
-- -- 精英猪猪战士
-- TUNING.PIG_ELITE_FIGHTER_DAMAGE = 98
-- -- 海象
-- TUNING.WALRUS_DAMAGE = 45
-- TUNING.WALRUS_HEALTH = 1200
-- TUNING.WALRUS_ATTACK_PERIOD = 2.5
-- TUNING.WALRUS_ATTACK_DIST = 15
-- TUNING.WALRUS_DART_RANGE = 40
-- TUNING.WALRUS_MELEE_RANGE = 6
-- TUNING.WALRUS_TARGET_DIST = 10
-- TUNING.WALRUS_LOSETARGET_DIST = 45
-- TUNING.LITTLE_WALRUS_DAMAGE = 44
-- TUNING.LITTLE_WALRUS_HEALTH = 200
-- -- 高鸟
-- TUNING.TALLBIRD_HEALTH = 12500
-- TUNING.TALLBIRD_DAMAGE = 300
-- TUNING.TALLBIRD_ATTACK_PERIOD = 1.6
-- TUNING.TEENBIRD_HEALTH = 2000
-- TUNING.TEENBIRD_DAMAGE = 75
-- TUNING.SMALLBIRD_HEALTH = 1000
-- TUNING.SMALLBIRD_DAMAGE = 33
-- -- (鸟蛋)
-- TUNING.TALLBIRDEGG_HEALTH = 75
-- TUNING.TALLBIRDEGG_HUNGER = 75
-- TUNING.TALLBIRDEGG_COOKED_HEALTH = 200
-- TUNING.TALLBIRDEGG_COOKED_HUNGER = 300
-- -- 青蛙
-- TUNING.FROG_HEALTH = 500
-- TUNING.FROG_DAMAGE = 30
-- -- 企鹅
-- TUNING.PENGUIN_HEALTH = 150
-- TUNING.PENGUIN_DAMAGE = 66
-- -- 大象
-- TUNING.KOALEFANT_HEALTH = 2000
-- TUNING.KOALEFANT_DAMAGE = 100
-- -- 钢羊
-- TUNING.SPAT_HEALTH = 2000
-- TUNING.SPAT_PHLEGM_DAMAGE = 40
-- TUNING.SPAT_PHLEGM_ATTACKRANGE = 16
-- TUNING.SPAT_PHLEGM_RADIUS = 8
-- TUNING.SPAT_MELEE_DAMAGE = 100
-- -- 各种齿轮怪
-- TUNING.BISHOP_DAMAGE = 95
-- TUNING.BISHOP_HEALTH = 2000
-- TUNING.KNIGHT_DAMAGE = 75
-- TUNING.KNIGHT_HEALTH = 3000
-- TUNING.ROOK_DAMAGE = 70
-- TUNING.ROOK_HEALTH = 4000
-- TUNING.MINOTAUR_DAMAGE = 150
-- TUNING.MINOTAUR_HEALTH = 20000
-- -- 蜗牛
-- TUNING.SLURTLE_DAMAGE = 50
-- TUNING.SLURTLE_HEALTH = 1000
-- TUNING.SLURTLE_SHELL_ABSORB = 0.999
-- TUNING.SLURTLE_EXPLODE_DAMAGE = 3000
-- TUNING.SLURTLESLIME_EXPLODE_DAMAGE = 500
-- TUNING.SNURTLE_EXPLODE_DAMAGE = 3000
-- TUNING.SNURTLE_SHELL_ABSORB = 0.9888
-- -- 蚊子
-- TUNING.MOSQUITO_DAMAGE = 10
-- TUNING.MOSQUITO_HEALTH = 200
-- -- 洗脑怪
-- TUNING.SLURPER_HEALTH = 600
-- TUNING.SLURPER_DAMAGE = 60
-- -- 闪电羊
-- TUNING.LIGHTNING_GOAT_DAMAGE = 95
-- TUNING.LIGHTNING_GOAT_HEALTH = 800
-- -- 鹿
-- TUNING.DEER_DAMAGE = 35
-- TUNING.DEER_HEALTH = 900
-- TUNING.DEER_GEMMED_DAMAGE = 120
-- TUNING.DEER_GEMMED_HEALTH = 3000
-- TUNING.DEER_GEMMED_MAX_SPELLS = 8
-- TUNING.DEER_ICE_CAST_CD = 8
-- TUNING.DEER_FIRE_CAST_CD = 6
-- -- 触手
-- TUNING.TENTACLE_HEALTH = 1200
-- TUNING.TENTACLE_DAMAGE = 88
-- -- 蝙蝠
-- TUNING.BAT_DAMAGE = 40
-- TUNING.BAT_HEALTH = 400
-- -- 蜘蛛
-- TUNING.SPIDER_HEALTH = 200
-- TUNING.SPIDER_DAMAGE = 30
-- TUNING.SPIDER_WARRIOR_HEALTH = 600
-- TUNING.SPIDER_WARRIOR_DAMAGE = 60
-- TUNING.SPIDER_HIDER_HEALTH = 300
-- TUNING.SPIDER_HIDER_DAMAGE = 45
-- TUNING.SPIDER_MOON_HEALTH = 500
-- TUNING.SPIDER_MOON_DAMAGE = 40
-- TUNING.SPIDERQUEEN_WALKSPEED = 2.25
-- TUNING.SPIDERQUEEN_HEALTH = 8000
-- TUNING.SPIDERQUEEN_DAMAGE = 195
-- TUNING.SPIDERQUEEN_FOLLOWERS = 32
-- TUNING.SPIDERQUEEN_GIVEBIRTHPERIOD = 7.5
-- -- 地下蠕虫
-- TUNING.WORM_HEALTH = 1200
-- TUNING.WORM_ATTACK_PERIOD = 1.5
-- -- 各种狗
-- TUNING.HOUND_HEALTH = 300
-- TUNING.HOUND_DAMAGE = 30
-- TUNING.FIREHOUND_HEALTH = 100
-- TUNING.FIREHOUND_DAMAGE = 75
-- TUNING.ICEHOUND_HEALTH = 500
-- TUNING.ICEHOUND_DAMAGE = 55
-- TUNING.MOONHOUND_HEALTH = 800
-- TUNING.MOONHOUND_DAMAGE = 70
-- TUNING.MUTATEDHOUND_HEALTH = 100
-- TUNING.MUTATEDHOUND_DAMAGE = 25
-- -- 坎普斯
-- TUNING.KRAMPUS_HEALTH = 300
-- -- 石虾
-- TUNING.ROCKY_DAMAGE = 300
-- TUNING.ROCKY_HEALTH = 4000
-- -- 猴子
-- TUNING.MONKEY_RANGED_RANGE = 12
-- -- 大鸟
-- TUNING.BUZZARD_DAMAGE = 30
-- TUNING.BUZZARD_WALK_SPEED = 6
-- TUNING.BUZZARD_RUN_SPEED = 12
-- TUNING.BUZZARD_HEALTH = 400
-- -- 牛
-- TUNING.BEEFALO_HEALTH = 2000
-- TUNING.BEEFALO_HEALTH_REGEN = 10
-- TUNING.BEEFALO_HUNGER = 800
-- TUNING.BEEFALO_DAMAGE.DEFAULT = 66
-- TUNING.BEEFALO_DAMAGE.RIDER = 120
-- TUNING.BEEFALO_DAMAGE.ORNERY = 100
-- TUNING.BEEFALO_DAMAGE.PUDGY = 30
-- TUNING.BEEFALO_RUN_SPEED.RIDER = 16
-- TUNING.BABYBEEFALO_HEALTH = 1000
-- -- 蜜蜂
-- TUNING.BEE_HEALTH = 300
-- TUNING.BEE_DAMAGE = 30

-- -- Boss
-- -- 座狼
-- TUNING.WARG_HEALTH = 6000
-- -- 钢羊
-- TUNING.SPAT_HEALTH = 8000
-- -- 克劳斯
-- TUNING.KLAUS_HEALTH = 50000
-- TUNING.KLAUS_DAMAGE = 155
-- -- 犀牛
-- TUNING.MINOTAUR_DAMAGE = 270
-- TUNING.MINOTAUR_HEALTH = 50000
-- -- 树人
-- TUNING.LEIF_HEALTH = 5000
-- TUNING.LEIF_DAMAGE = 200
-- TUNING.LEIF_FLAMMABILITY = .111
-- -- 巨鹿
-- TUNING.DEERCLOPS_HEALTH = 12000
-- TUNING.DEERCLOPS_DAMAGE = 275
-- -- 鹅
-- TUNING.MOOSE_HEALTH = 25000
-- TUNING.MOOSE_DAMAGE = 220
-- TUNING.MOSSLING_HEALTH = 600
-- TUNING.MOSSLING_DAMAGE = 75
-- -- 熊獾
-- TUNING.BEARGER_HEALTH = 30000
-- TUNING.BEARGER_DAMAGE = 355
-- -- 蜜蜂女王
-- TUNING.BEEQUEEN_HEALTH = 35000
-- TUNING.BEEQUEEN_DAMAGE = 335
-- -- 蜂巢卫士
-- TUNING.BEEGUARD_HEALTH = 400
-- TUNING.BEEGUARD_DAMAGE = 35
-- -- 龙蝇
-- TUNING.DRAGONFLY_HEALTH = 100000
-- TUNING.DRAGONFLY_DAMAGE = 445
-- TUNING.DRAGONFLY_FIRE_DAMAGE = 625
-- TUNING.DRAGONFLY_SPEED = 5 * 0.7
-- TUNING.DRAGONFLY_FIRE_ATTACK_PERIOD = 3 * 0.7
-- TUNING.DRAGONFLY_SPEED = 7
-- -- 蛤蟆
-- TUNING.TOADSTOOL_HEALTH = 100000
-- -- 复活的骨架（远古编织者）
-- TUNING.STALKER_ATRIUM_HEALTH = 32000
-- TUNING.STALKER_ATRIUM_PHASE2_HEALTH = 20000
-- -- 信天翁
-- TUNING.MINOTAUR_HEALTH = 12000

-- 史诗 Boss 额外掉落
function ExtraLootForEpicBosses(inst)
	if inst.components.lootdropper == nil then return end

	for k = 1, 5 do
		inst.components.lootdropper:AddChanceLoot("meat", 0.2)
	end

	for k = 1, 3 do
		inst.components.lootdropper:AddChanceLoot("redgem", 0.2)
	end
	for k = 1, 3 do
		inst.components.lootdropper:AddChanceLoot("bluegem", 0.2)
	end
	for k = 1, 3 do
		inst.components.lootdropper:AddChanceLoot("yellowgem", 0.07)
	end
	for k = 1, 8 do
		inst.components.lootdropper:AddChanceLoot("thulecite", 0.15)
	end

	inst.components.lootdropper:AddChanceLoot("amulet", 0.2)

	inst.components.lootdropper:AddChanceLoot("yellowstaff", 0.03)
	inst.components.lootdropper:AddChanceLoot("greenstaff", 0.03)
	inst.components.lootdropper:AddChanceLoot("orangestaff", 0.01)

	inst.components.lootdropper:AddChanceLoot("blueamulet", 0.1)
	inst.components.lootdropper:AddChanceLoot("orangeamulet", 0.1)
end

AddPrefabPostInit("dragonfly", ExtraLootForEpicBosses)
AddPrefabPostInit("bearger", ExtraLootForEpicBosses)
AddPrefabPostInit("deerclops", ExtraLootForEpicBosses)
AddPrefabPostInit("moose", ExtraLootForEpicBosses)
AddPrefabPostInit("beequeen", ExtraLootForEpicBosses)
AddPrefabPostInit("antlion", ExtraLootForEpicBosses)
AddPrefabPostInit("malbatross", ExtraLootForEpicBosses)
AddPrefabPostInit("stalker_atrium", ExtraLootForEpicBosses)
AddPrefabPostInit("toadstool", ExtraLootForEpicBosses)
AddPrefabPostInit("toadstool_dark", ExtraLootForEpicBosses)

-- 添加突进
local function blink(player, tg, weapon, ratio)
	local pcombat = player.components.combat

	if not tg or
		(not tg.Transform) or
		(not tg.components.combat) or
		(not pcombat:IsValidTarget(tg)) then
		return false
	end

	local distance = math.sqrt(player:GetDistanceSqToInst(tg))
	local w_weapon = weapon.components.weapon
	local hitrange = w_weapon.hitrange

	if distance > hitrange then
		local tx, ty, tz = tg.Transform:GetWorldPosition()
		local px, py, pz = player.Transform:GetWorldPosition()
		local q = (distance - hitrange + 0.2) / distance
		local dx, dy, dz = px - q * (px - tx), py - q * (py - ty), pz - q * (pz - tz)
		if not IsLandTile(TheWorld.Map:GetTileAtPoint(dx, dy, dz)) then
			return false
		end
		-- 生成烟雾
		SpawnPrefab("explode_reskin").Transform:SetPosition(px, py, pz)
		SpawnPrefab("maxwell_smoke").Transform:SetPosition(dx, dy, dz)
		player.Transform:SetPosition(dx, dy, dz)
		-- 突进伤害
		local blinking_damage = (w_weapon.damage + pcombat.defaultdamage) * ratio -- blinking damata ratio
		tg.components.combat:GetAttacked(player, blinking_damage, weapon)
		player.components.health:DoDelta(blinking_damage * 0.01)
		player.components.sanity:DoDelta(-1)
		return true
	end
	return false
end
local function removeBlink(player)
	player.__HasBlink = true

	pcall(function ()
		player.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS).components.weapon.attackrange = 1
	end)

	pcall(function ()
		local lc = player.components.locomotor
		lc.runspeed = lc.runspeed + 8
		lc.walkspeed = lc.walkspeed + 8
	end)
end
local function recoverBlink(player)
	player.__HasBlink = false

	pcall(function ()
		player.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS).components.weapon.attackrange = 7
	end)

	pcall(function ()
		local lc = player.components.locomotor
		lc.runspeed = lc.runspeed - 8
		lc.walkspeed = lc.walkspeed - 8
	end)
end

-- 武器具备 blinking 属性时触发
-- 女武神和神话书说-孙悟空专属
-- 此处重写 Combat:StartAttack
AddPlayerPostInit(function(inst)
	if inst.components.combat == nil then
		return
	end
	if TheWorld.ismastersim and
		(inst.prefab == "wathgrithr" or inst.prefab == "monkey_king") then
		local old_start = inst.components.combat.StartAttack

		inst.components.combat.StartAttack = function(self)
			old_start(self)

			local forbidden = {
				"wall",
				"abigail",
				"fence",
				"chester",
				"glommer",
				"^bee$",
				"^beehive$"
			}

			if self.target and self.target.components.combat then
				local weapon = self:GetWeapon()
				if weapon and weapon.components.weapon and weapon.components.weapon.blinking then
					if blink(self.inst, self.target, weapon, 1.15) == true then
						-- 开始 CD
						removeBlink(self.inst)
						-- CD 恢复
						self.inst:DoTaskInTime(2.5, function ()
							recoverBlink(self.inst)
						end)
						local attackedUnits, tx, ty, tz = {}, self.target.Transform:GetWorldPosition()
						-- local sx, sy, sz = pl.Transform:GetWorldPosition()
						for index, localPrefab in ipairs(TheSim:FindEntities(tx, ty, tz, 14)) do
							if self.inst.components.combat:IsValidTarget(localPrefab) and
								localPrefab ~= self.target and
								localPrefab.components.combat and
								(function ()
									for _, fbd in ipairs(forbidden) do
										if string.match(localPrefab.prefab, fbd) ~= nil then return false end
									end
									return true
								end)() and
								-- string.match(v.prefab, "wall") == nil and
								(function ()
									for _, aUnit in ipairs(attackedUnits) do
										if aUnit == localPrefab then return false end
									end
									return true
								end)()
							then
								self.inst:DoTaskInTime(0.01 * (index - 1), function ()
									blink(self.inst, localPrefab, weapon, 0.85)
								end)
								-- blink(pl, v, weapon, 0.5)
								table.insert(attackedUnits, localPrefab)
							end
						end
						-- pl.Transform:SetPosition(sx, sy, sz)
					end
				end
			end
		end
	end
end)

AddPrefabPostInit("willow", function (inst)
	if TheWorld.ismastersim then
		-- 移除纵火者（烧家）特性
		-- inst:RemoveTag("pyromaniac")

		-- 添加内秉的伤害吸收
		inst.components.health:SetAbsorptionAmount(TUNING.WILLOW_ABSORPTION)
		-- 薇洛饥饿更慢
		inst.components.hunger.hungerrate = 0.89 * TUNING.WILSON_HUNGER_RATE
		-- 更加耐热
		inst.components.temperature:SetOverheatHurtRate(TUNING.WILSON_HEALTH / TUNING.WILLOW_OVERHEAT_KILL_TIME / 10)
	end
end)

AddPrefabPostInit("wathgrithr", function (inst)
	if TheWorld.ismastersim then

		if inst.components.combat then
			-- 女武神空手 2 倍伤害
			inst.components.combat.defaultdamage = TUNING.UNARMED_DAMAGE * 2
		end
		-- 女武神饥饿更快
		inst.components.hunger.hungerrate = 2.25 * TUNING.WILSON_HUNGER_RATE
	end
end)

AddPrefabPostInit("waxwell", function (inst)
	if TheWorld.ismastersim then
		inst.components.petleash:SetMaxPets(10)
		inst.components.sanity:SetMax(1000)

		inst.components.sanity.dapperness = TUNING.DAPPERNESS_LARGE * 2

		inst.components.hunger.hungerrate = 1.1 * TUNING.WILSON_HUNGER_RATE
	end
end)

AddPrefabPostInit("myth_yutu", function (inst)
	if TheWorld.ismastersim then
		inst:AddTag("fastbuilder")
		inst:AddTag("hungrybuilder")

		inst.components.inventory:GiveItem(DebugSpawn("halloweenpotion_health_large"))
		inst.components.inventory:GiveItem(DebugSpawn("halloweenpotion_sanity_large"))
	end
end)

AddPrefabPostInit("spear_wathgrithr", function (inst)
	if TheWorld.ismastersim then
		inst.components.weapon.blinking = true
	end
end)

AddPrefabPostInit("yt_daoyao", function (inst)
	if TheWorld.ismastersim then
		local w_w = inst.components.weapon
		w_w:SetRange(4, 6)
		w_w:SetProjectile("ice_projectile")

		if inst.components.tool == nil then
			inst:AddComponent("tool")
			inst.components.tool:SetAction(ACTIONS.CHOP, 8)
			inst.components.tool:SetAction(ACTIONS.DIG)
			inst.components.tool:SetAction(ACTIONS.MINE, 8)
		end

		if inst.components.waterproofer == nil then
			inst:AddComponent("waterproofer")
			inst.components.waterproofer:SetEffectiveness(0.5)
		end

		inst.components.equippable.walkspeedmult = 1.15
	end
end)

AddPrefabPostInit("mk_jgb", function (inst)
	if TheWorld.ismastersim then
		inst.components.weapon.blinking = true
		inst.components.weapon:SetRange(7, 1)
		inst.components.equippable.walkspeedmult = 1.15
	end
end)

AddPrefabPostInit("wathgrithrhat", function (inst)
	if TheWorld.ismastersim then
		if inst.components.waterproofer then
			-- 防水更多
			inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL * 2)
		end

		inst.components.equippable.walkspeedmult = 1.05
	end
end)

AddPrefabPostInit("armorruins", function (inst)
	if TheWorld.ismastersim then
		inst.components.equippable.walkspeedmult = 1.05
	end
end)

AddPrefabPostInit("ruinshat", function (inst)
	if TheWorld.ismastersim then
		inst.components.equippable.walkspeedmult = 1.05
	end
end)
