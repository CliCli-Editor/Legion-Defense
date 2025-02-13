local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__New = ____lualib.__TS__New
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["21"] = 12,["22"] = 12,["23"] = 12,["24"] = 12,["25"] = 19,["26"] = 12,["27"] = 19,["28"] = 20,["29"] = 21,["30"] = 22,["31"] = 23,["32"] = 24,["33"] = 25,["34"] = 14,["35"] = 15,["36"] = 16,["37"] = 18,["38"] = 30,["39"] = 33,["41"] = 34,["42"] = 34,["43"] = 35,["44"] = 36,["45"] = 37,["46"] = 38,["47"] = 40,["48"] = 41,["49"] = 42,["50"] = 43,["51"] = 44,["52"] = 44,["53"] = 44,["54"] = 44,["55"] = 44,["56"] = 44,["57"] = 45,["58"] = 46,["59"] = 46,["60"] = 46,["61"] = 46,["62"] = 46,["63"] = 46,["64"] = 46,["65"] = 47,["66"] = 48,["67"] = 49,["68"] = 49,["69"] = 49,["70"] = 49,["71"] = 49,["72"] = 49,["74"] = 34,["77"] = 52,["78"] = 30,["79"] = 55,["81"] = 56,["84"] = 59,["85"] = 60,["86"] = 61,["88"] = 61,["90"] = 62,["93"] = 65,["94"] = 66,["95"] = 67,["96"] = 68,["98"] = 68,["100"] = 69,["103"] = 72,["104"] = 73,["105"] = 74,["106"] = 75,["108"] = 75,["110"] = 76,["113"] = 79,["114"] = 80,["115"] = 80,["116"] = 80,["117"] = 80,["118"] = 81,["119"] = 82,["120"] = 83,["122"] = 83,["124"] = 84,["127"] = 87,["128"] = 88,["129"] = 89,["130"] = 90,["131"] = 91,["132"] = 92,["133"] = 93,["134"] = 94,["135"] = 95,["136"] = 96,["138"] = 98,["139"] = 99,["140"] = 100,["141"] = 101,["143"] = 103,["144"] = 105,["146"] = 55,["147"] = 108,["149"] = 110,["150"] = 111,["151"] = 112,["152"] = 113,["154"] = 113,["156"] = 114,["157"] = 115,["158"] = 116,["159"] = 117,["160"] = 118,["161"] = 119,["162"] = 120,["163"] = 121,["164"] = 122,["165"] = 123,["166"] = 124,["167"] = 125,["168"] = 125,["169"] = 125,["170"] = 125,["171"] = 125,["172"] = 126,["173"] = 127,["174"] = 128,["176"] = 130,["177"] = 131,["178"] = 132,["179"] = 133,["180"] = 134,["181"] = 135,["182"] = 135,["183"] = 135,["184"] = 135,["185"] = 135,["186"] = 136,["187"] = 137,["188"] = 138,["190"] = 140,["191"] = 142,["193"] = 145,["196"] = 108,["197"] = 150,["198"] = 151,["199"] = 150,["200"] = 157,["201"] = 158,["202"] = 159,["203"] = 159,["204"] = 160,["206"] = 161,["207"] = 161,["208"] = 161,["209"] = 161,["210"] = 161,["211"] = 162,["212"] = 163,["213"] = 164,["214"] = 165,["215"] = 166,["216"] = 161,["219"] = 168,["220"] = 157,["221"] = 171,["222"] = 172,["223"] = 173,["224"] = 173,["225"] = 174,["227"] = 175,["228"] = 175,["229"] = 175,["230"] = 176,["231"] = 177,["232"] = 177,["234"] = 178,["235"] = 179,["236"] = 180,["237"] = 175,["240"] = 182,["241"] = 171});
local ____exports = {}
local ____Easing = include("framework.animation.Easing")
local EasingChinese = ____Easing.EasingChinese
local ____Vector3 = include("framework.math.Vector3")
local normalize = ____Vector3.normalize
local ____Bezier = include("framework.fight.Bezier")
local Bezier = ____Bezier.Bezier
local utils = ____Bezier.utils
local ____MoverBase = include("framework.fight.MoverBase")
local MoverBase = ____MoverBase.MoverBase
--- 基于贝塞尔曲线的运动器，当曲线运动结束后，自动进入跟踪模式
____exports.TargetByBezierMover = __TS__Class()
local TargetByBezierMover = ____exports.TargetByBezierMover
TargetByBezierMover.name = "TargetByBezierMover"
__TS__ClassExtends(TargetByBezierMover, MoverBase)
function TargetByBezierMover.prototype.____constructor(self, _____64CD_4F5C_5355_4F4D, _____8DEF_5F84_70B9, _____66F2_7EBF_7C7B_578B, _____6B65_6570, _____7EC8_70B9, _____79FB_52A8_65F6_95F4, _____7ED3_675F_56DE_8C03)
    MoverBase.prototype.____constructor(self, _____64CD_4F5C_5355_4F4D)
    self["操作单位"] = _____64CD_4F5C_5355_4F4D
    self["路径点"] = _____8DEF_5F84_70B9
    self["曲线类型"] = _____66F2_7EBF_7C7B_578B
    self["步数"] = _____6B65_6570
    self["终点"] = _____7EC8_70B9
    self["移动时间"] = _____79FB_52A8_65F6_95F4
    self["结束回调"] = _____7ED3_675F_56DE_8C03
    self.bezierList = {}
    self._canMove = true
    self._lastT = 0
end
function TargetByBezierMover.prototype.start(self)
    local count = self["曲线类型"] == "quadratic" and 2 or 3
    do
        local i = 0
        while i < #self["路径点"] do
            local a = self["路径点"][i + 1]
            local b = self["路径点"][i + 1 + 1]
            local c = self["路径点"][i + 2 + 1]
            local d = self["路径点"][i + 3 + 1]
            if self["曲线类型"] == "quadratic" and c ~= nil then
                local bezier = __TS__New(Bezier, a, b, c)
                local lookUpTable = self:genSubdivideLookUpTable(bezier, self["步数"])
                lookUpTable = self:genAverageLookUpTable(bezier, lookUpTable, self["步数"])
                local ____self_bezierList_0 = self.bezierList
                ____self_bezierList_0[#____self_bezierList_0 + 1] = {
                    bezier = bezier,
                    length = bezier:length(),
                    lookUpTable = lookUpTable
                }
            elseif d ~= nil then
                local bezier = __TS__New(
                    Bezier,
                    a,
                    b,
                    c,
                    d
                )
                local lookUpTable = self:genSubdivideLookUpTable(bezier, self["步数"])
                lookUpTable = self:genAverageLookUpTable(bezier, lookUpTable, self["步数"])
                local ____self_bezierList_1 = self.bezierList
                ____self_bezierList_1[#____self_bezierList_1 + 1] = {
                    bezier = bezier,
                    length = bezier:length(),
                    lookUpTable = lookUpTable
                }
            end
            i = i + count
        end
    end
    self:timerStart()
end
function TargetByBezierMover.prototype.update(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if not self._canMove then
            return ____awaiter_resolve(nil)
        end
        if self._lastT >= 1 then
            self:timerStop()
            local ____opt_2 = self["结束回调"]
            if ____opt_2 ~= nil then
                self["结束回调"](self)
            end
            self:remove()
            return ____awaiter_resolve(nil)
        end
        local nextPath = self.bezierList[1]
        if nextPath == nil then
            self:timerStop()
            local ____opt_4 = self["结束回调"]
            if ____opt_4 ~= nil then
                self["结束回调"](self)
            end
            self:remove()
            return ____awaiter_resolve(nil)
        end
        local lookUpTable = nextPath.lookUpTable
        if lookUpTable == nil then
            self:timerStop()
            local ____opt_6 = self["结束回调"]
            if ____opt_6 ~= nil then
                self["结束回调"](self)
            end
            self:remove()
            return ____awaiter_resolve(nil)
        end
        local t = EasingChinese["二次方进"](EasingChinese, self._nowTime)
        local index = __TS__ArrayFindIndex(
            lookUpTable,
            function(____, t1) return t1.t > t end
        )
        if index == -1 then
            self:timerStop()
            local ____opt_8 = self["结束回调"]
            if ____opt_8 ~= nil then
                self["结束回调"](self)
            end
            self:remove()
            return ____awaiter_resolve(nil)
        end
        local x = 0
        local y = 0
        local z = 0
        if index > 0 then
            local prePoint = lookUpTable[index]
            local tp = (t - prePoint.t) / (lookUpTable[index + 1].t - prePoint.t)
            local nextPoint = lookUpTable[index + 1]
            x = (nextPoint.x - prePoint.x) * tp + prePoint.x
            y = (nextPoint.y - prePoint.y) * tp + prePoint.y
            z = (nextPoint.z - prePoint.z) * tp + prePoint.z
        else
            local prePoint = lookUpTable[1]
            x = prePoint.x
            y = prePoint.y
            z = prePoint.z
        end
        self._lastT = t
        self:moveTo(t * self["移动时间"], x, y, z)
    end)
end
function TargetByBezierMover.prototype.moveTo(self, t, x, y, z)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self["操作单位"].activeData ~= nil then
            local originPos = self["操作单位"]:getPosition()
            self["操作单位"]:setPosition({x = x, y = y}, true)
            local ____opt_10 = self["操作单位"].y3Unit
            if ____opt_10 ~= nil then
                ____opt_10:set_height(z, 0)
            end
            local newPos = self["操作单位"]:getPosition()
            local angle = self:getDirection(originPos, newPos)
            local v = {newPos.x - originPos.x, newPos.y - originPos.y, newPos.z - originPos.z}
            self._lastVec3 = normalize(nil, v)
            self["操作单位"]:setAngle(angle)
        elseif self["操作单位"].set_point ~= nil then
            local originPos = self["操作单位"]:get_point()
            local point = y3.point.create(x, y)
            self["操作单位"]:set_point(point, true)
            self["操作单位"]:set_height(z, 0)
            local newPos = self["操作单位"]:get_point()
            local v = {
                newPos:get_x() - originPos:get_x(),
                newPos:get_y() - originPos:get_y(),
                newPos:get_z() - originPos:get_z()
            }
            self._lastVec3 = normalize(nil, v)
            local angle = self:getDirection(originPos, newPos)
            self["操作单位"]:set_facing(angle, 0)
        else
            local originPos = self["操作单位"]:getProjectile():get_point()
            local point = y3.point.create(x, y)
            self["操作单位"]:getProjectile():set_point(point)
            self["操作单位"]:getProjectile():set_height(z)
            local newPos = self["操作单位"]:getProjectile():get_point()
            local v = {
                newPos:get_x() - originPos:get_x(),
                newPos:get_y() - originPos:get_y(),
                newPos:get_z() - originPos:get_z()
            }
            self._lastVec3 = normalize(nil, v)
            local angle = self:getDirection(originPos, newPos)
            self["操作单位"]:getProjectile():set_facing(angle)
        end
        if self["操作单位"].activeData ~= nil then
        elseif self["操作单位"].add_goods ~= nil then
        else
            self["操作单位"]:setVec3(self._lastVec3)
        end
    end)
end
function TargetByBezierMover.prototype.bezierAt(self, a, b, c, d, t)
    return (1 - t) ^ 3 * a + 3 * t * (1 - t) ^ 2 * b + 3 * t ^ 2 * (1 - t) * c + t ^ 3 * d
end
function TargetByBezierMover.prototype.genSubdivideLookUpTable(self, curve, steps)
    local LUT = curve:getLUT(steps * 10)
    LUT[1].d = 0
    local d = 0
    LUT[1].t = 0
    do
        local i = 1
        local e = #LUT - 1
        local p1
        local p2
        while i <= e do
            p1 = LUT[i]
            p2 = LUT[i + 1]
            d = d + utils:dist(p1, p2)
            p2.d = d
            p2.t = i / e
            i = i + 1
        end
    end
    return LUT
end
function TargetByBezierMover.prototype.genAverageLookUpTable(self, curve, LUT, steps)
    local d_len = LUT[#LUT].d
    local last_pos = 0
    local pos = 0
    local result = {}
    do
        local i = 0
        local e = steps
        while i <= e do
            local targetDistance = i / e * d_len
            while LUT[pos + 1].d < targetDistance do
                pos = pos + 1
            end
            last_pos = pos
            local p = curve:get(LUT[pos + 1].t)
            result[#result + 1] = p
            i = i + 1
        end
    end
    return result
end
return ____exports
