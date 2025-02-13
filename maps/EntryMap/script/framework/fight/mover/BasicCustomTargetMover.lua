local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 3,["11"] = 3,["12"] = 6,["13"] = 6,["14"] = 6,["15"] = 6,["16"] = 12,["17"] = 16,["18"] = 16,["20"] = 19,["21"] = 19,["23"] = 6,["24"] = 12,["25"] = 13,["26"] = 14,["27"] = 15,["28"] = 16,["29"] = 17,["30"] = 18,["31"] = 19,["32"] = 20,["33"] = 7,["34"] = 8,["35"] = 9,["36"] = 11,["37"] = 24,["38"] = 25,["39"] = 26,["40"] = 24,["41"] = 28,["42"] = 29,["43"] = 31,["44"] = 32,["45"] = 33,["47"] = 33,["49"] = 34,["50"] = 35,["51"] = 36,["52"] = 37,["55"] = 40,["56"] = 41,["58"] = 44,["59"] = 45,["61"] = 47,["62"] = 48,["64"] = 50,["65"] = 51,["67"] = 54,["68"] = 55,["69"] = 56,["70"] = 57,["71"] = 58,["72"] = 59,["73"] = 60,["74"] = 61,["75"] = 62,["76"] = 63,["77"] = 64,["78"] = 65,["79"] = 66,["80"] = 67,["81"] = 68,["83"] = 70,["84"] = 71,["85"] = 72,["87"] = 75,["88"] = 76,["89"] = 77,["90"] = 78,["91"] = 79,["92"] = 80,["93"] = 81,["94"] = 82,["95"] = 83,["96"] = 84,["97"] = 85,["99"] = 87,["100"] = 88,["101"] = 89,["103"] = 92,["104"] = 94,["105"] = 95,["106"] = 96,["107"] = 97,["108"] = 98,["110"] = 100,["111"] = 100,["112"] = 100,["113"] = 100,["116"] = 104,["117"] = 105,["118"] = 107,["119"] = 108,["120"] = 109,["121"] = 110,["122"] = 111,["123"] = 112,["124"] = 113,["125"] = 114,["126"] = 115,["127"] = 116,["128"] = 117,["129"] = 118,["131"] = 120,["132"] = 121,["133"] = 122,["134"] = 124,["136"] = 127,["138"] = 28,["139"] = 131,["140"] = 132,["141"] = 132,["142"] = 132,["143"] = 132,["144"] = 132,["145"] = 131});
local ____exports = {}
local ____Vector3 = include("framework.math.Vector3")
local normalize = ____Vector3.normalize
local slerp = ____Vector3.slerp
local ____MoverBase = include("framework.fight.MoverBase")
local MoverBase = ____MoverBase.MoverBase
____exports.BasicCustomTargetMover = __TS__Class()
local BasicCustomTargetMover = ____exports.BasicCustomTargetMover
BasicCustomTargetMover.name = "BasicCustomTargetMover"
__TS__ClassExtends(BasicCustomTargetMover, MoverBase)
function BasicCustomTargetMover.prototype.____constructor(self, _____64CD_4F5C_5355_4F4D, _____7EC8_70B9, _____901F_5EA6, _____6700_540E_8FD0_52A8_65B9_5411, _____7CFB_6570, _____52A0_901F_5EA6, _____6700_5927_901F_5EA6, _____7ED3_675F_79FB_52A8_8DDD_79BB, _____7ED3_675F_56DE_8C03)
    if _____7CFB_6570 == nil then
        _____7CFB_6570 = 0.1
    end
    if _____7ED3_675F_79FB_52A8_8DDD_79BB == nil then
        _____7ED3_675F_79FB_52A8_8DDD_79BB = 0
    end
    MoverBase.prototype.____constructor(self, _____64CD_4F5C_5355_4F4D)
    self["操作单位"] = _____64CD_4F5C_5355_4F4D
    self["终点"] = _____7EC8_70B9
    self["速度"] = _____901F_5EA6
    self["最后运动方向"] = _____6700_540E_8FD0_52A8_65B9_5411
    self["系数"] = _____7CFB_6570
    self["加速度"] = _____52A0_901F_5EA6
    self["最大速度"] = _____6700_5927_901F_5EA6
    self["结束移动距离"] = _____7ED3_675F_79FB_52A8_8DDD_79BB
    self["结束回调"] = _____7ED3_675F_56DE_8C03
    self._speed = nil
    self._lastNorVector = nil
    self._nextIsHit = false
end
function BasicCustomTargetMover.prototype.start(self)
    self._lastNorVector = self["最后运动方向"]
    self:timerStart()
end
function BasicCustomTargetMover.prototype.update(self)
    local distance = self:getDistance(self["操作单位"], self["终点"])
    if distance <= self["结束移动距离"] or self._nextIsHit then
        self:timerStop()
        local ____opt_0 = self["结束回调"]
        if ____opt_0 ~= nil then
            self["结束回调"](self)
        end
        self:remove()
        self._speed = nil
        local ____ = self._lastNorVector == nil
        self._nextIsHit = false
        return
    end
    if distance <= self["结束移动距离"] + (self._speed or 0) then
        self._nextIsHit = true
    end
    if self._speed == nil then
        self._speed = self["速度"] / 30
    end
    if self["加速度"] ~= nil then
        self._speed = self._speed + self["加速度"] / 30
    end
    if self["最大速度"] ~= nil then
        self._speed = math.min(self._speed, self["最大速度"] / 30)
    end
    local xf = 0
    local yf = 0
    local zf = 0
    if self["终点"].x ~= nil then
        xf = self["终点"].x
        yf = self["终点"].y
        zf = self["终点"].z
    elseif self["终点"].activeData ~= nil then
        xf = self["终点"]:getPosition().x
        yf = self["终点"]:getPosition().y
        zf = 150
    elseif self["终点"].add_goods ~= nil then
        xf = self["终点"]:get_point():get_x()
        yf = self["终点"]:get_point():get_y()
        zf = 150
    else
        xf = self["终点"]:getProjectile():get_point():get_x()
        yf = self["终点"]:getProjectile():get_point():get_y()
        zf = self["终点"]:getProjectile():get_point():get_z()
    end
    local xs = 0
    local ys = 0
    local zs = 0
    if self["操作单位"].activeData ~= nil then
        xs = self["操作单位"]:getPosition().x
        ys = self["操作单位"]:getPosition().y
        zs = 150
    elseif self["操作单位"].add_goods ~= nil then
        xs = self["操作单位"]:get_point():get_x()
        ys = self["操作单位"]:get_point():get_y()
        zs = 150
    else
        xs = self["操作单位"]:getProjectile():get_point():get_x()
        ys = self["操作单位"]:getProjectile():get_point():get_y()
        zs = self["操作单位"]:getProjectile():get_point():get_z()
    end
    local angle = self:getDirection({x = xs, y = ys}, {x = xf, y = yf})
    local v = {xf - xs, yf - ys, zf - zs}
    local vn = normalize(nil, v)
    if self._lastNorVector == nil then
        if self["操作单位"].getProjectile ~= nil then
            self._lastNorVector = self["操作单位"]:getVec3()
        else
            self._lastNorVector = normalize(
                nil,
                self:getVectorByAngle(angle)
            )
        end
    end
    local newV = slerp(nil, self._lastNorVector, vn, self["系数"])
    local vf = {newV[1] * self._speed, newV[2] * self._speed, newV[3] * self._speed}
    if self["操作单位"].activeData ~= nil then
        self["操作单位"]:setPosition({x = xs + vf[1], y = ys + vf[2], z = zs + vf[3]}, true)
        self["操作单位"]:setAngle(angle)
    elseif self["操作单位"].add_goods ~= nil then
        local point = y3.point.create(xs + vf[1], ys + vf[2], zs + vf[3])
        self["操作单位"]:set_point(point, true)
        self["操作单位"]:set_facing(angle, 0)
    elseif self["操作单位"].getProjectile ~= nil then
        local point = y3.point.create(xs + vf[1], ys + vf[2], zs + vf[3])
        self["操作单位"]:getProjectile():set_point(point)
        self["操作单位"]:getProjectile():set_height(zs + vf[3])
        self["操作单位"]:getProjectile():set_facing(angle)
    end
    self._lastNorVector = newV
    self._lastVec3 = self._lastNorVector
    if self["操作单位"].activeData ~= nil then
    elseif self["操作单位"].add_goods ~= nil then
    else
        self["操作单位"]:setVec3(self._lastVec3)
    end
end
function BasicCustomTargetMover.prototype.getVectorByAngle(self, angle)
    return {
        math.cos(angle),
        math.sin(angle),
        0
    }
end
return ____exports
