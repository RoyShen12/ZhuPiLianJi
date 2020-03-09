local TUNING = GLOBAL.TUNING
local ACTIONS = GLOBAL.ACTIONS

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

-- 烧饭速度
TUNING.BASE_COOK_TIME = 1

-- 海星
TUNING.STARFISH_TRAP_DAMAGE = 180

-- 生物生成时间
-- 地下蛤蟆
TUNING.TOADSTOOL_RESPAWN_TIME = 480

-- 速度
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
--
-- TUNING.SLURTLE_HEALTH = 2000
--
-- TUNING.LIGHTNING_GOAT_DAMAGE = 35
-- TUNING.LIGHTNING_GOAT_HEALTH = 350 * 4
--
-- TUNING.DEER_DAMAGE = 35
-- TUNING.DEER_HEALTH = 450 * 2
-- TUNING.DEER_GEMMED_DAMAGE = 60
-- TUNING.DEER_GEMMED_HEALTH = 2500
--
TUNING.KLAUS_DAMAGE = 110
TUNING.KLAUS_HEALTH = 20000
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
TUNING.SPIDERQUEEN_DAMAGE = 105
-- 石虾
TUNING.ROCKY_DAMAGE = 100
TUNING.ROCKY_HEALTH = 6000
-- Boss
-- 树人
TUNING.LEIF_HEALTH = 5000
TUNING.LEIF_DAMAGE = 200
-- 巨鹿
TUNING.DEERCLOPS_HEALTH = 8000
TUNING.DEERCLOPS_DAMAGE = 235
-- 鹅
TUNING.MOOSE_HEALTH = 15000
TUNING.MOOSE_DAMAGE = 200
-- 蜜蜂女王
TUNING.BEEQUEEN_HEALTH = 35000
TUNING.BEEQUEEN_DAMAGE = 225
-- 蜂巢卫士
TUNING.BEEGUARD_HEALTH = 400
TUNING.BEEGUARD_DAMAGE = 35
-- 龙蝇
TUNING.DRAGONFLY_HEALTH = 100000
TUNING.DRAGONFLY_DAMAGE = 330
TUNING.DRAGONFLY_FIRE_DAMAGE = 425
-- 复活的骨架（远古编织者）
TUNING.STALKER_ATRIUM_HEALTH = 32000
TUNING.STALKER_ATRIUM_PHASE2_HEALTH = 20000
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
							local smoke1 = GLOBAL.SpawnPrefab("maxwell_smoke")
							smoke1.Transform:SetPosition(sx, sy, sz)
							local smoke2 = GLOBAL.SpawnPrefab("maxwell_smoke")
							smoke2.Transform:SetPosition(dx, dy, dz)
							inst.Transform:SetPosition(dx, dy, dz)
							-- 突进自身的伤害
							local blinking_damage = weapon.components.weapon.damage * (weapon.components.weapon.blinking_damage_multiplier or 1.75)
							self.target.components.combat:GetAttacked(self.inst, blinking_damage, weapon)
							-- 对小范围的额外伤害
							if weapon.components.weapon.blinking_with_aoe then
								local ents = GLOBAL.TheSim:FindEntities(dx, dy, dz, (weapon.components.weapon.blinking_aoe_radius or 2))
								for k, v in pairs(ents) do
									if inst.components.combat:IsValidTarget(v)
										 and v ~= self.target and v.components.combat
										 and string.find(v.prefab, "wall") == nil then
										-- print("blinking aoe to ", v)
										v.components.combat:GetAttacked(inst, weapon.components.weapon.blinking_aoe_damage or blinking_damage * 0.5, weapon)
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
	local ents = GLOBAL.TheSim:FindEntities(x, y, z, max_rad, { "fire" })
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
		-- 内秉的伤害吸收
		inst.components.health:SetAbsorptionAmount(TUNING.WILLOW_ABSORPTION)

		inst.components.sanity.custom_rate_fn = custom_willow_sanityfn
		-- 更耐饿
		inst.components.hunger.hungerrate = 0.8 * TUNING.WILSON_HUNGER_RATE

		inst.components.locomotor.runspeed = 12
		inst.components.locomotor.walkspeed = 7
		-- 更加耐热
		inst.components.temperature:SetOverheatHurtRate(TUNING.WILSON_HEALTH / TUNING.WILLOW_OVERHEAT_KILL_TIME / 10)
	end
end)

local function custom_lighter_onattack(weapon, attacker, target)
	if target ~= nil and target:IsValid() and attacker.prefab == "willow" then
		weapon.components.weapon.updateXuShi(weapon.components.weapon, attacker)
		-- if weapon.components.weapon.damage <= 155 then
		-- 	local debug_old_damage = weapon.components.weapon.damage
		-- 	local newDamage = math.floor(weapon.components.weapon.damage * 1.015 + 0.5)
		-- 	attacker.components.talker:Say("武器伤害提高了 " .. (newDamage - debug_old_damage))
		-- 	weapon.components.weapon:SetDamage(newDamage)
		-- 	attacker.components.sanity:DoDelta(math.random(1, 3))
		-- end
		-- print("new damage:", weapon.components.weapon.damage)
		if target.components.burnable ~= nil and math.random() < TUNING.LIGHTER_ATTACK_IGNITE_PERCENT * target.components.burnable.flammability and attacker.prefab == "willow" then
			-- target.components.burnable:Ignite(nil, attacker)
			target.components.combat:GetAttacked(attacker, weapon.components.weapon.damage * 2, weapon)
			attacker.components.sanity:DoDelta(math.random(2, 6))
			attacker.components.health:DoDelta(math.random(1, 3))
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
		inst.components.weapon.updateXuShi = (function ()
			local xushiCengShu = 25
			local timmerInst = nil
			return function (_inst, attacker)
				if (_inst.xushi < xushiCengShu) then
					_inst.xushi = _inst.xushi + 1
					local newDamage = math.floor(0.5 + TUNING.LIGHTER_DAMAGE * math.pow(1.18, _inst.xushi))
					_inst:SetDamage(newDamage)
					attacker.components.talker:Say("蓄势 [ " .. _inst.xushi .. " ] 武器伤害: " .. newDamage)
				elseif (_inst.xushi == xushiCengShu) then
					attacker.components.talker:Say("蓄势 [ " .. _inst.xushi .. " ] 武器伤害: " .. _inst.damage)
				end
				if timmerInst ~= nil then timmerInst:Cancel() end
				timmerInst = inst:DoTaskInTime(5, function ()
					_inst.xushi = 0
					_inst:SetDamage(TUNING.LIGHTER_DAMAGE * 1)
					attacker.components.talker:Say("蓄势归零")
				end)
				-- recover sanity
				attacker.components.sanity:DoDelta(math.random(1, 8) / 10 * _inst.xushi)
				if _inst.xushi == xushiCengShu then
					attacker.components.health:DoDelta(5)
				end
			end
		end)()

		inst.components.equippable.walkspeedmult = 1.2
		inst.components.equippable.dapperness = TUNING.DAPPERNESS_LARGE * 1.5
	end
end)

AddPrefabPostInit("wathgrithr", function (inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.locomotor.runspeed = 9
		inst.components.locomotor.walkspeed = 5

		inst.components.hunger.hungerrate = 1.5 * TUNING.WILSON_HUNGER_RATE
	end
end)

AddPrefabPostInit("spear_wathgrithr", function (inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.weapon.blinking = true
		inst.components.weapon.blinking_damage_multiplier = 2.2
		inst.components.weapon.blinking_with_aoe = true
		inst.components.weapon.blinking_aoe_radius = 4
		inst.components.weapon.blinking_aoe_damage = TUNING.WATHGRITHR_SPEAR_DAMAGE * 1.8
		inst.components.weapon:SetRange(6, 2)

		local oldOnEquip = inst.components.equippable.onequipfn
		local oldOnUnEquipfn = inst.components.equippable.onunequipfn
		inst.components.equippable:SetOnEquip(function (_inst, owner)
			oldOnEquip(_inst, owner)
			if owner.prefab == "wathgrithr" then
				owner.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD * 0.7)
				owner.components.talker:Say("装备专属长矛，攻击速度提高 43%")
			end
		end)
		inst.components.equippable:SetOnUnequip(function (_inst, owner)
			oldOnUnEquipfn(_inst, owner)
			if owner.prefab == "wathgrithr" then
				owner.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD)
				owner.components.talker:Say("卸下专属长矛，攻击速度减少 43%")
			end
		end)

		inst.components.weapon:SetOnAttack(function (weapon, attacker, target)
			if attacker.prefab == "wathgrithr" and target and target.components.combat and target.components.combat.defaultdamage then

				local extraDamageMutl = 0

				-- 生命值越低，造成越多伤害
				if attacker.components.health:GetPercent() < 0.1 then
					extraDamageMutl = 3
				elseif attacker.components.health:GetPercent() < 0.3 then
					extraDamageMutl = 1
				elseif attacker.components.health:GetPercent() < 0.5 then
					extraDamageMutl = 0.5
				end

				target.components.combat:GetAttacked(attacker, weapon.components.weapon.damage * extraDamageMutl, weapon)

				local delta = target.components.combat.defaultdamage
				local healthStealMult = 0.02

				if attacker.components.health:GetPercent() < 0.3 then
					healthStealMult = healthStealMult + 0.08
				end
				if target:HasTag("epic") or math.random() < 0.1 then
					healthStealMult = healthStealMult * 3
				end
				attacker.components.health:DoDelta(delta * healthStealMult)
				attacker.components.sanity:DoDelta(delta * healthStealMult / 8)
			end
		end)
		-- 多用工具
		inst:AddComponent("tool")
		inst.components.tool:SetAction(ACTIONS.CHOP, 8)
		inst.components.finiteuses:SetConsumption(ACTIONS.CHOP, 1)
		inst.components.equippable.walkspeedmult = 1.05
	end
end)

-- AddPrefabPostInit("wathgrithrhat", function (inst)
-- 	if GLOBAL.TheWorld.ismastersim then
-- 		inst:AddComponent("waterproofer")
-- 		inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)
-- 	end
-- end)
