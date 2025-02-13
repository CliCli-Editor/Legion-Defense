local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__Promise = ____lualib.__TS__Promise
local __TS__New = ____lualib.__TS__New
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 12,["16"] = 12,["17"] = 5,["18"] = 7,["19"] = 8,["20"] = 9,["21"] = 11,["22"] = 24,["23"] = 25,["24"] = 25,["25"] = 25,["26"] = 26,["27"] = 27,["28"] = 25,["29"] = 25,["30"] = 24,["31"] = 31,["32"] = 32,["34"] = 32,["36"] = 33,["38"] = 33,["40"] = 34,["41"] = 35,["42"] = 31,["43"] = 38,["44"] = 39,["46"] = 39,["48"] = 41,["49"] = 42,["50"] = 43,["51"] = 44,["53"] = 44,["55"] = 45,["57"] = 45,["60"] = 47,["62"] = 38,["63"] = 54,["67"] = 55,["68"] = 55,["69"] = 55,["70"] = 56,["71"] = 56,["72"] = 56,["73"] = 56,["74"] = 57,["75"] = 58,["76"] = 59,["77"] = 56,["78"] = 56,["79"] = 61,["80"] = 55,["81"] = 55,["84"] = 54,["85"] = 68,["86"] = 70,["87"] = 71,["88"] = 72,["90"] = 74,["91"] = 75,["92"] = 76,["94"] = 78,["95"] = 79,["98"] = 84,["99"] = 85,["101"] = 88,["102"] = 89,["103"] = 90,["104"] = 91,["105"] = 92,["106"] = 93,["107"] = 94,["108"] = 95,["109"] = 96,["110"] = 97,["111"] = 98,["112"] = 99,["113"] = 100,["114"] = 101,["115"] = 102,["116"] = 103,["117"] = 104,["118"] = 105,["119"] = 106,["120"] = 107,["121"] = 108,["123"] = 110,["124"] = 111,["125"] = 112,["127"] = 114,["128"] = 115,["130"] = 118,["131"] = 119,["132"] = 120,["133"] = 121,["134"] = 122,["135"] = 123,["136"] = 124,["137"] = 125,["138"] = 126,["139"] = 127,["140"] = 128,["141"] = 129,["142"] = 130,["143"] = 131,["144"] = 132,["145"] = 133,["146"] = 134,["147"] = 135,["148"] = 136,["149"] = 137,["150"] = 138,["152"] = 140,["153"] = 141,["154"] = 142,["156"] = 144,["157"] = 145,["159"] = 148,["160"] = 150,["161"] = 68,["162"] = 156,["163"] = 158,["164"] = 159,["165"] = 160,["167"] = 162,["168"] = 163,["169"] = 164,["171"] = 166,["172"] = 167,["175"] = 172,["176"] = 173,["178"] = 176,["179"] = 177,["180"] = 178,["181"] = 179,["182"] = 180,["183"] = 181,["184"] = 182,["185"] = 183,["186"] = 184,["187"] = 185,["188"] = 186,["189"] = 187,["190"] = 188,["191"] = 189,["192"] = 190,["193"] = 191,["194"] = 192,["195"] = 193,["196"] = 194,["197"] = 195,["199"] = 197,["200"] = 198,["201"] = 199,["203"] = 201,["204"] = 202,["206"] = 205,["207"] = 206,["208"] = 207,["209"] = 208,["210"] = 209,["211"] = 210,["212"] = 211,["213"] = 212,["214"] = 213,["215"] = 214,["216"] = 215,["217"] = 216,["218"] = 217,["219"] = 218,["220"] = 219,["221"] = 220,["222"] = 221,["223"] = 222,["224"] = 223,["225"] = 224,["227"] = 226,["228"] = 227,["229"] = 228,["231"] = 230,["232"] = 231,["234"] = 234,["235"] = 236,["236"] = 156,["237"] = 240,["238"] = 240,["239"] = 240,["241"] = 242,["242"] = 240,["243"] = 245,["244"] = 246,["245"] = 246,["246"] = 246,["247"] = 247,["248"] = 246,["249"] = 246,["250"] = 245,["251"] = 251,["252"] = 252,["254"] = 252,["256"] = 253,["258"] = 253,["260"] = 254,["261"] = 251,["262"] = 257,["263"] = 258,["264"] = 259,["267"] = 263,["270"] = 261,["277"] = 257,["278"] = 268,["279"] = 269,["280"] = 270,["281"] = 270,["284"] = 274,["287"] = 272,["293"] = 268,["294"] = 278,["295"] = 279,["296"] = 280,["297"] = 281,["299"] = 278,["300"] = 286});
local ____exports = {}
____exports.MoverBase = __TS__Class()
local MoverBase = ____exports.MoverBase
MoverBase.name = "MoverBase"
function MoverBase.prototype.____constructor(self, _____64CD_4F5C_5355_4F4D)
    self["操作单位"] = _____64CD_4F5C_5355_4F4D
    self.parent = nil
    self._timerMap = {}
    self._nowTime = 0
    self._lastVec3 = {0, 0, 0}
end
function MoverBase.prototype.timerStart(self)
    self._timer = y3.ltimer.loop_frame(
        1,
        function()
            self:update()
            self._nowTime = self._nowTime + 1 / 30
        end
    )
end
function MoverBase.prototype.timerStop(self)
    local ____opt_0 = self._timer
    if ____opt_0 ~= nil then
        ____opt_0:pause()
    end
    local ____opt_2 = self._timer
    if ____opt_2 ~= nil then
        ____opt_2:remove()
    end
    self._timer = nil
    self._nowTime = 0
end
function MoverBase.prototype.remove(self)
    local ____opt_4 = self.parent
    if ____opt_4 ~= nil then
        ____opt_4:remove(self)
    end
    self:timerStop()
    if self._timerMap ~= nil then
        for k in pairs(self._timerMap) do
            local ____opt_6 = self._timerMap[k]
            if ____opt_6 ~= nil then
                ____opt_6:pause()
            end
            local ____opt_8 = self._timerMap[k]
            if ____opt_8 ~= nil then
                ____opt_8:remove()
            end
        end
        self._timerMap = nil
    end
end
function MoverBase.prototype.awaitTime(self, timeout)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        return ____awaiter_resolve(
            nil,
            __TS__New(
                __TS__Promise,
                function(____, resolve)
                    local t
                    t = y3.ltimer.wait(
                        timeout,
                        function(timer)
                            self._timerMap[t.id] = nil
                            timer:remove()
                            resolve(nil)
                        end
                    )
                    self._timerMap[t.id] = t
                end
            )
        )
    end)
end
function MoverBase.prototype.getDirection(self, _____4ECE_54EA_513F, _____5230_54EA_513F)
    if _____4ECE_54EA_513F == nil then
        console:warn("this.getDirection 异常 从哪儿 = nil")
        return 0
    end
    if _____5230_54EA_513F == nil then
        if _____4ECE_54EA_513F.activeData ~= nil then
            return _____4ECE_54EA_513F:getAngle()
        else
            console:warn("this.getDirection 异常 到哪儿 = nil")
            return 0
        end
    end
    if _____5230_54EA_513F.activeData ~= nil and not _____5230_54EA_513F:isAlive() and _____4ECE_54EA_513F.activeData ~= nil then
        return _____4ECE_54EA_513F:getAngle()
    end
    local ax = 0
    local ay = 0
    local az = nil
    if _____4ECE_54EA_513F.activeData ~= nil then
        local p = _____4ECE_54EA_513F:getPosition()
        ax = p.x
        ay = p.y
        az = p.z
    elseif _____4ECE_54EA_513F.get_x ~= nil then
        ax = _____4ECE_54EA_513F:get_x()
        ay = _____4ECE_54EA_513F:get_y()
        az = _____4ECE_54EA_513F:get_z()
    elseif _____4ECE_54EA_513F.handle ~= nil then
        ax = _____4ECE_54EA_513F:get_point():get_x()
        ay = _____4ECE_54EA_513F:get_point():get_y()
        az = _____4ECE_54EA_513F:get_point():get_z()
    elseif _____4ECE_54EA_513F.getProjectile ~= nil then
        local p = _____4ECE_54EA_513F:getProjectile():get_point()
        ax = p:get_x()
        ay = p:get_y()
        az = p:get_z()
    else
        ax = _____4ECE_54EA_513F.x
        ay = _____4ECE_54EA_513F.y
        az = _____4ECE_54EA_513F.z
    end
    if az == nil then
        az = 0
    end
    local bx = 0
    local by = 0
    local bz = nil
    if _____5230_54EA_513F.activeData ~= nil then
        local p = _____5230_54EA_513F:getPosition()
        bx = p.x
        by = p.y
        bz = p.z
    elseif _____5230_54EA_513F.get_x ~= nil then
        bx = _____5230_54EA_513F:get_x()
        by = _____5230_54EA_513F:get_y()
        bz = _____5230_54EA_513F:get_z()
    elseif _____5230_54EA_513F.handle ~= nil then
        bx = _____5230_54EA_513F:get_point():get_x()
        by = _____5230_54EA_513F:get_point():get_y()
        bz = _____5230_54EA_513F:get_point():get_z()
    elseif _____5230_54EA_513F.getProjectile ~= nil then
        local p = _____5230_54EA_513F:getProjectile():get_point()
        bx = p:get_x()
        by = p:get_y()
        bz = p:get_z()
    else
        bx = _____5230_54EA_513F.x
        by = _____5230_54EA_513F.y
        bz = _____5230_54EA_513F.z
    end
    if bz == nil then
        bz = 0
    end
    local angle = math.atan(bx - ax, by - ay) * 180 / math.pi
    return angle
end
function MoverBase.prototype.getDistance(self, _____4ECE_54EA_513F, _____5230_54EA_513F)
    if _____4ECE_54EA_513F == nil then
        console:warn("this.getDirection 异常 从哪儿 = nil")
        return 0
    end
    if _____5230_54EA_513F == nil then
        if _____4ECE_54EA_513F.activeData ~= nil then
            return _____4ECE_54EA_513F:getAngle()
        else
            console:warn("this.getDirection 异常 到哪儿 = nil")
            return 0
        end
    end
    if _____5230_54EA_513F.activeData ~= nil and not _____5230_54EA_513F:isAlive() and _____4ECE_54EA_513F.activeData ~= nil then
        return _____4ECE_54EA_513F:getAngle()
    end
    local ax = 0
    local ay = 0
    local az = nil
    if _____4ECE_54EA_513F.activeData ~= nil then
        local p = _____4ECE_54EA_513F:getPosition()
        ax = p.x
        ay = p.y
        az = p.z
    elseif _____4ECE_54EA_513F.get_x ~= nil then
        ax = _____4ECE_54EA_513F:get_x()
        ay = _____4ECE_54EA_513F:get_y()
        az = _____4ECE_54EA_513F:get_z()
    elseif _____4ECE_54EA_513F.handle ~= nil then
        ax = _____4ECE_54EA_513F:get_point():get_x()
        ay = _____4ECE_54EA_513F:get_point():get_y()
        az = _____4ECE_54EA_513F:get_point():get_z()
    elseif _____4ECE_54EA_513F.getProjectile ~= nil then
        ax = _____4ECE_54EA_513F:getProjectile():get_point():get_x()
        ay = _____4ECE_54EA_513F:getProjectile():get_point():get_y()
        az = _____4ECE_54EA_513F:getProjectile():get_point():get_z()
    else
        ax = _____4ECE_54EA_513F.x
        ay = _____4ECE_54EA_513F.y
        az = _____4ECE_54EA_513F.z
    end
    if az == nil then
        az = 0
    end
    local bx = 0
    local by = 0
    local bz = nil
    if _____5230_54EA_513F.activeData ~= nil then
        local p = _____5230_54EA_513F:getPosition()
        bx = p.x
        by = p.y
        bz = p.z
    elseif _____5230_54EA_513F.get_x ~= nil then
        bx = _____5230_54EA_513F:get_x()
        by = _____5230_54EA_513F:get_y()
        bz = _____5230_54EA_513F:get_z()
    elseif _____5230_54EA_513F.handle ~= nil then
        bx = _____5230_54EA_513F:get_point():get_x()
        by = _____5230_54EA_513F:get_point():get_y()
        bz = _____5230_54EA_513F:get_point():get_z()
    elseif _____5230_54EA_513F.getProjectile ~= nil then
        bx = _____5230_54EA_513F:getProjectile():get_point():get_x()
        by = _____5230_54EA_513F:getProjectile():get_point():get_y()
        bz = _____5230_54EA_513F:getProjectile():get_point():get_z()
    else
        bx = _____5230_54EA_513F.x
        by = _____5230_54EA_513F.y
        bz = _____5230_54EA_513F.z
    end
    if bz == nil then
        bz = 0
    end
    local distance = math.sqrt((bx - ax) * (bx - ax) + (by - ay) * (by - ay) + (bz - az) * (bz - az))
    return distance
end
____exports.MoverManager = __TS__Class()
local MoverManager = ____exports.MoverManager
MoverManager.name = "MoverManager"
function MoverManager.prototype.____constructor(self)
    self._moverList = {}
end
function MoverManager.prototype.startTimer(self)
    self._timer = y3.ltimer.loop_frame(
        1,
        function()
            self:update()
        end
    )
end
function MoverManager.prototype.stopTimer(self)
    local ____opt_10 = self._timer
    if ____opt_10 ~= nil then
        ____opt_10:pause()
    end
    local ____opt_12 = self._timer
    if ____opt_12 ~= nil then
        ____opt_12:remove()
    end
    self._timer = nil
end
function MoverManager.prototype.update(self)
    local list = __TS__ArraySlice(self._moverList)
    for ____, m in ipairs(list) do
        do
            local function ____catch(e)
                console:error(e)
            end
            local ____try, ____hasReturned = pcall(function()
                m:update()
            end)
            if not ____try then
                ____catch(____hasReturned)
            end
        end
    end
end
function MoverManager.prototype.add(self, mover)
    mover.parent = self
    local ____self__moverList_14 = self._moverList
    ____self__moverList_14[#____self__moverList_14 + 1] = mover
    do
        local function ____catch(e)
            console:error(e)
        end
        local ____try, ____hasReturned = pcall(function()
            mover:start()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function MoverManager.prototype.remove(self, mover)
    local index = __TS__ArrayIndexOf(self._moverList, mover)
    if index ~= -1 then
        table.remove(self._moverList, index + 1)
    end
end
____exports.moverManager = __TS__New(____exports.MoverManager)
return ____exports
