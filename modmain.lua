local TUNING = GLOBAL.TUNING
local ACTIONS = GLOBAL.ACTIONS
local PI = GLOBAL.PI
local GetRandomWithVariance = GLOBAL.GetRandomWithVariance
local TheSim = GLOBAL.TheSim
local SpawnPrefab = GLOBAL.SpawnPrefab
local Vector3 = GLOBAL.Vector3
local shuffleArray = GLOBAL.shuffleArray

GLOBAL.c_dir = function (value, desciption, nesting)
  if type(nesting) ~= "number" then
    nesting = 4
  end

  local lookupTable = {}
  local result = {}

  local function _v(v)
    if type(v) == "string" then
      v = '"' .. v .. '"'
    end
    return tostring(v)
  end

  -- local traceback = string.split(debug.traceback("", 2), "\n")
  -- print("dump from: " .. string.trim(traceback[3]))

  local function _dump(value, desciption, indent, nest, keylen)
    desciption = desciption or "<var>"
    local spc = ""
    if type(keylen) == "number" then
      spc = string.rep(" ", keylen - string.len(_v(desciption)))
    end
    if type(value) ~= "table" then
      result[#result + 1] = string.format("%s%s%s = %s", indent, _v(desciption), spc, _v(value))
    elseif lookupTable[value] then
      result[#result + 1] = string.format("%s%s%s = *REF*", indent, desciption, spc)
    else
      lookupTable[value] = true
      if nest > nesting then
        result[#result + 1] = string.format("%s%s = *MAX NESTING*", indent, desciption)
      else
        result[#result + 1] = string.format("%s%s = {", indent, _v(desciption))
        local indent2 = indent .. "    "
        local keys = {}
        local keylen = 0
        local values = {}
        for k, v in pairs(value) do
          keys[#keys + 1] = k
          local vk = _v(k)
          local vkl = string.len(vk)
          if vkl > keylen then
            keylen = vkl
          end
          values[k] = v
        end
        table.sort(
          keys,
          function(a, b)
            if type(a) == "number" and type(b) == "number" then
              return a < b
            else
              return tostring(a) < tostring(b)
            end
          end
        )
        for i, k in ipairs(keys) do
          _dump(values[k], k, indent2, nest + 1, keylen)
        end
        result[#result + 1] = string.format("%s}", indent)
      end
    end
	end

  _dump(value, desciption, "- ", 1)

  for i, line in ipairs(result) do
    print(line)
	end

end

-- 海钓
-- 甩杆更远
TUNING.OCEAN_FISHING.MAX_CAST_DIST = 24
-- 钓鱼线更难被拉断
TUNING.OCEAN_FISHING.LINE_TENSION_HIGH = 0.97

-- 时间常量和速度修改
-- 烧饭基准速度
TUNING.BASE_COOK_TIME = 0.8
-- 鼹鼠帽
TUNING.MOLEHAT_PERISHTIME = 480 * 4.5

-- 生物生成时间
-- 龙蝇
TUNING.DRAGONFLY_RESPAWN_TIME = 480 * 3
-- 地下蛤蟆
TUNING.TOADSTOOL_RESPAWN_TIME = 480 * 3

-- 物品修改
-- 火腿棒
TUNING.HAMBAT_DAMAGE = 98
TUNING.HAMBAT_MIN_DAMAGE_MODIFIER = .4
-- 步行手杖
TUNING.CANE_SPEED_MULT = 1.44
-- 打火机
TUNING.LIGHTER_DAMAGE = 27
TUNING.LIGHTER_FUEL = 20000
-- 天气棒
TUNING.TORNADOSTAFF_USES = 40
-- 女武神
TUNING.WATHGRITHR_HEALTH = 300
TUNING.WATHGRITHR_HUNGER = 180
TUNING.WATHGRITHR_SANITY = 100
TUNING.WATHGRITHR_ABSORPTION = 0.18
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
TUNING.MAX_XUSHI = 15
-- 女武神 长矛/头盔
TUNING.WATHGRITHR_SPEAR_DAMAGE = 46
TUNING.WATHGRITHR_SPEAR_USES = 600

TUNING.ARMOR_WATHGRITHRHAT = 12600
TUNING.ARMOR_WATHGRITHRHAT_ABSORPTION = 0.85
-- 远古铠甲
TUNING.ARMORRUINS = 12600
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

-- 怪物加强
-- 海星
TUNING.STARFISH_TRAP_DAMAGE = 180
-- 猪
TUNING.PIG_DAMAGE = 44
TUNING.PIG_HEALTH = 500
-- 疯猪
TUNING.WEREPIG_DAMAGE = 72
TUNING.WEREPIG_HEALTH = 850
-- 猪猪守卫
TUNING.PIG_GUARD_DAMAGE = 88
TUNING.PIG_GUARD_HEALTH = 1000
-- 精英猪猪战士
TUNING.PIG_ELITE_FIGHTER_DAMAGE = 98
-- 海象
TUNING.WALRUS_DAMAGE = 45
TUNING.WALRUS_HEALTH = 1000
-- 高鸟
TUNING.TALLBIRD_HEALTH = 1600
-- 企鹅
-- TUNING.PENGUIN_HEALTH = 250
-- 大象
TUNING.KOALEFANT_HEALTH = 2000
TUNING.KOALEFANT_DAMAGE = 75
-- 各种齿轮怪
TUNING.BISHOP_HEALTH = 300 * 5
TUNING.KNIGHT_DAMAGE = 75
TUNING.KNIGHT_HEALTH = 300 * 5
TUNING.ROOK_DAMAGE = 70
TUNING.ROOK_HEALTH = 300 * 5
TUNING.MINOTAUR_DAMAGE = 150
TUNING.MINOTAUR_HEALTH = 2500 * 8
-- 蜗牛
-- TUNING.SLURTLE_HEALTH = 2000
-- 闪电羊
-- TUNING.LIGHTNING_GOAT_DAMAGE = 35
-- TUNING.LIGHTNING_GOAT_HEALTH = 350 * 4
-- 鹿
-- TUNING.DEER_DAMAGE = 35
-- TUNING.DEER_HEALTH = 450 * 2
-- TUNING.DEER_GEMMED_DAMAGE = 60
-- TUNING.DEER_GEMMED_HEALTH = 2500
-- 触手
TUNING.TENTACLE_HEALTH = 1200
TUNING.TENTACLE_DAMAGE = 88
-- 蜘蛛
TUNING.SPIDER_HEALTH = 150
TUNING.SPIDER_DAMAGE = 30
TUNING.SPIDER_WARRIOR_HEALTH = 400
TUNING.SPIDER_WARRIOR_DAMAGE = 60
TUNING.SPIDER_HIDER_HEALTH = 300
TUNING.SPIDER_HIDER_DAMAGE = 45
TUNING.SPIDER_MOON_HEALTH = 500
TUNING.SPIDER_MOON_DAMAGE = 40
TUNING.SPIDERQUEEN_HEALTH = 5000
TUNING.SPIDERQUEEN_DAMAGE = 195
-- 地下蠕虫
TUNING.WORM_HEALTH = 1200
-- 各种狗
-- TUNING.HOUND_HEALTH = 300
-- TUNING.HOUND_DAMAGE = 30
-- TUNING.FIREHOUND_HEALTH = 80
-- TUNING.FIREHOUND_DAMAGE = 20
-- TUNING.ICEHOUND_HEALTH = 400
-- TUNING.ICEHOUND_DAMAGE = 40
-- TUNING.MOONHOUND_HEALTH = 250
-- TUNING.MOONHOUND_DAMAGE = 20
-- TUNING.MUTATEDHOUND_HEALTH = 100
-- TUNING.MUTATEDHOUND_DAMAGE = 25
-- 坎普斯
TUNING.KRAMPUS_HEALTH = 500
-- 石虾
TUNING.ROCKY_DAMAGE = 100
TUNING.ROCKY_HEALTH = 6000

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
TUNING.MINOTAUR_HEALTH = 2500 * 12
-- 树人
TUNING.LEIF_HEALTH = 5000
TUNING.LEIF_DAMAGE = 200
-- 巨鹿
TUNING.DEERCLOPS_HEALTH = 12000
TUNING.DEERCLOPS_DAMAGE = 275
-- 鹅
TUNING.MOOSE_HEALTH = 25000
TUNING.MOOSE_DAMAGE = 220
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
-- 复活的骨架（远古编织者）
TUNING.STALKER_ATRIUM_HEALTH = 32000
TUNING.STALKER_ATRIUM_PHASE2_HEALTH = 20000
-- 信天翁
TUNING.MINOTAUR_HEALTH = 12000

-- 史诗 Boss 额外掉落
function ExtraLootForEpicBosses(inst)
	if inst.components.lootdropper == nil then return end

	for k = 1, 10 do
		inst.components.lootdropper:AddChanceLoot("meat", 0.4)
	end

	for k = 1, 3 do
		inst.components.lootdropper:AddChanceLoot("redgem", 0.2)
	end
	for k = 1, 3 do
		inst.components.lootdropper:AddChanceLoot("bluegem", 0.2)
	end
	for k = 1, 3 do
		inst.components.lootdropper:AddChanceLoot("yellowgem", 0.1)
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
	if GLOBAL.TheWorld.ismastersim and inst.prefab == "wathgrithr" then
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
							if GLOBAL.TheWorld.Map:IsOceanTileAtPoint(dx, dy, dz) then
								return
							end
							-- 生成烟雾
							local smoke1 = SpawnPrefab("maxwell_smoke")
							smoke1.Transform:SetPosition(sx, sy, sz)
							local smoke2 = SpawnPrefab("maxwell_smoke")
							smoke2.Transform:SetPosition(dx, dy, dz)
							inst.Transform:SetPosition(dx, dy, dz)
							-- 突进瞬间造成伤害
							local blinking_damage = weapon.components.weapon.damage * (weapon.components.weapon.blinking_damage_multiplier or 1.75)
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
	if GLOBAL.TheWorld.ismastersim then
		-- 移除纵火者（烧家）特性
		-- inst:RemoveTag("pyromaniac")

		-- 添加内秉的伤害吸收
		inst.components.health:SetAbsorptionAmount(TUNING.WILLOW_ABSORPTION)

		inst.components.sanity.custom_rate_fn = custom_willow_sanityfn
		-- 薇洛饥饿更慢
		inst.components.hunger.hungerrate = 0.89 * TUNING.WILSON_HUNGER_RATE

		inst.components.locomotor.runspeed = 12
		inst.components.locomotor.walkspeed = 7
		-- 更加耐热
		inst.components.temperature:SetOverheatHurtRate(TUNING.WILSON_HEALTH / TUNING.WILLOW_OVERHEAT_KILL_TIME / 10)
	end
end)

local variations = {1, 2, 3, 4, 5, 6, 7}

local function DoSpikeAttack(inst, centerTarget)
	local x, y, z = centerTarget.Transform:GetWorldPosition()
	local inital_r = 1
	x = GetRandomWithVariance(x, inital_r)
	z = GetRandomWithVariance(z, inital_r)

	shuffleArray(variations)

	local num = math.random(2, 7)
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
			if GLOBAL.TheWorld.Map:IsVisualGroundAtPoint(x1, 0, z1) and not GLOBAL.TheWorld.Map:IsPointNearHole(Vector3(x1, 0, z1)) then
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

		-- 60% 几率触发月光地刺
		if math.random() < 0.6 then
			DoSpikeAttack(attacker, target)
		end
	end
end

AddPrefabPostInit("lighter", function (inst)
	if GLOBAL.TheWorld.ismastersim then

		inst.components.weapon:SetOnAttack(custom_lighter_onattack)
		inst.components.weapon:SetRange(5, 7)
		inst.components.weapon:SetProjectile("fire_projectile")
		inst.components.weapon.xushi = 0
		-- 蓄势 18% @ x5
		-- 15层
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
					attacker.components.sanity:DoDelta(math.random(1, 2))
					attacker.components.health:DoDelta(math.random(1, 5))
				end
			end
		end)()

		inst.components.equippable.walkspeedmult = 1.2
		inst.components.equippable.dapperness = TUNING.DAPPERNESS_LARGE * 1.5
	end
end)

AddPrefabPostInit("wathgrithr", function (inst)
	if GLOBAL.TheWorld.ismastersim then

		if inst.components.combat then
			-- 女武神空手 2 倍伤害
			inst.components.combat.defaultdamage = TUNING.UNARMED_DAMAGE * 2
		end

		inst.components.locomotor.runspeed = 9
		inst.components.locomotor.walkspeed = 5
		-- 女武神饥饿更快
		inst.components.hunger.hungerrate = 1.88 * TUNING.WILSON_HUNGER_RATE
	end
end)

AddPrefabPostInit("spear_wathgrithr", function (inst)
	if GLOBAL.TheWorld.ismastersim then

		inst.components.weapon.blinking = true
		inst.components.weapon.blinking_damage_multiplier = 2.2
		inst.components.weapon.blinking_with_aoe = true
		inst.components.weapon.blinking_aoe_radius = 4
		inst.components.weapon.blinking_aoe_damage = TUNING.WATHGRITHR_SPEAR_DAMAGE * 1.8
		inst.components.weapon:SetRange(7, 2)

		local oldOnEquip = inst.components.equippable.onequipfn
		local oldOnUnEquipfn = inst.components.equippable.onunequipfn
		inst.components.equippable:SetOnEquip(function (_inst, owner)
			oldOnEquip(_inst, owner)
			if owner.prefab == "wathgrithr" then
				-- owner.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD * 0.7)
				-- inst.components.weapon:SetDamage(TUNING.WATHGRITHR_SPEAR_DAMAGE * 1.46)
				owner.components.combat.damagemultiplier = TUNING.WATHGRITHR_DAMAGE_MULT * 1.46
				owner.components.talker:Say("装备专属长矛，伤害提高 46%")
			end
		end)
		inst.components.equippable:SetOnUnequip(function (_inst, owner)
			oldOnUnEquipfn(_inst, owner)
			if owner.prefab == "wathgrithr" then
				-- owner.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD)
				-- inst.components.weapon:SetDamage(TUNING.WATHGRITHR_SPEAR_DAMAGE)
				owner.components.combat.damagemultiplier = TUNING.WATHGRITHR_DAMAGE_MULT
				owner.components.talker:Say("卸下专属长矛，伤害减少 46%")
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
					extraDamageMutl = 3
				elseif attacker.components.health:GetPercent() < 0.3 then
					extraDamageMutl = 1
				elseif attacker.components.health:GetPercent() < 0.5 then
					extraDamageMutl = 0.5
				elseif attacker.components.health:GetPercent() < 0.8 then
					extraDamageMutl = 0.2
				end

				if extraDamageMutl > 0 then
					target.components.combat:GetAttacked(attacker, weapon.components.weapon.damage * extraDamageMutl, weapon)
				end

				local targetStrength = target.components.combat.defaultdamage + target.components.health.maxhealth / 500
				local healthStealMult = 0.01
				-- Boss: 300+200=500
				-- monster: 50+2=52

				-- 生命低于 30% 吸血增加
				if attacker.components.health:GetPercent() < 0.3 then
					healthStealMult = healthStealMult + 0.04
				end
				-- 史诗生物额外吸血
				if target:HasTag("epic") or math.random() < 0.1 then
					healthStealMult = healthStealMult * 2
				end
				attacker.components.health:DoDelta(targetStrength * healthStealMult)
				attacker.components.sanity:DoDelta(targetStrength * healthStealMult / 15)
			end
		end)

		-- 多用工具
		inst:AddComponent("tool")
		inst.components.tool:SetAction(ACTIONS.CHOP, 8)

		inst.components.finiteuses:SetConsumption(ACTIONS.CHOP, 1)

		inst.components.equippable.walkspeedmult = 1.05

		--瞬移杖效果
		-- inst:AddComponent("blinkstaff")
		-- inst.components.blinkstaff:SetFX("sand_puff_large_front", "sand_puff_large_back")
    -- inst.components.blinkstaff.onblinkfn = function (staff, pos, caster)
		-- 	if caster.components.sanity ~= nil and caster.components.hunger ~= nil then
		-- 			caster.components.sanity:DoDelta(-25)
		-- 			caster.components.hunger:DoDelta(-30)
		-- 	end
		-- 	if staff.components.finiteuses ~= nil then
		-- 		staff.components.finiteuses:Use(10)
		-- 	end
		-- end

	end
end)

AddPrefabPostInit("wathgrithrhat", function (inst)
	if GLOBAL.TheWorld.ismastersim then
		if inst.components.waterproofer then
			-- 防水更多
			inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL * 2)
		end

		inst.components.equippable.walkspeedmult = 1.05
	end
end)

AddPrefabPostInit("armorruins", function (inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.equippable.walkspeedmult = 1.05
	end
end)

AddPrefabPostInit("hambat", function (inst)
	if GLOBAL.TheWorld.ismastersim then

		-- 为火腿棒添加范围攻击
		local old_onattack_fn = inst.components.weapon.onattack
		inst.components.weapon.onattack = function(weapon, attacker, target)
			old_onattack_fn(weapon, attacker, target)

			if target and attacker.components.combat:IsValidTarget(target) then
				local x, y, z = target.Transform:GetWorldPosition()
				local ents = TheSim:FindEntities(x, y, z, 3)
					for k, v in pairs(ents) do
						if attacker.components.combat:IsValidTarget(v)
								and v ~= target and v.components.combat
								-- 不会对墙体造成 AOE
								and string.find(v.prefab, "wall") == nil then
							-- print("blinking aoe to ", v)
							v.components.combat:GetAttacked(attacker, attacker.components.combat:CalcDamage(v, weapon, 0.5), weapon)
						end
					end
			end
		end

		inst.components.equippable.walkspeedmult = 1.1
	end
end)
