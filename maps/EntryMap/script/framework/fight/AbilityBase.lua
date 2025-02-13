local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__Promise = ____lualib.__TS__Promise
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 4,["15"] = 4,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 12,["20"] = 12,["21"] = 13,["22"] = 11,["23"] = 18,["24"] = 19,["25"] = 20,["27"] = 22,["30"] = 24,["33"] = 29,["34"] = 30,["36"] = 33,["37"] = 37,["38"] = 18,["39"] = 40,["40"] = 41,["41"] = 42,["43"] = 44,["44"] = 45,["45"] = 40,["46"] = 71,["47"] = 72,["48"] = 74,["49"] = 75,["50"] = 76,["51"] = 77,["52"] = 78,["54"] = 80,["55"] = 81,["57"] = 83,["58"] = 84,["60"] = 86,["61"] = 87,["63"] = 89,["64"] = 90,["66"] = 92,["67"] = 93,["69"] = 95,["70"] = 96,["72"] = 98,["73"] = 99,["75"] = 101,["76"] = 102,["78"] = 104,["79"] = 105,["81"] = 107,["82"] = 108,["84"] = 110,["85"] = 111,["87"] = 113,["88"] = 114,["91"] = 118,["92"] = 120,["93"] = 121,["94"] = 122,["95"] = 123,["97"] = 125,["98"] = 126,["99"] = 127,["100"] = 127,["101"] = 127,["102"] = 127,["104"] = 129,["105"] = 120,["106"] = 132,["107"] = 133,["108"] = 134,["109"] = 135,["111"] = 138,["112"] = 139,["113"] = 141,["116"] = 144,["117"] = 145,["118"] = 145,["119"] = 145,["120"] = 145,["121"] = 145,["122"] = 145,["124"] = 145,["126"] = 145,["127"] = 145,["128"] = 145,["129"] = 145,["130"] = 145,["131"] = 145,["132"] = 145,["133"] = 145,["134"] = 145,["135"] = 145,["136"] = 146,["137"] = 147,["138"] = 149,["139"] = 149,["140"] = 149,["141"] = 150,["142"] = 151,["143"] = 152,["144"] = 153,["145"] = 152,["147"] = 149,["148"] = 149,["150"] = 132,["151"] = 179,["152"] = 181,["153"] = 182,["156"] = 185,["157"] = 187,["158"] = 189,["159"] = 189,["160"] = 189,["161"] = 189,["162"] = 189,["163"] = 189,["164"] = 189,["165"] = 189,["166"] = 190,["167"] = 192,["168"] = 192,["169"] = 192,["170"] = 192,["171"] = 192,["172"] = 192,["173"] = 192,["174"] = 192,["175"] = 193,["176"] = 195,["177"] = 195,["178"] = 195,["179"] = 195,["180"] = 195,["181"] = 195,["182"] = 195,["183"] = 195,["184"] = 196,["185"] = 198,["186"] = 198,["187"] = 198,["188"] = 198,["189"] = 198,["190"] = 198,["191"] = 198,["192"] = 198,["194"] = 201,["195"] = 202,["196"] = 202,["197"] = 202,["198"] = 203,["199"] = 203,["200"] = 203,["201"] = 203,["202"] = 203,["203"] = 204,["204"] = 205,["205"] = 206,["206"] = 205,["208"] = 202,["209"] = 202,["211"] = 179,["212"] = 213,["213"] = 214,["214"] = 215,["215"] = 216,["218"] = 219,["219"] = 219,["220"] = 219,["221"] = 220,["222"] = 220,["223"] = 220,["224"] = 220,["225"] = 220,["226"] = 221,["227"] = 222,["228"] = 223,["229"] = 222,["231"] = 219,["232"] = 219,["233"] = 214,["235"] = 231,["236"] = 232,["237"] = 233,["240"] = 237,["241"] = 239,["242"] = 239,["243"] = 239,["244"] = 239,["245"] = 239,["246"] = 239,["247"] = 239,["248"] = 239,["249"] = 240,["250"] = 242,["251"] = 242,["252"] = 242,["253"] = 242,["254"] = 242,["255"] = 242,["256"] = 242,["257"] = 242,["258"] = 243,["259"] = 245,["260"] = 245,["261"] = 245,["262"] = 245,["263"] = 245,["264"] = 245,["265"] = 245,["266"] = 245,["267"] = 246,["268"] = 248,["269"] = 248,["270"] = 248,["271"] = 248,["272"] = 248,["273"] = 248,["274"] = 248,["275"] = 248,["277"] = 251,["278"] = 252,["279"] = 252,["280"] = 252,["281"] = 253,["282"] = 253,["283"] = 253,["284"] = 253,["285"] = 253,["286"] = 254,["287"] = 255,["288"] = 256,["289"] = 255,["291"] = 252,["292"] = 252,["294"] = 261,["295"] = 262,["297"] = 231,["298"] = 265,["299"] = 266,["300"] = 267,["301"] = 268,["304"] = 272,["305"] = 272,["306"] = 272,["307"] = 273,["308"] = 273,["309"] = 273,["310"] = 273,["311"] = 273,["312"] = 274,["313"] = 275,["314"] = 276,["315"] = 275,["317"] = 272,["318"] = 272,["319"] = 266,["321"] = 282,["322"] = 283,["323"] = 284,["324"] = 285,["327"] = 288,["328"] = 288,["329"] = 288,["330"] = 289,["331"] = 289,["332"] = 289,["333"] = 289,["334"] = 289,["335"] = 290,["336"] = 291,["337"] = 292,["338"] = 291,["340"] = 288,["341"] = 288,["342"] = 283,["344"] = 298,["345"] = 299,["346"] = 300,["347"] = 301,["350"] = 304,["351"] = 304,["352"] = 304,["353"] = 305,["354"] = 305,["355"] = 305,["356"] = 305,["357"] = 305,["358"] = 306,["359"] = 307,["360"] = 308,["361"] = 307,["363"] = 304,["364"] = 304,["365"] = 299,["367"] = 314,["368"] = 315,["369"] = 316,["370"] = 317,["373"] = 320,["374"] = 320,["375"] = 320,["376"] = 321,["377"] = 322,["378"] = 323,["379"] = 324,["380"] = 323,["382"] = 320,["383"] = 320,["384"] = 315,["386"] = 331,["387"] = 71,["388"] = 336,["389"] = 336,["390"] = 336,["391"] = 336,["392"] = 340,["393"] = 336,["394"] = 340,["395"] = 340,["396"] = 340,["397"] = 343,["398"] = 340,["399"] = 375,["400"] = 376,["401"] = 375,["402"] = 417,["403"] = 418,["404"] = 417,["409"] = 347,["417"] = 351,["418"] = 352,["419"] = 353,["421"] = 355,["429"] = 359,["430"] = 360,["431"] = 361,["433"] = 364,["434"] = 365,["435"] = 368,["436"] = 368,["437"] = 369,["438"] = 369,["439"] = 369,["440"] = 370,["441"] = 370,["442"] = 370,["444"] = 370,["446"] = 366,["447"] = 366,["448"] = 366,["449"] = 366,["450"] = 366,["451"] = 366,["452"] = 366,["453"] = 366,["454"] = 366,["455"] = 366});
local ____exports = {}
local ____SyncCounter = include("framework.data.SyncCounter")
local sync = ____SyncCounter.sync
local ____AbilityAPI = include("framework.fight.AbilityAPI")
local AbilityAPI = ____AbilityAPI.AbilityAPI
local ____utils = include("framework.fight.utils")
local runEvent = ____utils.runEvent
____exports.Cast = __TS__Class()
local Cast = ____exports.Cast
Cast.name = "Cast"
function Cast.prototype.____constructor(self, fight, cast)
    self.fight = fight
    self.cast = cast
end
function Cast.prototype.getTargetUnit(self)
    if self.unit ~= nil then
        return self.unit
    end
    local unit
    do
        pcall(function()
            unit = self.cast:get_target_unit()
        end)
    end
    if unit == nil then
        return nil
    end
    self.unit = self.fight.allY3UnitMap[unit.id]
    return self.unit
end
function Cast.prototype.getAngle(self)
    if self.angle ~= nil then
        return self.angle
    end
    self.angle = self.cast:get_angle()
    return self.angle
end
function ____exports.createAbility(self, fight, _____7269_7F16_6280_80FDID, abilityClazz, config)
    local abilityEditor = y3.object.ability[_____7269_7F16_6280_80FDID]:new()
    if type(config) == "function" then
        config(nil, abilityEditor.data)
    elseif config ~= nil then
        if config["释放范围"] ~= nil then
            abilityEditor.data.ability_cast_range = {config["释放范围"]}
        end
        if config["是否转身"] ~= nil then
            abilityEditor.data.need_turn_to_target = config["是否转身"]
        end
        if config["施法开始"] ~= nil then
            abilityEditor.data.ability_cast_point = config["施法开始"]
        end
        if config["施法引导"] ~= nil then
            abilityEditor.data.ability_prepare_time = config["施法引导"]
        end
        if config["施法出手"] ~= nil then
            abilityEditor.data.ability_channel_time = config["施法出手"]
        end
        if config["施法完成"] ~= nil then
            abilityEditor.data.ability_bw_point = config["施法完成"]
        end
        if config["施法开始可以被打断"] ~= nil then
            abilityEditor.data.can_ps_interrupt = config["施法开始可以被打断"]
        end
        if config["施法引导可以被打断"] ~= nil then
            abilityEditor.data.can_prepare_interrupt = config["施法引导可以被打断"]
        end
        if config["施法出手可以被打断"] ~= nil then
            abilityEditor.data.can_cast_interrupt = config["施法出手可以被打断"]
        end
        if config["施法完成可以被打断"] ~= nil then
            abilityEditor.data.can_bs_interrupt = config["施法完成可以被打断"]
        end
        if config["技能可以打断其他技能"] ~= nil then
            abilityEditor.data.can_interrupt_others = config["技能可以打断其他技能"]
        end
        if config["移动会对技能产生影响"] ~= nil then
            abilityEditor.data.influenced_by_move = config["移动会对技能产生影响"]
        end
        if config["消耗魔法"] ~= nil then
            abilityEditor.data.ability_cost = {config["消耗魔法"]}
        end
    end
    local pro = abilityClazz.prototype
    local function getInstance(____, a)
        local owner = a:get_owner()
        if owner == nil then
            return nil
        end
        local unit = fight.allY3UnitMap[owner.id]
        if unit == nil then
            console:error(
                "单位丢失",
                owner:get_name()
            )
        end
        return unit.skillsMap[a:get_key()].instance
    end
    abilityEditor.on_add = function(a)
        local owner = a:get_owner()
        if owner == nil then
            return nil
        end
        local unit = fight.allY3UnitMap[owner.id]
        local instance = __TS__New(abilityClazz, fight, a, unit)
        if unit == nil then
            return
        end
        local key = a:get_key()
        local ____unit_1 = unit
        local ____key_2 = key
        local ____a_3 = a
        local ____temp_0
        if fight.isBigSkill ~= nil then
            ____temp_0 = fight:isBigSkill(a)
        else
            ____temp_0 = false
        end
        local entity = {
            isSkill = true,
            owner = ____unit_1,
            skillName = nil,
            key = ____key_2,
            ability = ____a_3,
            type = nil,
            instance = instance,
            isBigSkill = ____temp_0
        }
        unit.skillsMap[key] = entity
        if instance["获得技能"] then
            sync(
                nil,
                function()
                    local promise = instance["获得技能"](instance, instance)
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
    end
    abilityEditor.on_can_cast = function(a, cast)
        local instance = getInstance(nil, a)
        if instance == nil then
            return
        end
        instance.owner._currentAbility = instance.ability
        if instance.ability:get_type() == 0 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 2],
                0,
                instance.owner,
                instance.owner,
                function() return "触发隐藏技能施法" end
            )
        elseif instance.ability:get_type() == 1 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 3],
                0,
                instance.owner,
                instance.owner,
                function() return "触发普通技能施法" end
            )
        elseif instance.ability:get_type() == 2 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 4],
                0,
                instance.owner,
                instance.owner,
                function() return "触发命令技能施法" end
            )
        elseif instance.ability:get_type() == 3 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 5],
                0,
                instance.owner,
                instance.owner,
                function() return "触发英雄技能施法" end
            )
        end
        if pro["即将施法"] then
            sync(
                nil,
                function()
                    local promise = instance["即将施法"](
                        instance,
                        instance,
                        __TS__New(____exports.Cast, instance.fight, cast)
                    )
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
    end
    if pro["施法引导"] then
        abilityEditor.on_cast_channel = function(a, cast)
            local instance = getInstance(nil, a)
            if instance == nil then
                return
            end
            sync(
                nil,
                function()
                    local promise = instance["施法引导"](
                        instance,
                        instance,
                        __TS__New(____exports.Cast, instance.fight, cast)
                    )
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
    end
    abilityEditor.on_cast_finish = function(a, cast)
        local instance = getInstance(nil, a)
        if instance == nil then
            return
        end
        if instance.ability:get_type() == 0 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 6],
                0,
                instance.owner,
                instance.owner,
                function() return "触发隐藏技能施法完成" end
            )
        elseif instance.ability:get_type() == 1 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 7],
                0,
                instance.owner,
                instance.owner,
                function() return "触发普通技能施法完成" end
            )
        elseif instance.ability:get_type() == 2 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 8],
                0,
                instance.owner,
                instance.owner,
                function() return "触发命令技能施法完成" end
            )
        elseif instance.ability:get_type() == 3 then
            runEvent(
                nil,
                instance.owner.eventMap[1100000000 + 9],
                0,
                instance.owner,
                instance.owner,
                function() return "触发英雄技能施法完成" end
            )
        end
        if pro["施法完成"] then
            sync(
                nil,
                function()
                    local promise = instance["施法完成"](
                        instance,
                        instance,
                        __TS__New(____exports.Cast, instance.fight, cast)
                    )
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
        if instance.owner._currentAbility == instance.ability then
            instance.owner._currentAbility = nil
        end
    end
    if pro["施法出手"] then
        abilityEditor.on_cast_shot = function(a, cast)
            local instance = getInstance(nil, a)
            if instance == nil then
                return
            end
            sync(
                nil,
                function()
                    local promise = instance["施法出手"](
                        instance,
                        instance,
                        __TS__New(____exports.Cast, instance.fight, cast)
                    )
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
    end
    if pro["施法开始"] then
        abilityEditor.on_cast_start = function(a, cast)
            local instance = getInstance(nil, a)
            if instance == nil then
                return
            end
            sync(
                nil,
                function()
                    local promise = instance["施法开始"](
                        instance,
                        instance,
                        __TS__New(____exports.Cast, instance.fight, cast)
                    )
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
    end
    if pro["施法停止"] then
        abilityEditor.on_cast_stop = function(a, cast)
            local instance = getInstance(nil, a)
            if instance == nil then
                return
            end
            sync(
                nil,
                function()
                    local promise = instance["施法停止"](
                        instance,
                        instance,
                        __TS__New(____exports.Cast, instance.fight, cast)
                    )
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
    end
    if pro["冷却完成"] then
        abilityEditor.on_cooldown = function(a)
            local instance = getInstance(nil, a)
            if instance == nil then
                return
            end
            sync(
                nil,
                function()
                    local promise = instance["冷却完成"](instance, instance)
                    if promise ~= nil and promise.catch ~= nil then
                        promise:catch(function(____, e)
                            console:log("施法出手 逻辑异常", e)
                        end)
                    end
                end
            )
        end
    end
    return abilityEditor.key
end
____exports.AbilityBase = __TS__Class()
local AbilityBase = ____exports.AbilityBase
AbilityBase.name = "AbilityBase"
__TS__ClassExtends(AbilityBase, AbilityAPI)
function AbilityBase.prototype.____constructor(self, fight, _ability, _owner)
    AbilityAPI.prototype.____constructor(self)
    self.fight = fight
    self._ability = _ability
    self._owner = _owner
    self._abilityKey = self.ability:get_key()
end
function AbilityBase.prototype.setCD(self, cd)
    self.ability:set_cd(cd)
end
function AbilityBase.prototype.release(self)
    self._ability = nil
end
__TS__SetDescriptor(
    AbilityBase.prototype,
    "ability",
    {get = function(self)
        return self._ability
    end},
    true
)
__TS__SetDescriptor(
    AbilityBase.prototype,
    "owner",
    {get = function(self)
        if self._owner == nil then
            local y3Unit = self.ability:get_owner()
            self._owner = self.fight.allY3UnitMap[y3Unit and y3Unit.id]
        end
        return self._owner
    end},
    true
)
__TS__SetDescriptor(
    AbilityBase.prototype,
    "skillEntity",
    {get = function(self)
        local skill = self.owner.skillsMap[self._abilityKey]
        if skill ~= nil then
            return skill
        end
        local selfKey = self.ability:get_key()
        local ____type = self.ability:get_type()
        local ____self_ability_7 = self.ability
        local ____selfKey_8 = selfKey
        local ____self_owner_9 = self.owner
        local ____temp_10 = self.ability:get_name() or "unknown"
        local ____temp_11 = ____type == 1 and "隐藏" or (____type == 2 and "普通" or (____type == 3 and "命令" or "英雄"))
        local ____temp_6
        if self.fight.isBigSkill ~= nil then
            ____temp_6 = self.fight:isBigSkill(self.ability)
        else
            ____temp_6 = false
        end
        return {
            isSkill = true,
            ability = ____self_ability_7,
            key = ____selfKey_8,
            owner = ____self_owner_9,
            skillName = ____temp_10,
            type = ____temp_11,
            isBigSkill = ____temp_6,
            instance = self
        }
    end},
    true
)
return ____exports
