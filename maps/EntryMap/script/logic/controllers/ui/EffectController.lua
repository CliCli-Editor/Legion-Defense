local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 5,["13"] = 5,["14"] = 5,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 5,["20"] = 5,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 5,["26"] = 6,["27"] = 6,["28"] = 7,["29"] = 7,["30"] = 10,["31"] = 10,["32"] = 10,["34"] = 83,["35"] = 115,["36"] = 10,["37"] = 16,["38"] = 23,["39"] = 23,["41"] = 28,["42"] = 29,["43"] = 30,["44"] = 31,["46"] = 34,["47"] = 34,["48"] = 34,["49"] = 34,["50"] = 34,["51"] = 34,["52"] = 34,["53"] = 34,["54"] = 34,["55"] = 34,["56"] = 34,["57"] = 34,["58"] = 34,["59"] = 48,["60"] = 16,["61"] = 51,["62"] = 52,["63"] = 51,["64"] = 55,["65"] = 56,["66"] = 57,["67"] = 57,["68"] = 57,["69"] = 57,["70"] = 57,["71"] = 57,["72"] = 57,["73"] = 57,["74"] = 57,["76"] = 55,["77"] = 63,["78"] = 64,["79"] = 65,["81"] = 63,["82"] = 69,["83"] = 70,["84"] = 70,["85"] = 70,["86"] = 70,["87"] = 70,["88"] = 70,["89"] = 70,["90"] = 70,["91"] = 70,["92"] = 70,["93"] = 70,["94"] = 69,["95"] = 73,["96"] = 74,["97"] = 74,["98"] = 74,["99"] = 74,["100"] = 74,["101"] = 74,["102"] = 74,["103"] = 74,["104"] = 74,["105"] = 74,["106"] = 74,["107"] = 73,["108"] = 77,["109"] = 79,["110"] = 80,["111"] = 80,["112"] = 80,["113"] = 80,["114"] = 80,["115"] = 80,["116"] = 80,["117"] = 80,["118"] = 80,["119"] = 80,["120"] = 80,["121"] = 77,["122"] = 90,["123"] = 91,["124"] = 92,["126"] = 95,["127"] = 95,["128"] = 100,["129"] = 101,["131"] = 90,["132"] = 105,["133"] = 106,["134"] = 107,["135"] = 108,["136"] = 109,["138"] = 111,["139"] = 111,["140"] = 111,["141"] = 111,["142"] = 111,["143"] = 111,["144"] = 111,["145"] = 105,["146"] = 116,["147"] = 117,["150"] = 119,["151"] = 120,["152"] = 121,["153"] = 122,["155"] = 125,["156"] = 126,["157"] = 128,["158"] = 128,["159"] = 128,["160"] = 129,["161"] = 130,["162"] = 132,["163"] = 133,["164"] = 133,["165"] = 133,["166"] = 133,["167"] = 133,["168"] = 133,["169"] = 133,["171"] = 137,["172"] = 137,["173"] = 137,["174"] = 137,["175"] = 137,["176"] = 137,["177"] = 137,["179"] = 140,["180"] = 140,["181"] = 140,["182"] = 141,["183"] = 143,["184"] = 140,["185"] = 140,["186"] = 116,["187"] = 147,["188"] = 148,["191"] = 149,["192"] = 150,["193"] = 151,["194"] = 152,["196"] = 155,["197"] = 155,["198"] = 155,["199"] = 155,["200"] = 155,["201"] = 155,["202"] = 147,["203"] = 157,["205"] = 158,["206"] = 159,["208"] = 166,["210"] = 167,["212"] = 173,["218"] = 177,["219"] = 157,["220"] = 180,["221"] = 200,["223"] = 201,["224"] = 202,["226"] = 203,["228"] = 204,["230"] = 205,["232"] = 206,["234"] = 207,["236"] = 210,["238"] = 211,["240"] = 212,["242"] = 213,["244"] = 214,["246"] = 215,["248"] = 217,["250"] = 218,["252"] = 220,["254"] = 221,["256"] = 229,["258"] = 230,["260"] = 231,["262"] = 232,["264"] = 233,["266"] = 234,["272"] = 239,["275"] = 242,["276"] = 243,["278"] = 244,["280"] = 245,["282"] = 246,["284"] = 247,["286"] = 248,["288"] = 251,["290"] = 252,["292"] = 253,["294"] = 254,["296"] = 255,["298"] = 256,["300"] = 258,["302"] = 259,["304"] = 261,["306"] = 262,["308"] = 270,["310"] = 271,["312"] = 272,["314"] = 273,["316"] = 274,["318"] = 275,["324"] = 280,["326"] = 180,["327"] = 286});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Property = include("logic.models.Property")
local _____5927_62DB_4F24_5BB3_589E_52A0 = ____Property["大招伤害增加"]
local _____6062_590D_7CFB_6570 = ____Property["恢复系数"]
local _____653B_51FB = ____Property["攻击"]
local _____653B_51FB_901F_5EA6 = ____Property["攻击速度"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____6BCF_79D2_56DE_84DD = ____Property["每秒回蓝"]
local _____6BD2_7CFB_6570 = ____Property["毒系数"]
local _____57FA_7840_8840_91CF_4E0A_9650 = ____Property["基础血量上限"]
local _____95EA_907F_7387 = ____Property["闪避率"]
local _____547D_4E2D = ____Property["命中"]
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____FightController = include("logic.controllers.FightController")
local _____8DF3_5B57_52A8_753B = ____FightController["跳字动画"]
____exports.EffectController = __TS__Class()
local EffectController = ____exports.EffectController
EffectController.name = "EffectController"
function EffectController.prototype.____constructor(self)
    self.effectList = {}
    self.groupmap = {}
end
function EffectController.prototype.add(self, _____7C92_5B50ID, _____76EE_6807, _____89D2_5EA6, _____7F29_653E, _____6301_7EED_65F6_95F4, _____9AD8_5EA6, _____63D2_69FD, _____8DDF_968F_65CB_8F6C_6A21_5F0F, _____8DDF_968F_7F29_653E, _____662F_5426_7ACB_5373_9500_6BC1)
    if _____63D2_69FD == nil then
        _____63D2_69FD = "hit_point"
    end
    if _____76EE_6807.activeData ~= nil then
        _____76EE_6807 = _____76EE_6807.y3Unit
    elseif _____76EE_6807.x ~= nil then
        _____76EE_6807 = y3.point.create(_____76EE_6807.x, _____76EE_6807.y)
    end
    local particle = y3.particle.create({
        type = _____7C92_5B50ID,
        target = _____76EE_6807,
        angle = _____89D2_5EA6,
        scale = _____7F29_653E,
        time = _____6301_7EED_65F6_95F4,
        height = _____9AD8_5EA6,
        socket = _____63D2_69FD,
        follow_rotation = _____8DDF_968F_65CB_8F6C_6A21_5F0F,
        follow_scale = _____8DDF_968F_7F29_653E,
        immediate = _____662F_5426_7ACB_5373_9500_6BC1,
        detach = not nil
    })
    return particle
end
function EffectController.prototype.remove(self, particle)
    particle:remove()
end
function EffectController.prototype.add_buff(self, unitId, key)
    if unitId ~= nil and unitId ~= 0 and y3.unit.get_by_id(unitId) ~= nil then
        y3.unit.get_by_id(unitId):add_buff({
            key = key,
            time = -1,
            source = y3.unit.get_by_id(unitId),
            ability = nil,
            pulse = nil,
            stacks = 1,
            data = nil
        })
    end
end
function EffectController.prototype.remove_buff(self, unitId, key)
    if unitId ~= nil and unitId ~= 0 and y3.unit.get_by_id(unitId) ~= nil then
        y3.unit.get_by_id(unitId):remove_buffs_by_key(key)
    end
end
function EffectController.prototype.showLeftFlag(self, unit)
    ____exports.effectController:add(
        134253249,
        unit:getWritableEntity(),
        0,
        1,
        nil,
        nil,
        "back",
        1,
        true
    )
end
function EffectController.prototype.showRightFlag(self, unit)
    ____exports.effectController:add(
        134248052,
        unit:getWritableEntity(),
        0,
        1,
        nil,
        nil,
        "back",
        1,
        true
    )
end
function EffectController.prototype.showLvUpEffect(self, playerId)
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    self:add(
        134254020,
        unitData:getWritableEntity(),
        0,
        1,
        2,
        nil,
        "",
        1,
        true
    )
end
function EffectController.prototype.showAttrUpEffect(self, playerId, attr, value)
    if self.effectList[playerId] == nil then
        self.effectList[playerId] = {}
    end
    local ____self_effectList_playerId_0 = self.effectList[playerId]
    ____self_effectList_playerId_0[#____self_effectList_playerId_0 + 1] = {playerId = playerId, attr = attr, value = value}
    if #self.effectList[playerId] == 1 then
        self:showFloat(playerId)
    end
end
function EffectController.prototype.showGetWoodFloatText(self, unit, value, playerId)
    if self.groupmap[playerId] == nil then
        local group = y3.player_group.create()
        group:add_player(y3.player.get_by_id(playerId))
        self.groupmap[playerId] = group
    end
    y3.ui.create_floating_text(
        unit:get_point(),
        "get_gold",
        "a+" .. tostring(value),
        self.groupmap[playerId],
        _____8DF3_5B57_52A8_753B["属性跳字"]
    )
end
function EffectController.prototype.showFloat(self, playerId)
    if #self.effectList[playerId] == 0 then
        return
    end
    if self.groupmap[playerId] == nil then
        local group = y3.player_group.create()
        group:add_player(y3.player.get_by_id(playerId))
        self.groupmap[playerId] = group
    end
    local group = y3.player_group.create()
    group:add_player(y3.player.get_by_id(playerId))
    local ____self_effectList_playerId__1_1 = self.effectList[playerId][1]
    local attr = ____self_effectList_playerId__1_1.attr
    local value = ____self_effectList_playerId__1_1.value
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    local unit = unitData.entity.y3Unit
    if i18n.currentLang == "en" then
        y3.ui.create_floating_text(
            unit:get_point(),
            "1005885716",
            (self:attrToHarm(attr) .. "+") .. self:valueToHarm(attr, value),
            self.groupmap[playerId],
            _____8DF3_5B57_52A8_753B["属性跳字"]
        )
    else
        y3.ui.create_floating_text(
            unit:get_point(),
            "1190323031",
            (self:attrToHarm(attr) .. "+") .. self:valueToHarm(attr, value),
            self.groupmap[playerId],
            _____8DF3_5B57_52A8_753B["属性跳字"]
        )
    end
    y3.ltimer.wait(
        0.2,
        function()
            table.remove(self.effectList[playerId], 1)
            self:showFloat(playerId)
        end
    )
end
function EffectController.prototype.showGold(self, playerId, unit, gold)
    if gold == 0 then
        return
    end
    if self.groupmap[playerId] == nil then
        local group = y3.player_group.create()
        group:add_player(y3.player.get_by_id(playerId))
        self.groupmap[playerId] = group
    end
    y3.ui.create_floating_text(
        unit:get_point(),
        "get_gold",
        "b+" .. tostring(gold),
        self.groupmap[playerId]
    )
end
function EffectController.prototype.valueToHarm(self, attr, value)
    repeat
        local ____switch29 = attr
        local ____cond29 = ____switch29 == _____57FA_7840_8840_91CF_4E0A_9650 or ____switch29 == _____653B_51FB or ____switch29 == _____6BCF_79D2_56DE_84DD or ____switch29 == _____653B_51FB_901F_5EA6 or ____switch29 == _____6CD5_672F_653B_51FB or ____switch29 == _____7269_7406_9632_5FA1 or ____switch29 == _____6CD5_672F_9632_5FA1
        if ____cond29 then
            return tostring(math.floor(value * 100) / 100)
        end
        ____cond29 = ____cond29 or (____switch29 == _____95EA_907F_7387 or ____switch29 == _____66B4_51FB_7387 or ____switch29 == _____547D_4E2D or ____switch29 == _____6BD2_7CFB_6570 or ____switch29 == _____6062_590D_7CFB_6570 or ____switch29 == _____5927_62DB_4F24_5BB3_589E_52A0)
        if ____cond29 then
            return tostring(math.floor(value * 10000) / 100) .. "/"
        end
        do
            break
        end
    until true
    return tostring(value)
end
function EffectController.prototype.attrToHarm(self, attr)
    if i18n.currentLang == "en" then
        repeat
            local ____switch32 = attr
            local ____cond32 = ____switch32 == _____57FA_7840_8840_91CF_4E0A_9650
            if ____cond32 then
                return "HP"
            end
            ____cond32 = ____cond32 or ____switch32 == _____653B_51FB
            if ____cond32 then
                return "ATK"
            end
            ____cond32 = ____cond32 or ____switch32 == _____66B4_51FB_7387
            if ____cond32 then
                return "CRIT"
            end
            ____cond32 = ____cond32 or ____switch32 == _____653B_51FB_901F_5EA6
            if ____cond32 then
                return "ATK SPED"
            end
            ____cond32 = ____cond32 or ____switch32 == _____95EA_907F_7387
            if ____cond32 then
                return "EVASION"
            end
            ____cond32 = ____cond32 or ____switch32 == _____547D_4E2D
            if ____cond32 then
                return "HIT"
            end
            ____cond32 = ____cond32 or ____switch32 == _____6BCF_79D2_56DE_84DD
            if ____cond32 then
                return "MAMA REGEN"
            end
            ____cond32 = ____cond32 or ____switch32 == _____6BD2_7CFB_6570
            if ____cond32 then
                return "BONUS POISON STACKS"
            end
            ____cond32 = ____cond32 or ____switch32 == _____6CD5_672F_653B_51FB
            if ____cond32 then
                return "MATK"
            end
            ____cond32 = ____cond32 or ____switch32 == _____7269_7406_9632_5FA1
            if ____cond32 then
                return "PDEF"
            end
            ____cond32 = ____cond32 or ____switch32 == _____6CD5_672F_9632_5FA1
            if ____cond32 then
                return "MDEF"
            end
            do
                break
            end
        until true
        return "ATK"
    else
        repeat
            local ____switch34 = attr
            local ____cond34 = ____switch34 == _____57FA_7840_8840_91CF_4E0A_9650
            if ____cond34 then
                return "MN"
            end
            ____cond34 = ____cond34 or ____switch34 == _____653B_51FB
            if ____cond34 then
                return "ab"
            end
            ____cond34 = ____cond34 or ____switch34 == _____66B4_51FB_7387
            if ____cond34 then
                return "ef"
            end
            ____cond34 = ____cond34 or ____switch34 == _____653B_51FB_901F_5EA6
            if ____cond34 then
                return "STUV"
            end
            ____cond34 = ____cond34 or ____switch34 == _____95EA_907F_7387
            if ____cond34 then
                return "cd"
            end
            ____cond34 = ____cond34 or ____switch34 == _____547D_4E2D
            if ____cond34 then
                return "WX"
            end
            ____cond34 = ____cond34 or ____switch34 == _____6BCF_79D2_56DE_84DD
            if ____cond34 then
                return "klmn"
            end
            ____cond34 = ____cond34 or ____switch34 == _____6BD2_7CFB_6570
            if ____cond34 then
                return "IJKL"
            end
            ____cond34 = ____cond34 or ____switch34 == _____6CD5_672F_653B_51FB
            if ____cond34 then
                return "opqr"
            end
            ____cond34 = ____cond34 or ____switch34 == _____7269_7406_9632_5FA1
            if ____cond34 then
                return "EFGH"
            end
            ____cond34 = ____cond34 or ____switch34 == _____6CD5_672F_9632_5FA1
            if ____cond34 then
                return "ABCD"
            end
            do
                break
            end
        until true
        return "ab"
    end
end
____exports.effectController = make(nil, ____exports.EffectController)
return ____exports
