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
local __mmb = 150 * 0.7 -- multiplay modification base

local SPEED = {
	willow = {9, 6},
	waxwell = {11, 8},
	wendy = {10, 7},
	wathgrithr = {9, 5},
	webber = {10, 7},
	wx78 = {12, 11},
	wortox = {9, 5}
}

-- 海钓
-- 甩杆更远
TUNING.OCEAN_FISHING.MAX_CAST_DIST = 24
-- 钓鱼线更难被拉断
TUNING.OCEAN_FISHING.LINE_TENSION_HIGH = 0.97

-- 时间常量和速度修改
-- 烹饪基准速度
TUNING.BASE_COOK_TIME = 0.8
-- 鼹鼠帽
TUNING.MOLEHAT_PERISHTIME = total_day_time * 4.5

-- 生物生成时间
-- 龙蝇
TUNING.DRAGONFLY_RESPAWN_TIME = total_day_time * 15
-- 地下蛤蟆
TUNING.TOADSTOOL_RESPAWN_TIME = total_day_time * 8

-- 物品修改
-- 基础
TUNING.AXE_USES = 300
TUNING.PICKAXE_USES = 99
TUNING.MULTITOOL_AXE_PICKAXE_USES = 1600
-- 步行手杖
TUNING.CANE_SPEED_MULT = 1.44
-- 打火机
TUNING.LIGHTER_DAMAGE = 27
TUNING.LIGHTER_FUEL = 20000
-- 天气棒
TUNING.TORNADOSTAFF_USES = 40

-- 人物修改
-- 女武神
TUNING.WATHGRITHR_HEALTH = 300
TUNING.WATHGRITHR_HUNGER = 180
TUNING.WATHGRITHR_SANITY = 100
TUNING.WATHGRITHR_DAMAGE_MULT = 1.4
TUNING.WATHGRITHR_ABSORPTION = 0.18
-- 机器人
TUNING.WX78_MIN_HEALTH = 100
TUNING.WX78_MIN_HUNGER = 100
TUNING.WX78_MIN_SANITY = 100
TUNING.WX78_MAX_HEALTH = 1000
TUNING.WX78_MAX_HUNGER = 400
TUNING.WX78_MAX_SANITY = 600
-- 沃尔夫冈
TUNING.WOLFGANG_HUNGER = 300
TUNING.WOLFGANG_START_HUNGER = 200
TUNING.WOLFGANG_START_MIGHTY_THRESH = 225
TUNING.WOLFGANG_END_MIGHTY_THRESH = 220
TUNING.WOLFGANG_START_WIMPY_THRESH = 100
TUNING.WOLFGANG_END_WIMPY_THRESH = 105
TUNING.WOLFGANG_HUNGER_RATE_MULT_MIGHTY = 4
TUNING.WOLFGANG_HUNGER_RATE_MULT_NORMAL = 2
TUNING.WOLFGANG_HUNGER_RATE_MULT_WIMPY = 1.2
TUNING.WOLFGANG_HEALTH_MIGHTY = 450
TUNING.WOLFGANG_HEALTH_NORMAL = 250
TUNING.WOLFGANG_HEALTH_WIMPY = 150
TUNING.WOLFGANG_ATTACKMULT_MIGHTY_MAX = 3.6
TUNING.WOLFGANG_ATTACKMULT_MIGHTY_MIN = 1.5
TUNING.WOLFGANG_ATTACKMULT_NORMAL = 1
TUNING.WOLFGANG_ATTACKMULT_WIMPY_MAX = .75
TUNING.WOLFGANG_ATTACKMULT_WIMPY_MIN = .4
-- 薇洛
TUNING.WILLOW_ABSORPTION = 0.05
TUNING.MAX_XUSHI = 5
-- 温蒂
TUNING.WENDY_HEALTH = 180
TUNING.WENDY_HUNGER = 180
TUNING.WENDY_SANITY = 180
TUNING.WENDY_DAMAGE_MULT = 0.88
TUNING.ABIGAIL_SPEED = 9
TUNING.ABIGAIL_HEALTH = wilson_health * 8
TUNING.ABIGAIL_HEALTH_LEVEL1 = wilson_health * 2
TUNING.ABIGAIL_HEALTH_LEVEL2 = wilson_health * 4
TUNING.ABIGAIL_HEALTH_LEVEL3 = wilson_health * 8
TUNING.ABIGAIL_DAMAGE =
{
	day = 30,
	dusk = 50,
	night = 90,
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
TUNING.SHADOWWAXWELL_SPEED = 10
TUNING.SHADOWWAXWELL_DAMAGE = 80
TUNING.SHADOWWAXWELL_LIFE = 300
TUNING.SHADOWWAXWELL_ATTACK_PERIOD = 1
TUNING.SHADOWWAXWELL_HEALTH_REGEN = 10
TUNING.SHADOWWAXWELL_HEALTH_REGEN_PERIOD = 1
TUNING.SHADOWWAXWELL_TARGET_DIST = 17
-- 恶魔
TUNING.WORTOX_HEALTH = 400
TUNING.WORTOX_HUNGER = 350
TUNING.WORTOX_SANITY = 300
TUNING.WORTOX_SANITY_AURA_MULT = .8
TUNING.WORTOX_MAX_SOULS = 40
TUNING.WORTOX_FOOD_MULT = .8
TUNING.WORTOX_SOULEXTRACT_RANGE = 30 --die within this range of wortox to spawn soul
TUNING.WORTOX_SOULSTEALER_RANGE = 20 --souls fly towards wortox when he walks within this range
TUNING.WORTOX_SOULHEAL_RANGE = 16
-- 植物人
TUNING.WORMWOOD_HEALTH = 250
TUNING.WORMWOOD_HUNGER = 250
TUNING.WORMWOOD_SANITY = 200
-- 老奶奶
TUNING.WICKERBOTTOM_SANITY = 1000
TUNING.WICKERBOTTOM_STALE_FOOD_HUNGER = .333
TUNING.WICKERBOTTOM_SPOILED_FOOD_HUNGER = .167
TUNING.WICKERBOTTOM_STALE_FOOD_HEALTH = .25
TUNING.WICKERBOTTOM_SPOILED_FOOD_HEALTH = 0.1
-- 蜘蛛
TUNING.WEBBER_HEALTH = 350
TUNING.WEBBER_SANITY = 100
TUNING.WEBBER_HUNGER = 350
-- 厨师
TUNING.WARLY_HUNGER = 500
TUNING.WARLY_HUNGER_RATE_MODIFIER = 2
TUNING.WARLY_SAME_OLD_COOLDOWN = 480 * 3
-- TUNING.WARLY_SAME_OLD_MULTIPLIERS = { .9, .8, .65, .5, .3 }
-- 女工
-- (投石机)
TUNING.WINONA_CATAPULT_HEALTH = 10000
TUNING.WINONA_CATAPULT_HEALTH_REGEN_PERIOD = 1
TUNING.WINONA_CATAPULT_HEALTH_REGEN = 2
TUNING.WINONA_CATAPULT_DAMAGE = 120
TUNING.WINONA_CATAPULT_MIN_RANGE = 4
TUNING.WINONA_CATAPULT_MAX_RANGE = 40
TUNING.WINONA_CATAPULT_ATTACK_PERIOD = 1.5
TUNING.WINONA_CATAPULT_AOE_RADIUS = 3
-- (聚光灯)
TUNING.WINONA_SPOTLIGHT_RADIUS = 3.5
TUNING.WINONA_SPOTLIGHT_MIN_RANGE = 2
TUNING.WINONA_SPOTLIGHT_MAX_RANGE = 60
-- (发电机)
TUNING.WINONA_BATTERY_LOW_FUEL_RATE_MULT = .125 --changes max fuel to last 1 full day, while still only costing 2 nitre
TUNING.WINONA_BATTERY_HIGH_MAX_FUEL_TIME = 28800
TUNING.WINONA_BATTERY_MIN_LOAD = .1
-- 鱼人
TUNING.WURT_HEALTH = 250
TUNING.WURT_HUNGER = 300
TUNING.WURT_SANITY = 250

-- 武器
TUNING.BATBAT_DAMAGE = 56

TUNING.RUINS_BAT_DAMAGE = 78

TUNING.HAMBAT_DAMAGE = 98
TUNING.HAMBAT_MIN_DAMAGE_MODIFIER = .2

TUNING.PIPE_DART_DAMAGE = 150
TUNING.YELLOW_DART_DAMAGE = 250

TUNING.WATHGRITHR_SPEAR_DAMAGE = 46
TUNING.WATHGRITHR_SPEAR_USES = 600
-- 铠甲
TUNING.ARMOR_WATHGRITHRHAT = __mmb * 140
TUNING.ARMOR_WATHGRITHRHAT_ABSORPTION = 7 / 9

TUNING.ARMORGRASS = __mmb * 2.5
TUNING.ARMORWOOD = __mmb * 5
TUNING.ARMOR_FOOTBALLHAT = __mmb * 13
TUNING.ARMORMARBLE = __mmb * 16
TUNING.ARMORSNURTLESHELL = __mmb * 11
TUNING.ARMORMARBLE_SLOW = 0.9
TUNING.ARMORSLURPER_SLOW_HUNGER = 1 / 3
TUNING.ARMORRUINS = __mmb * 120
TUNING.ARMOR_RUINSHAT = __mmb * 100
TUNING.ARMORDRAGONFLY = __mmb * 40
TUNING.ARMOR_SLURTLEHAT = __mmb * 10
TUNING.ARMOR_SLURTLEHAT_ABSORPTION = 0.95
-- 伯尼熊
TUNING.BERNIE_BIG_HEALTH = 10000
TUNING.BERNIE_BIG_WALK_SPEED = 10
TUNING.BERNIE_BIG_RUN_SPEED = 12
TUNING.BERNIE_BIG_DAMAGE = 100
TUNING.BERNIE_BIG_ATTACK_PERIOD = 0.75
TUNING.BERNIE_BIG_ATTACK_RANGE = 4
TUNING.BERNIE_BIG_HIT_RANGE = 8
-- 切斯特
TUNING.CHESTER_HEALTH = 800
TUNING.CHESTER_RESPAWN_TIME = 240 -- total_day_time = 480
-- 陷阱
TUNING.TRAP_TEETH_DAMAGE = 110
TUNING.TRAP_TEETH_RADIUS = 2.25

-- 生物加强
-- 海星
TUNING.STARFISH_TRAP_DAMAGE = 220
-- 猪
TUNING.PIG_DAMAGE = 44
TUNING.PIG_HEALTH = 800
-- 疯猪
TUNING.WEREPIG_DAMAGE = 72
TUNING.WEREPIG_HEALTH = 1400
-- 猪猪守卫
TUNING.PIG_GUARD_DAMAGE = 88
TUNING.PIG_GUARD_HEALTH = 3000
-- 精英猪猪战士
TUNING.PIG_ELITE_FIGHTER_DAMAGE = 98
-- 海象
TUNING.WALRUS_DAMAGE = 45
TUNING.WALRUS_HEALTH = 1200
TUNING.WALRUS_ATTACK_PERIOD = 2.5
TUNING.WALRUS_ATTACK_DIST = 15
TUNING.WALRUS_DART_RANGE = 40
TUNING.WALRUS_MELEE_RANGE = 6
TUNING.WALRUS_TARGET_DIST = 10
TUNING.WALRUS_LOSETARGET_DIST = 45
TUNING.LITTLE_WALRUS_DAMAGE = 44
TUNING.LITTLE_WALRUS_HEALTH = 200
-- 高鸟
TUNING.TALLBIRD_HEALTH = 12500
TUNING.TALLBIRD_DAMAGE = 300
TUNING.TALLBIRD_ATTACK_PERIOD = 1.6
TUNING.TEENBIRD_HEALTH = 2000
TUNING.TEENBIRD_DAMAGE = 75
TUNING.SMALLBIRD_HEALTH = 1000
TUNING.SMALLBIRD_DAMAGE = 33
-- (鸟蛋)
TUNING.TALLBIRDEGG_HEALTH = 75
TUNING.TALLBIRDEGG_HUNGER = 75
TUNING.TALLBIRDEGG_COOKED_HEALTH = 200
TUNING.TALLBIRDEGG_COOKED_HUNGER = 300
-- 青蛙
TUNING.FROG_HEALTH = 500
TUNING.FROG_DAMAGE = 30
-- 企鹅
TUNING.PENGUIN_HEALTH = 150
TUNING.PENGUIN_DAMAGE = 66
-- 大象
TUNING.KOALEFANT_HEALTH = 2000
TUNING.KOALEFANT_DAMAGE = 100
-- 钢羊
TUNING.SPAT_HEALTH = 2000
TUNING.SPAT_PHLEGM_DAMAGE = 40
TUNING.SPAT_PHLEGM_ATTACKRANGE = 16
TUNING.SPAT_PHLEGM_RADIUS = 8
TUNING.SPAT_MELEE_DAMAGE = 100
-- 各种齿轮怪
TUNING.BISHOP_DAMAGE = 95
TUNING.BISHOP_HEALTH = 2000
TUNING.KNIGHT_DAMAGE = 75
TUNING.KNIGHT_HEALTH = 3000
TUNING.ROOK_DAMAGE = 70
TUNING.ROOK_HEALTH = 4000
TUNING.MINOTAUR_DAMAGE = 150
TUNING.MINOTAUR_HEALTH = 20000
-- 蜗牛
TUNING.SLURTLE_DAMAGE = 50
TUNING.SLURTLE_HEALTH = 1000
TUNING.SLURTLE_SHELL_ABSORB = 0.999
TUNING.SLURTLE_EXPLODE_DAMAGE = 3000
TUNING.SLURTLESLIME_EXPLODE_DAMAGE = 500
TUNING.SNURTLE_EXPLODE_DAMAGE = 3000
TUNING.SNURTLE_SHELL_ABSORB = 0.9888
-- 蚊子
TUNING.MOSQUITO_DAMAGE = 10
TUNING.MOSQUITO_HEALTH = 200
-- 洗脑怪
TUNING.SLURPER_HEALTH = 600
TUNING.SLURPER_DAMAGE = 60
-- 闪电羊
TUNING.LIGHTNING_GOAT_DAMAGE = 95
TUNING.LIGHTNING_GOAT_HEALTH = 800
-- 鹿
TUNING.DEER_DAMAGE = 35
TUNING.DEER_HEALTH = 900
TUNING.DEER_GEMMED_DAMAGE = 120
TUNING.DEER_GEMMED_HEALTH = 3000
TUNING.DEER_GEMMED_MAX_SPELLS = 8
TUNING.DEER_ICE_CAST_CD = 8
TUNING.DEER_FIRE_CAST_CD = 6
-- 触手
TUNING.TENTACLE_HEALTH = 1200
TUNING.TENTACLE_DAMAGE = 88
-- 蝙蝠
TUNING.BAT_DAMAGE = 40
TUNING.BAT_HEALTH = 400
-- 蜘蛛
TUNING.SPIDER_HEALTH = 200
TUNING.SPIDER_DAMAGE = 30
TUNING.SPIDER_WARRIOR_HEALTH = 600
TUNING.SPIDER_WARRIOR_DAMAGE = 60
TUNING.SPIDER_HIDER_HEALTH = 300
TUNING.SPIDER_HIDER_DAMAGE = 45
TUNING.SPIDER_MOON_HEALTH = 500
TUNING.SPIDER_MOON_DAMAGE = 40
TUNING.SPIDERQUEEN_WALKSPEED = 2.25
TUNING.SPIDERQUEEN_HEALTH = 8000
TUNING.SPIDERQUEEN_DAMAGE = 195
TUNING.SPIDERQUEEN_FOLLOWERS = 32
TUNING.SPIDERQUEEN_GIVEBIRTHPERIOD = 7.5
-- 地下蠕虫
TUNING.WORM_HEALTH = 1200
TUNING.WORM_ATTACK_PERIOD = 1.5
-- 各种狗
TUNING.HOUND_HEALTH = 300
TUNING.HOUND_DAMAGE = 30
TUNING.FIREHOUND_HEALTH = 100
TUNING.FIREHOUND_DAMAGE = 75
TUNING.ICEHOUND_HEALTH = 500
TUNING.ICEHOUND_DAMAGE = 55
TUNING.MOONHOUND_HEALTH = 800
TUNING.MOONHOUND_DAMAGE = 70
TUNING.MUTATEDHOUND_HEALTH = 100
TUNING.MUTATEDHOUND_DAMAGE = 25
-- 坎普斯
TUNING.KRAMPUS_HEALTH = 300
-- 石虾
TUNING.ROCKY_DAMAGE = 300
TUNING.ROCKY_HEALTH = 4000
-- 猴子
TUNING.MONKEY_RANGED_RANGE = 12
-- 大鸟
TUNING.BUZZARD_DAMAGE = 30
TUNING.BUZZARD_WALK_SPEED = 6
TUNING.BUZZARD_RUN_SPEED = 12
TUNING.BUZZARD_HEALTH = 400
-- 牛
TUNING.BEEFALO_HEALTH = 2000
TUNING.BEEFALO_HEALTH_REGEN = 10
TUNING.BEEFALO_HUNGER = 800
TUNING.BEEFALO_DAMAGE.DEFAULT = 66
TUNING.BEEFALO_DAMAGE.RIDER = 120
TUNING.BEEFALO_DAMAGE.ORNERY = 100
TUNING.BEEFALO_DAMAGE.PUDGY = 30
TUNING.BEEFALO_RUN_SPEED.RIDER = 16
TUNING.BABYBEEFALO_HEALTH = 1000
-- 蜜蜂
TUNING.BEE_HEALTH = 300
TUNING.BEE_DAMAGE = 30

-- Boss
-- 座狼
TUNING.WARG_HEALTH = 6000
-- 钢羊
TUNING.SPAT_HEALTH = 8000
-- 克劳斯
TUNING.KLAUS_HEALTH = 50000
TUNING.KLAUS_DAMAGE = 155
-- 犀牛
TUNING.MINOTAUR_DAMAGE = 270
TUNING.MINOTAUR_HEALTH = 50000
-- 树人
TUNING.LEIF_HEALTH = 5000
TUNING.LEIF_DAMAGE = 200
TUNING.LEIF_FLAMMABILITY = .111
-- 巨鹿
TUNING.DEERCLOPS_HEALTH = 12000
TUNING.DEERCLOPS_DAMAGE = 275
-- 鹅
TUNING.MOOSE_HEALTH = 25000
TUNING.MOOSE_DAMAGE = 220
TUNING.MOSSLING_HEALTH = 600
TUNING.MOSSLING_DAMAGE = 75
-- 熊獾
TUNING.BEARGER_HEALTH = 30000
TUNING.BEARGER_DAMAGE = 355
-- 蜜蜂女王
TUNING.BEEQUEEN_HEALTH = 35000
TUNING.BEEQUEEN_DAMAGE = 335
-- 蜂巢卫士
TUNING.BEEGUARD_HEALTH = 400
TUNING.BEEGUARD_DAMAGE = 35
-- 龙蝇
TUNING.DRAGONFLY_HEALTH = 100000
TUNING.DRAGONFLY_DAMAGE = 445
TUNING.DRAGONFLY_FIRE_DAMAGE = 625
TUNING.DRAGONFLY_SPEED = 5 * 0.7
TUNING.DRAGONFLY_FIRE_ATTACK_PERIOD = 3 * 0.7
TUNING.DRAGONFLY_SPEED = 7
-- 蛤蟆
TUNING.TOADSTOOL_HEALTH = 100000
-- 复活的骨架（远古编织者）
TUNING.STALKER_ATRIUM_HEALTH = 32000
TUNING.STALKER_ATRIUM_PHASE2_HEALTH = 20000
-- 信天翁
TUNING.MINOTAUR_HEALTH = 12000

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

	inst.components.lootdropper:AddChanceLoot("amulet", 0.8)
	inst.components.lootdropper:AddChanceLoot("shroom_skin", 0.5)

	inst.components.lootdropper:AddChanceLoot("yellowstaff", 0.08)
	inst.components.lootdropper:AddChanceLoot("greenstaff", 0.1)
	inst.components.lootdropper:AddChanceLoot("orangestaff", 0.03)

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
-- 武器具备 blinking 属性时触发
-- 女武神专属
-- 此处重写 Combat:StartAttack
AddPlayerPostInit(function(inst)
	if inst.components.combat == nil then
		return
	end
	if TheWorld.ismastersim and inst.prefab == "wathgrithr" then
		local old_start = inst.components.combat.StartAttack

		inst.components.combat.StartAttack = function(self)
			old_start(self)

			if self.target and self.target.components.combat then
				local weapon = self:GetWeapon()
				if weapon and weapon.components.weapon and weapon.components.weapon.blinking then
					local distance = math.sqrt(self.inst:GetDistanceSqToInst(self.target))
					local hitrange = weapon.components.weapon.hitrange
					if distance > hitrange then
							local fx, fy, fz = self.target.Transform:GetWorldPosition()
							local sx, sy, sz = self.inst.Transform:GetWorldPosition()
							local q = (distance - hitrange + 0.2) / distance
							local dx = sx - q * (sx - fx)
							local dy = sy - q * (sy - fy)
							local dz = sz - q * (sz - fz)
							-- 不会突进到水中
							if TheWorld.Map:IsOceanTileAtPoint(dx, dy, dz) then
								return
							end
							-- 生成烟雾
							local smoke1 = SpawnPrefab("maxwell_smoke")
							smoke1.Transform:SetPosition(sx, sy, sz)
							local smoke2 = SpawnPrefab("maxwell_smoke")
							smoke2.Transform:SetPosition(dx, dy, dz)
							inst.Transform:SetPosition(dx, dy, dz)
							-- 突进瞬间造成伤害
							local blinking_damage = weapon.components.weapon.damage * (weapon.components.weapon.blinking_damage_multiplier or 0.75)
							self.target.components.combat:GetAttacked(self.inst, blinking_damage, weapon)
							-- 对小范围的额外 AOE 伤害
							if weapon.components.weapon.blinking_with_aoe then
								local ents = TheSim:FindEntities(dx, dy, dz, (weapon.components.weapon.blinking_aoe_radius or 2))
								for k, v in pairs(ents) do
									if inst.components.combat:IsValidTarget(v)
										 and v ~= self.target and v.components.combat
										 -- 不会对墙体造成 AOE
										 and string.find(v.prefab, "wall") == nil then
										-- print("blinking aoe to ", v)
										v.components.combat:GetAttacked(inst, weapon.components.weapon.blinking_aoe_damage or (blinking_damage * 0.5), weapon)
									end
								end
							end
					end
				end
			end
		end
	end
end)

local function custom_willow_sanityfn(inst)
	local delta = inst.components.temperature:IsFreezing() and -TUNING.SANITYAURA_MED or 0
	local x, y, z = inst.Transform:GetWorldPosition()
	local max_rad = 10
	local ents = TheSim:FindEntities(x, y, z, max_rad, { "fire" })
	for i, v in ipairs(ents) do
			if v.components.burnable ~= nil and v.components.burnable:IsBurning() then
					local rad = v.components.burnable:GetLargestLightRadius() or 1
					local sz = TUNING.SANITYAURA_LARGE * math.min(max_rad, rad) / max_rad
					local distsq = inst:GetDistanceSqToInst(v) - 9
					-- shift the value so that a distance of 3 is the minimum
					delta = delta + sz / math.max(1, distsq)
			end
	end
	return delta * 1.2
end

AddPrefabPostInit("willow", function (inst)
	if TheWorld.ismastersim then
		-- 移除纵火者（烧家）特性
		-- inst:RemoveTag("pyromaniac")

		-- 添加内秉的伤害吸收
		inst.components.health:SetAbsorptionAmount(TUNING.WILLOW_ABSORPTION)

		inst.components.sanity.custom_rate_fn = custom_willow_sanityfn
		-- 薇洛饥饿更慢
		inst.components.hunger.hungerrate = 0.89 * TUNING.WILSON_HUNGER_RATE

		inst.components.locomotor.runspeed = SPEED.willow[0]
		inst.components.locomotor.walkspeed = SPEED.willow[1]
		-- 更加耐热
		inst.components.temperature:SetOverheatHurtRate(TUNING.WILSON_HEALTH / TUNING.WILLOW_OVERHEAT_KILL_TIME / 10)
	end
end)

local variations = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

local function DoSpikeAttack(inst, centerTarget)
	local x, y, z = centerTarget.Transform:GetWorldPosition()
	local inital_r = 1
	x = GetRandomWithVariance(x, inital_r)
	z = GetRandomWithVariance(z, inital_r)

	shuffleArray(variations)

	local num = math.random(5, 10)
	local dtheta = PI * 2 / num
	local thetaoffset = math.random() * PI * 2
	local delaytoggle = 0

	local damage = 56
	if inst.components.combat then
		local weapon = inst.components.combat:GetWeapon()
		damage = weapon.components.weapon.damage + (inst.components.combat.defaultdamage or 0)
	end

	for i = 1, num do
		local r = 1.1 + math.random() * 1.75
		local theta = i * dtheta + math.random() * dtheta * 0.8 + dtheta * 0.2
			local x1 = x + r * math.cos(theta)
			local z1 = z + r * math.sin(theta)
			if TheWorld.Map:IsVisualGroundAtPoint(x1, 0, z1) and not TheWorld.Map:IsPointNearHole(Vector3(x1, 0, z1)) then
				local spike = SpawnPrefab("moonspider_spike")
				spike.spider_leader_isplayer = true
				spike.components.combat:SetDefaultDamage(damage / 2)
				spike.Transform:SetPosition(x1, 0, z1)
				-- spike:SetOwner(inst)

				if variations[i + 1] ~= 1 then
					spike.AnimState:OverrideSymbol("spike01", "spider_spike", "spike0"..tostring(variations[i + 1]))
				end
			end
	end
end

local function custom_lighter_onattack(weapon, attacker, target)
	attacker.SoundEmitter:PlaySound("dontstarve/wilson/fireball_explo")

	-- 只有薇洛可以触发打火机的蓄势
	if target ~= nil and target:IsValid() and attacker.prefab == "willow" then
		-- 蓄势
		weapon.components.weapon.updateXuShi(weapon.components.weapon, attacker)

		if target.components.burnable ~= nil
			 and math.random() < TUNING.LIGHTER_ATTACK_IGNITE_PERCENT * target.components.burnable.flammability then
			-- target.components.burnable:Ignite(nil, attacker) -- 原生的点燃已被移除
			target.components.combat:GetAttacked(attacker, weapon.components.weapon.damage * 1.25, weapon)
			-- attacker.components.sanity:DoDelta(math.random(2, 6))
			-- attacker.components.health:DoDelta(math.random(1, 3))
		end

		-- 33.3% 几率触发月光地刺
		if math.random() < 1 / 3 then
			DoSpikeAttack(attacker, target)
		end
	end
end

AddPrefabPostInit("lighter", function (inst)
	if TheWorld.ismastersim then

		inst.components.weapon:SetOnAttack(custom_lighter_onattack)
		inst.components.weapon:SetRange(5, 7)
		inst.components.weapon:SetProjectile("fire_projectile")
		inst.components.weapon.xushi = 0
		-- 蓄势 18% @ x5
		inst.components.weapon.updateXuShi = (function ()
			local recoverXuShi = math.floor(0.5 + TUNING.MAX_XUSHI * 0.8)
			local timmerInst = nil
			return function (_inst, attacker)

				if (_inst.xushi < TUNING.MAX_XUSHI) then
					_inst.xushi = _inst.xushi + 1
					local newDamage = math.floor(0.5 + TUNING.LIGHTER_DAMAGE * math.pow(1.18, _inst.xushi))
					_inst:SetDamage(newDamage)
					attacker.components.talker:Say("蓄势 [ " .. _inst.xushi .. " ] 武器伤害: " .. newDamage)
				elseif (_inst.xushi == TUNING.MAX_XUSHI) then
					attacker.components.talker:Say("蓄势 [ " .. _inst.xushi .. " ] 武器伤害: " .. _inst.damage)
				end

				if timmerInst ~= nil then timmerInst:Cancel() end

				timmerInst = inst:DoTaskInTime(5, function ()
					_inst.xushi = 0
					_inst:SetDamage(TUNING.LIGHTER_DAMAGE * 1)
					attacker.components.talker:Say("蓄势归零")
				end)

				-- 蓄势层数 > 80% 最大层数时 恢复精神和生命值
				if _inst.xushi >= recoverXuShi then
					attacker.components.sanity:DoDelta(math.random(0, 1))
					attacker.components.health:DoDelta(math.random(1, 3))
				end
			end
		end)()

		inst.components.equippable.walkspeedmult = 1.2
		inst.components.equippable.dapperness = TUNING.DAPPERNESS_LARGE * 1
	end
end)

AddPrefabPostInit("wathgrithr", function (inst)
	if TheWorld.ismastersim then

		if inst.components.combat then
			-- 女武神空手 2 倍伤害
			inst.components.combat.defaultdamage = TUNING.UNARMED_DAMAGE * 2
		end

		inst.components.locomotor.runspeed = SPEED.wathgrithr[0]
		inst.components.locomotor.walkspeed = SPEED.wathgrithr[1]
		-- 女武神饥饿更快
		inst.components.hunger.hungerrate = 2.25 * TUNING.WILSON_HUNGER_RATE
	end
end)

AddPrefabPostInit("waxwell", function (inst)
	if TheWorld.ismastersim then
		inst.components.petleash:SetMaxPets(8)
		inst.components.sanity:SetMax(1000)

		inst.components.sanity.dapperness = TUNING.DAPPERNESS_LARGE * 2

		inst.components.locomotor.runspeed = SPEED.waxwell[0]
		inst.components.locomotor.walkspeed = SPEED.waxwell[0]
		inst.components.hunger.hungerrate = 1.1 * TUNING.WILSON_HUNGER_RATE
	end
end)

AddPrefabPostInit("wendy", function (inst)
	if TheWorld.ismastersim then
		inst.components.locomotor.runspeed = SPEED.wendy[0]
		inst.components.locomotor.walkspeed = SPEED.wendy[1]
	end
end)

AddPrefabPostInit("webber", function (inst)
	if TheWorld.ismastersim then
		inst.components.locomotor.runspeed = SPEED.webber[0]
		inst.components.locomotor.walkspeed = SPEED.webber[1]
	end
end)

AddPrefabPostInit("wx78", function (inst)
	if TheWorld.ismastersim then
		inst.components.locomotor.runspeed = SPEED.wx78[0]
		inst.components.locomotor.walkspeed = SPEED.wx78[1]
	end
end)

AddPrefabPostInit("wortox", function (inst)
	if TheWorld.ismastersim then
		inst.components.locomotor.runspeed = SPEED.wortox[0]
		inst.components.locomotor.walkspeed = SPEED.wortox[1]
	end
end)

AddPrefabPostInit("spear_wathgrithr", function (inst)
	if TheWorld.ismastersim then

		inst.components.weapon.blinking = true
		inst.components.weapon.blinking_damage_multiplier = 0.5
		inst.components.weapon.blinking_with_aoe = false
		-- inst.components.weapon.blinking_aoe_radius = 4
		-- inst.components.weapon.blinking_aoe_damage = TUNING.WATHGRITHR_SPEAR_DAMAGE * 1.8

		local oldOnEquip = inst.components.equippable.onequipfn
		local oldOnUnEquipfn = inst.components.equippable.onunequipfn

		inst.components.equippable:SetOnEquip(function (_inst, owner)
			oldOnEquip(_inst, owner)
			if owner.prefab == "wathgrithr" then
				-- owner.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD * 0.7)
				-- inst.components.weapon:SetDamage(TUNING.WATHGRITHR_SPEAR_DAMAGE * 1.46)
				owner.components.combat.damagemultiplier = TUNING.WATHGRITHR_DAMAGE_MULT * 1.16
				inst.components.weapon:SetRange(7, 2)
				owner.components.talker:Say("装备专属长矛，伤害提高 16%")
			end
		end)
		inst.components.equippable:SetOnUnequip(function (_inst, owner)
			oldOnUnEquipfn(_inst, owner)
			if owner.prefab == "wathgrithr" then
				-- owner.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD)
				-- inst.components.weapon:SetDamage(TUNING.WATHGRITHR_SPEAR_DAMAGE)
				owner.components.combat.damagemultiplier = TUNING.WATHGRITHR_DAMAGE_MULT
				inst.components.weapon:SetRange(nil, nil)
				owner.components.talker:Say("卸下专属长矛，伤害减少 16%")
			end
		end)

		inst.components.weapon:SetOnAttack(function (weapon, attacker, target)
			if attacker.prefab == "wathgrithr"
				 and target
				 and target.components.combat
				 and target.components.combat.defaultdamage
				 and target.components.health
				 and target.components.health.maxhealth > 0 then

				local extraDamageMutl = 0

				-- 生命值越低，造成越多伤害
				if attacker.components.health:GetPercent() < 0.1 then
					extraDamageMutl = 1
				elseif attacker.components.health:GetPercent() < 0.3 then
					extraDamageMutl = 0.5
				elseif attacker.components.health:GetPercent() < 0.5 then
					extraDamageMutl = 0.2
				end

				if extraDamageMutl > 0 then
					target.components.combat:GetAttacked(attacker, weapon.components.weapon.damage * extraDamageMutl, weapon)
				end

				-- 目标强度积分
				local targetPowerScore =
					math.min(200, target.components.combat.defaultdamage) + math.min(30000, target.components.health.maxhealth) / 150

				local healthStealMult = 0.25 -- 0.25%
				-- max 200 + (30000)200 = 400

				-- 生命低于 30% 吸血增加
				if attacker.components.health:GetPercent() < 0.3 then
					healthStealMult = healthStealMult + 1 -- + 1%
				end
				-- 史诗生物额外吸血
				if target:HasTag("epic") then
					healthStealMult = healthStealMult * 1.5
				end

				healthStealMult = healthStealMult / 100

				local healthSteal = math.max(1, targetPowerScore * healthStealMult)
				local sanitySteal = math.min(1, targetPowerScore * healthStealMult / 2)

				attacker.components.health:DoDelta(healthSteal)
				attacker.components.sanity:DoDelta(sanitySteal)
				attacker.components.hunger:DoDelta(healthSteal * -0.5)
			end
		end)

		-- 多用工具
		inst:AddComponent("tool")
		inst.components.tool:SetAction(ACTIONS.CHOP, 8)

		inst.components.finiteuses:SetConsumption(ACTIONS.CHOP, 1)

		inst.components.equippable.walkspeedmult = 1.05
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

AddPrefabPostInit("hambat", function (inst)
	if TheWorld.ismastersim then

		-- 为火腿棒添加范围攻击
		local old_onattack_fn = inst.components.weapon.onattack
		inst.components.weapon.onattack = function(weapon, attacker, target)
			old_onattack_fn(weapon, attacker, target)

			if target and attacker.components.combat:IsValidTarget(target)
			and (attacker.prefab == "wolfgang" or attacker.prefab == "wathgrithr") then
				local x, y, z = target.Transform:GetWorldPosition()
				local ents = TheSim:FindEntities(x, y, z, 3)
					for k, v in pairs(ents) do
						if attacker.components.combat:IsValidTarget(v)
								and v ~= target and v.components.combat
								-- 不会对墙体造成 AOE
								and string.find(v.prefab, "wall") == nil then
							v.components.combat:GetAttacked(attacker, attacker.components.combat:CalcDamage(v, weapon, 0.5), weapon)
						end
					end
			end
		end

		inst.components.equippable.walkspeedmult = 1.05
	end
end)
