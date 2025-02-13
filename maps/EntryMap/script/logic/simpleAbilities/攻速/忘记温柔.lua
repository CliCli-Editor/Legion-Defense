local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 8,["21"] = 11,["22"] = 11,["23"] = 11,["24"] = 11,["26"] = 11,["27"] = 12,["28"] = 13,["29"] = 11,["30"] = 14,["32"] = 16,["33"] = 17,["34"] = 18,["35"] = 18,["36"] = 18,["37"] = 18,["38"] = 18,["39"] = 18,["41"] = 20,["45"] = 23,["46"] = 23,["47"] = 24,["48"] = 25,["49"] = 26,["51"] = 23,["54"] = 30,["57"] = 34,["58"] = 37,["59"] = 37,["60"] = 37,["61"] = 37,["62"] = 37,["63"] = 37,["64"] = 37,["65"] = 37,["66"] = 38,["67"] = 39,["68"] = 39,["69"] = 39,["70"] = 39,["71"] = 39,["72"] = 39,["73"] = 39,["74"] = 40,["75"] = 41,["76"] = 42,["77"] = 42,["78"] = 43,["79"] = 44,["80"] = 46,["81"] = 46,["83"] = 47,["84"] = 48,["85"] = 49,["87"] = 44,["88"] = 102,["89"] = 103,["91"] = 104,["94"] = 107,["95"] = 108,["96"] = 109,["99"] = 112,["100"] = 113,["103"] = 116,["104"] = 117,["105"] = 118,["106"] = 119,["107"] = 120,["108"] = 120,["109"] = 120,["110"] = 120,["111"] = 120,["112"] = 120,["113"] = 120,["114"] = 120,["115"] = 120,["116"] = 120,["117"] = 121,["119"] = 124,["120"] = 124,["121"] = 124,["122"] = 124,["123"] = 124,["124"] = 124,["125"] = 124,["126"] = 124,["127"] = 124,["129"] = 126,["130"] = 127,["131"] = 128,["132"] = 129,["133"] = 130,["134"] = 130,["135"] = 130,["136"] = 130,["137"] = 130,["138"] = 130,["141"] = 133,["142"] = 134,["145"] = 137,["146"] = 138,["147"] = 139,["148"] = 139,["149"] = 139,["150"] = 139,["151"] = 139,["152"] = 139,["153"] = 139,["154"] = 139,["155"] = 139,["156"] = 139,["157"] = 139,["158"] = 139,["159"] = 140,["161"] = 142,["162"] = 143,["163"] = 144,["164"] = 145,["165"] = 145,["166"] = 145,["167"] = 145,["168"] = 145,["169"] = 145,["172"] = 148,["173"] = 149,["176"] = 154,["177"] = 154,["178"] = 154,["179"] = 154,["180"] = 154,["181"] = 154,["182"] = 154,["183"] = 154,["184"] = 154,["187"] = 102,["188"] = 102,["189"] = 102,["190"] = 159,["191"] = 159,["192"] = 159,["193"] = 159,["194"] = 159,["195"] = 159,["196"] = 159,["197"] = 159,["198"] = 159,["200"] = 14,["201"] = 176});
local ____exports = {}
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____SimpleAbilityBase = include("framework.fight.SimpleAbilityBase")
local SimpleAbilityBase = ____SimpleAbilityBase.SimpleAbilityBase
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityTagData = ____FightController.AbilityTagData
local _____6570_503C = include("logic.simpleAbilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
____exports.SimpleSkill = __TS__Class()
local SimpleSkill = ____exports.SimpleSkill
SimpleSkill.name = "SimpleSkill"
__TS__ClassExtends(SimpleSkill, SimpleAbilityBase)
function SimpleSkill.prototype.____constructor(self, ...)
    SimpleAbilityBase.prototype.____constructor(self, ...)
    self.pList = {}
    self.count = 0
end
function SimpleSkill.prototype.Run(self, ability, args)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local target = self.owner:getHatredTarget()
        if not target or not target:isAlive() then
            target = self.owner:findTarget(
                {"敌人"},
                function(____, a) return a:isAlive() end,
                1,
                _____6570_503C["攻速"]["忘记温柔"]["范围"]
            )
        end
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        do
            local i = #self.pList - 1
            while i >= 0 do
                local p = self.pList[i + 1]
                if p == nil or p:getProjectile() == nil then
                    table.remove(self.pList, i + 1)
                end
                i = i - 1
            end
        end
        if #self.pList >= _____6570_503C["攻速"]["忘记温柔"]["投射物数量上限"] then
            return ____awaiter_resolve(nil)
        end
        local angle = self:getDirection(self.owner, target)
        local effectEntity = self.owner:applyTimeLimitProperties(
            self,
            buffId,
            0,
            2,
            {_____6570_503C["攻速"]["忘记温柔"]["buff类型"], _____6570_503C["攻速"]["忘记温柔"]["buff数值"]},
            {}
        )
        local startPos = self:offsetPoint(self.owner, angle, 150)
        local p = self:createProjectile(
            _____6570_503C["攻速"]["忘记温柔"]["投射物ID"],
            startPos,
            angle,
            150,
            _____6570_503C["攻速"]["忘记温柔"]["投射物持续时间"]
        )
        self.count = self.count + 1
        p:prepare({hit_type = 0, hit_radius = _____6570_503C["攻速"]["忘记温柔"]["投射物碰撞体积"], hit_same = true, face_angle = true})
        local ____self_pList_0 = self.pList
        ____self_pList_0[#____self_pList_0 + 1] = p
        local startIsPlayer = true
        local function onDestory()
            if effectEntity ~= nil then
                effectEntity:remove(self)
            end
            local index = __TS__ArrayIndexOf(self.pList, p)
            if index ~= -1 then
                table.remove(self.pList, index + 1)
            end
        end
        p:listener({
            onFinish = function()
                return __TS__AsyncAwaiter(function(____awaiter_resolve)
                    if p == nil then
                        return ____awaiter_resolve(nil)
                    end
                    local times = p:getTime()
                    if times <= 0 then
                        p:remove()
                        return ____awaiter_resolve(nil)
                    end
                    if not self.owner or not self.owner:isAlive() then
                        p:remove()
                        return ____awaiter_resolve(nil)
                    end
                    if startIsPlayer == true then
                        startIsPlayer = false
                        if target and target:isAlive() then
                            target.tempData[AbilityTagData["是否为AOE"]] = true
                            local ____target_5 = target
                            local ____target_hurt_6 = target.hurt
                            local ____6570_503C__653B_901F__5FD8_8BB0_6E29_67D4__4F24_5BB3_7C7B_578B_4 = _____6570_503C["攻速"]["忘记温柔"]["伤害类型"]
                            local ____self_3 = _____6570_503C["攻速"]["忘记温柔"]
                            ____target_hurt_6(
                                ____target_5,
                                self,
                                ____6570_503C__653B_901F__5FD8_8BB0_6E29_67D4__4F24_5BB3_7C7B_578B_4,
                                ____self_3["伤害"](____self_3, self.owner, 0)
                            )
                            target.tempData[AbilityTagData["是否为AOE"]] = nil
                        end
                        p:moverTarget(
                            self.owner,
                            _____6570_503C["攻速"]["忘记温柔"]["投射物飞行速度"],
                            0,
                            nil,
                            nil,
                            nil,
                            150
                        )
                    else
                        startIsPlayer = true
                        if not (target and target:isAlive()) then
                            target = self.owner:getHatredTarget()
                            if not target or not target:isAlive() then
                                target = self.owner:findTarget(
                                    {"敌人"},
                                    function(____, a) return a:isAlive() end,
                                    1,
                                    _____6570_503C["攻速"]["忘记温柔"]["范围"]
                                )
                            end
                        end
                        if not target or not target:isAlive() then
                            p:remove()
                            return ____awaiter_resolve(nil)
                        end
                        local distance = self:getDistance(self.owner, target)
                        if distance < _____6570_503C["攻速"]["忘记温柔"]["投射物触发弹射延迟最小距离"] then
                            p:moverRound(
                                self.owner,
                                _____6570_503C["攻速"]["忘记温柔"]["投射物环绕运动半径"],
                                250,
                                self.owner:getAngle(),
                                true,
                                _____6570_503C["攻速"]["忘记温柔"]["投射物弹射延迟时间"],
                                nil,
                                nil,
                                nil,
                                self.owner:getPosition()
                            )
                            __TS__Await(self:awaitTime(_____6570_503C["攻速"]["忘记温柔"]["投射物弹射延迟时间"]))
                        end
                        if not target or not target:isAlive() then
                            target = self.owner:getHatredTarget()
                            if not target or not target:isAlive() then
                                target = self.owner:findTarget(
                                    {"敌人"},
                                    function(____, a) return a:isAlive() end,
                                    1,
                                    _____6570_503C["攻速"]["忘记温柔"]["范围"]
                                )
                            end
                        end
                        if not target or not target:isAlive() then
                            p:remove()
                            return ____awaiter_resolve(nil)
                        end
                        p:moverTarget(
                            target,
                            _____6570_503C["攻速"]["忘记温柔"]["投射物飞行速度"],
                            0,
                            nil,
                            nil,
                            nil,
                            150
                        )
                    end
                end)
            end,
            onDestory = onDestory
        })
        p:moverTarget(
            target,
            _____6570_503C["攻速"]["忘记温柔"]["投射物飞行速度"],
            0,
            nil,
            nil,
            nil,
            150
        )
    end)
end
local ____ = fight
return ____exports
