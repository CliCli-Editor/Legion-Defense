local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__Promise = ____lualib.__TS__Promise
local __TS__New = ____lualib.__TS__New
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 9,["20"] = 10,["21"] = 10,["22"] = 11,["23"] = 11,["24"] = 12,["25"] = 12,["26"] = 13,["27"] = 13,["28"] = 84,["29"] = 84,["30"] = 84,["31"] = 109,["32"] = 115,["33"] = 115,["35"] = 116,["36"] = 116,["38"] = 109,["39"] = 110,["40"] = 111,["41"] = 112,["42"] = 113,["43"] = 114,["44"] = 115,["45"] = 116,["46"] = 117,["47"] = 118,["48"] = 87,["49"] = 88,["50"] = 89,["51"] = 90,["52"] = 91,["53"] = 92,["54"] = 93,["55"] = 94,["56"] = 95,["57"] = 120,["58"] = 121,["59"] = 122,["60"] = 123,["61"] = 123,["62"] = 123,["63"] = 124,["64"] = 125,["65"] = 126,["68"] = 130,["69"] = 131,["70"] = 132,["71"] = 133,["72"] = 134,["73"] = 135,["74"] = 136,["75"] = 137,["76"] = 138,["77"] = 138,["78"] = 138,["80"] = 130,["81"] = 130,["82"] = 130,["83"] = 130,["84"] = 130,["85"] = 130,["86"] = 130,["87"] = 130,["88"] = 130,["89"] = 130,["90"] = 130,["91"] = 130,["92"] = 143,["93"] = 144,["95"] = 108,["96"] = 149,["98"] = 150,["99"] = 151,["100"] = 152,["103"] = 149,["104"] = 159,["108"] = 160,["109"] = 160,["110"] = 160,["111"] = 161,["112"] = 161,["113"] = 161,["114"] = 161,["115"] = 162,["116"] = 163,["117"] = 164,["118"] = 161,["119"] = 161,["120"] = 166,["121"] = 160,["122"] = 160,["125"] = 159,["126"] = 173,["127"] = 174,["128"] = 175,["129"] = 173,["130"] = 181,["131"] = 182,["132"] = 183,["133"] = 181,["134"] = 189,["135"] = 190,["138"] = 193,["139"] = 194,["140"] = 195,["141"] = 196,["142"] = 197,["144"] = 199,["145"] = 200,["146"] = 201,["148"] = 201,["151"] = 203,["152"] = 204,["153"] = 205,["155"] = 205,["158"] = 207,["159"] = 189,["160"] = 210,["161"] = 212,["162"] = 214,["163"] = 215,["164"] = 216,["165"] = 217,["166"] = 217,["167"] = 217,["168"] = 218,["169"] = 217,["170"] = 217,["171"] = 216,["173"] = 222,["174"] = 223,["175"] = 224,["176"] = 224,["177"] = 224,["178"] = 225,["179"] = 226,["180"] = 224,["181"] = 224,["182"] = 223,["184"] = 230,["185"] = 231,["186"] = 232,["187"] = 232,["188"] = 232,["189"] = 233,["190"] = 232,["191"] = 232,["192"] = 231,["194"] = 237,["195"] = 238,["196"] = 239,["197"] = 240,["198"] = 241,["199"] = 242,["200"] = 243,["201"] = 244,["204"] = 247,["205"] = 248,["206"] = 249,["210"] = 253,["211"] = 254,["212"] = 254,["213"] = 254,["214"] = 255,["215"] = 254,["216"] = 254,["218"] = 238,["220"] = 260,["221"] = 261,["222"] = 262,["223"] = 262,["224"] = 262,["225"] = 263,["226"] = 262,["227"] = 262,["228"] = 261,["230"] = 268,["231"] = 269,["232"] = 271,["233"] = 272,["234"] = 273,["235"] = 273,["236"] = 273,["237"] = 273,["239"] = 273,["240"] = 274,["241"] = 275,["242"] = 275,["243"] = 275,["244"] = 275,["246"] = 275,["247"] = 276,["248"] = 277,["249"] = 277,["250"] = 277,["251"] = 277,["253"] = 277,["254"] = 278,["255"] = 278,["256"] = 278,["257"] = 278,["259"] = 278,["260"] = 279,["261"] = 210,["262"] = 282,["263"] = 283,["264"] = 282,["265"] = 286,["266"] = 287,["267"] = 286,["268"] = 302,["269"] = 314,["270"] = 314,["271"] = 314,["272"] = 314,["273"] = 314,["274"] = 314,["275"] = 314,["276"] = 314,["277"] = 314,["278"] = 314,["279"] = 314,["280"] = 327,["281"] = 328,["282"] = 329,["284"] = 302,["285"] = 345,["286"] = 357,["289"] = 360,["290"] = 361,["292"] = 363,["295"] = 366,["296"] = 367,["298"] = 369,["299"] = 369,["300"] = 369,["301"] = 369,["302"] = 369,["303"] = 369,["304"] = 369,["305"] = 369,["306"] = 369,["307"] = 369,["308"] = 369,["309"] = 369,["310"] = 383,["311"] = 384,["312"] = 385,["314"] = 387,["316"] = 345,["317"] = 402,["318"] = 412,["319"] = 413,["321"] = 415,["322"] = 415,["323"] = 415,["324"] = 415,["325"] = 415,["326"] = 415,["327"] = 415,["328"] = 415,["329"] = 415,["330"] = 415,["331"] = 415,["332"] = 415,["333"] = 416,["334"] = 417,["335"] = 402,["336"] = 420,["337"] = 421,["338"] = 421,["339"] = 421,["340"] = 421,["341"] = 420,["342"] = 428,["343"] = 438,["344"] = 439,["346"] = 441,["347"] = 442,["348"] = 443,["349"] = 444,["351"] = 446,["353"] = 447,["354"] = 447,["355"] = 447,["356"] = 447,["357"] = 447,["358"] = 447,["359"] = 447,["360"] = 447,["361"] = 447,["362"] = 447,["363"] = 448,["364"] = 449,["365"] = 428,["366"] = 456,["367"] = 457,["368"] = 456,["369"] = 464,["370"] = 465,["371"] = 464,["372"] = 480,["373"] = 491,["374"] = 492,["375"] = 492,["376"] = 492,["377"] = 492,["379"] = 494,["380"] = 494,["381"] = 494,["382"] = 494,["383"] = 494,["384"] = 494,["385"] = 494,["386"] = 494,["387"] = 494,["388"] = 494,["389"] = 494,["390"] = 494,["391"] = 507,["392"] = 508,["393"] = 509,["395"] = 480,["396"] = 526,["397"] = 538,["398"] = 539,["399"] = 540,["400"] = 541,["402"] = 544,["403"] = 544,["404"] = 544,["405"] = 544,["406"] = 544,["407"] = 544,["408"] = 544,["409"] = 544,["410"] = 544,["411"] = 544,["412"] = 544,["413"] = 544,["414"] = 557,["415"] = 558,["416"] = 559,["418"] = 526,["419"] = 566,["420"] = 567,["423"] = 570,["424"] = 566,["425"] = 576,["426"] = 577,["427"] = 578,["429"] = 580,["430"] = 576,["431"] = 583,["432"] = 584,["433"] = 583,["434"] = 587,["435"] = 588,["436"] = 589,["438"] = 591,["439"] = 591,["440"] = 591,["441"] = 591,["442"] = 592,["443"] = 587,["444"] = 595,["445"] = 596,["446"] = 595,["447"] = 599,["448"] = 599,["449"] = 599,["451"] = 600,["452"] = 599});
local ____exports = {}
local ____SyncCounter = include("framework.data.SyncCounter")
local sync = ____SyncCounter.sync
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____BasicCustomTargetMover = include("framework.fight.mover.BasicCustomTargetMover")
local BasicCustomTargetMover = ____BasicCustomTargetMover.BasicCustomTargetMover
local ____TargetByBezierMover = include("framework.fight.mover.TargetByBezierMover")
local TargetByBezierMover = ____TargetByBezierMover.TargetByBezierMover
____exports.VisibleRule = VisibleRule or ({})
____exports.VisibleRule.ALL = 1
____exports.VisibleRule[____exports.VisibleRule.ALL] = "ALL"
____exports.VisibleRule.SELF_ONLY = 2
____exports.VisibleRule[____exports.VisibleRule.SELF_ONLY] = "SELF_ONLY"
____exports.VisibleRule.SELF_AND_FRIEND = 3
____exports.VisibleRule[____exports.VisibleRule.SELF_AND_FRIEND] = "SELF_AND_FRIEND"
____exports.VisibleRule.NOT_SELF_AND_FRIEND = 4
____exports.VisibleRule[____exports.VisibleRule.NOT_SELF_AND_FRIEND] = "NOT_SELF_AND_FRIEND"
____exports.Projectile = __TS__Class()
local Projectile = ____exports.Projectile
Projectile.name = "Projectile"
function Projectile.prototype.____constructor(self, owner, projectileId, target, angle, height, time, socket, visible_rule, ability, remove_immediately)
    if socket == nil then
        socket = "hit_point"
    end
    if visible_rule == nil then
        visible_rule = ____exports.VisibleRule.ALL
    end
    self.owner = owner
    self.projectileId = projectileId
    self.target = target
    self.angle = angle
    self.height = height
    self.time = time
    self.socket = socket
    self.visible_rule = visible_rule
    self.ability = ability
    self.remove_immediately = remove_immediately
    self._prepareData = {}
    self._listener = {}
    self._vec3 = {0, 0, 0}
    self._timerMap = {}
    self._customMoverMap = {}
    self._bezierMoverMap = {}
    self._randomId = 0
    self._customMap = {}
    self._onHitAlreadyNil = false
    if target.x ~= nil then
        target = y3.point.create(target.x, target.y)
    elseif target.activeData ~= nil then
        local ____temp_0 = target:getPosition()
        local x = ____temp_0.x
        local y = ____temp_0.y
        target = target.y3Unit
        if target == nil then
            target = y3.point.create(x, y)
        end
    end
    local ____y3_projectile_create_9 = y3.projectile.create
    local ____projectileId_2 = projectileId
    local ____target_3 = target
    local ____angle_4 = angle
    local ____height_5 = height
    local ____time_6 = time
    local ____owner_y3Unit_7 = owner.y3Unit
    local ____ability_8 = ability
    local ____remove_immediately_1 = remove_immediately
    if ____remove_immediately_1 == nil then
        ____remove_immediately_1 = false
    end
    self._projectile = ____y3_projectile_create_9({
        key = ____projectileId_2,
        target = ____target_3,
        angle = ____angle_4,
        height = ____height_5,
        time = ____time_6,
        owner = ____owner_y3Unit_7,
        ability = ____ability_8,
        remove_immediately = ____remove_immediately_1,
        socket = socket,
        visible_rule = visible_rule
    })
    if time ~= nil then
        self:destoryTimer(time)
    end
end
function Projectile.prototype.destoryTimer(self, time)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(self:awaitTime(time))
        if self._listener.onDestory ~= nil then
            self._listener.onDestory()
        end
    end)
end
function Projectile.prototype.awaitTime(self, timeout)
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
function Projectile.prototype.prepare(self, data)
    self._prepareData = data
    return self
end
function Projectile.prototype.listener(self, listener)
    self._listener = listener
    return self
end
function Projectile.prototype.remove(self)
    if self._projectile == nil then
        return
    end
    self._projectile:remove()
    self._projectile = nil
    for k in pairs(self._timerMap) do
        self._timerMap[k]:pause()
        self._timerMap[k]:remove()
    end
    self._timerMap = nil
    for k in pairs(self._customMoverMap) do
        local ____opt_10 = self._customMoverMap[k]
        if ____opt_10 ~= nil then
            ____opt_10:remove()
        end
    end
    self._customMoverMap = {}
    for k in pairs(self._bezierMoverMap) do
        local ____opt_12 = self._bezierMoverMap[k]
        if ____opt_12 ~= nil then
            ____opt_12:remove()
        end
    end
    self._bezierMoverMap = {}
end
function Projectile.prototype.applyData(self, data)
    local me = self
    local listener = self._listener
    if listener.onBlock ~= nil then
        data.on_block = function(self)
            sync(
                nil,
                function()
                    listener.onBlock()
                end
            )
        end
    end
    if listener.onBreak ~= nil then
        data.on_break = function(self)
            sync(
                nil,
                function()
                    listener.onBreak()
                    me:remove()
                end
            )
        end
    end
    if listener.onFinish ~= nil then
        data.on_finish = function(self)
            sync(
                nil,
                function()
                    listener.onFinish()
                end
            )
        end
    end
    if listener.onHit ~= nil then
        data.on_hit = function(self, unit)
            local unitEntity = fight.allY3UnitMap[unit and unit.id]
            if unitEntity ~= nil then
                local fight = unitEntity.fight
                if fight.globalUnitFilter ~= nil then
                    if not fight:globalUnitFilter(me.owner, unitEntity) then
                        unitEntity = nil
                    end
                end
                if unitEntity ~= nil and fight.projectileUnitFilter ~= nil then
                    if not fight:projectileUnitFilter(me.owner, unitEntity) then
                        unitEntity = nil
                    end
                end
            end
            if unitEntity ~= nil or me._onHitAlreadyNil then
                sync(
                    nil,
                    function()
                        listener.onHit(unitEntity)
                    end
                )
            end
        end
    end
    if listener.onRemove ~= nil then
        data.on_remove = function()
            sync(
                nil,
                function()
                    listener.onRemove()
                end
            )
        end
    end
    data.ability = self.ability
    data.unit = self.owner.y3Unit
    data.hit_type = self._prepareData.hit_type or data.hit_type
    data.hit_radius = self._prepareData.hit_radius or data.hit_radius
    local ____data_17 = data
    local ____self__prepareData_hit_same_16 = self._prepareData.hit_same
    if ____self__prepareData_hit_same_16 == nil then
        ____self__prepareData_hit_same_16 = data.hit_same
    end
    ____data_17.hit_same = ____self__prepareData_hit_same_16
    data.hit_interval = self._prepareData.hit_interval or data.hit_interval
    local ____data_19 = data
    local ____self__prepareData_terrain_block_18 = self._prepareData.terrain_block
    if ____self__prepareData_terrain_block_18 == nil then
        ____self__prepareData_terrain_block_18 = data.terrain_block
    end
    ____data_19.terrain_block = ____self__prepareData_terrain_block_18
    data.block_interval = self._prepareData.block_interval or data.block_interval
    local ____data_21 = data
    local ____self__prepareData_absolute_height_20 = self._prepareData.absolute_height
    if ____self__prepareData_absolute_height_20 == nil then
        ____self__prepareData_absolute_height_20 = true
    end
    ____data_21.absolute_height = ____self__prepareData_absolute_height_20
    local ____data_23 = data
    local ____self__prepareData_face_angle_22 = self._prepareData.face_angle
    if ____self__prepareData_face_angle_22 == nil then
        ____self__prepareData_face_angle_22 = data.face_angle
    end
    ____data_23.face_angle = ____self__prepareData_face_angle_22
    data.priority = self._prepareData.priority or data.priority
end
function Projectile.prototype.setCustomData(self, key, value)
    self._customMap[key] = value
end
function Projectile.prototype.getCustomData(self, key)
    return self._customMap[key] or 0
end
function Projectile.prototype.moverLine(self, angle, distance, speed, acceleration, max_speed, min_speed, init_height, fin_height, parabola_height)
    local data = {
        angle = angle,
        distance = distance,
        speed = speed,
        acceleration = acceleration,
        max_speed = max_speed,
        min_speed = min_speed,
        init_height = init_height,
        parabola_height = parabola_height,
        fin_height = fin_height
    }
    self:applyData(data)
    if self._projectile ~= nil then
        return self._projectile:mover_line(data)
    end
end
function Projectile.prototype.moverTarget(self, target, speed, target_distance, acceleration, max_speed, min_speed, height, parabola_height, bind_point)
    if target == nil then
        return
    end
    if target.activeData ~= nil then
        target = target.y3Unit
    end
    if target == nil then
        return
    end
    if bind_point == nil or bind_point == "" then
        bind_point = "hit_point"
    end
    local data = {
        target = target,
        speed = speed,
        target_distance = target_distance,
        acceleration = acceleration,
        max_speed = max_speed,
        min_speed = min_speed,
        height = height,
        parabola_height = parabola_height,
        bind_point = bind_point,
        face_angle = true
    }
    self:applyData(data)
    if self._projectile ~= nil and data.target ~= nil then
        return self._projectile:mover_target(data)
    else
        self:remove()
    end
end
function Projectile.prototype.moverTargetCustom(self, target, speed, target_distance, lastVec3, ratio, acceleration, max_speed, onFinish)
    if target.activeData ~= nil then
        target = target.y3Unit
    end
    local customTargetMover = __TS__New(
        BasicCustomTargetMover,
        self,
        target,
        speed,
        lastVec3,
        ratio,
        acceleration,
        max_speed,
        target_distance,
        onFinish
    )
    customTargetMover:start()
    self._customMoverMap[self:genRandomId()] = customTargetMover
end
function Projectile.prototype.genRandomId(self)
    local ____self_24, ____randomId_25 = self, "_randomId"
    local ____self__randomId_26 = ____self_24[____randomId_25]
    ____self_24[____randomId_25] = ____self__randomId_26 + 1
    return ____self__randomId_26
end
function Projectile.prototype.moverBezier(self, unit, target, path, speed, steps, time, curve_type, onFinish)
    if target.activeData ~= nil then
        target = target.y3Unit
    end
    local curTypeNum = curve_type or 0
    local curType
    if curTypeNum == 0 then
        curType = "quadratic"
    else
        curType = "cubic"
    end
    local bezierMover = __TS__New(
        TargetByBezierMover,
        unit,
        path,
        curType,
        steps,
        target,
        time,
        onFinish
    )
    bezierMover:start()
    self._bezierMoverMap[self:genRandomId()] = bezierMover
end
function Projectile.prototype.setVec3(self, v)
    self._vec3 = v
end
function Projectile.prototype.getVec3(self)
    return self._vec3
end
function Projectile.prototype.moverCurve(self, angle, distance, speed, path, acceleration, max_speed, min_speed, init_height, fin_height)
    if #path > 0 and path[1].x ~= nil then
        path = __TS__ArrayMap(
            path,
            function(____, a) return y3.point.create(a.x, a.y) end
        )
    end
    local data = {
        angle = angle,
        distance = distance,
        speed = speed,
        path = path,
        acceleration = acceleration,
        max_speed = max_speed,
        min_speed = min_speed,
        init_height = init_height,
        fin_height = fin_height,
        face_angle = true
    }
    self:applyData(data)
    if self._projectile ~= nil then
        return self._projectile:mover_curve(data)
    end
end
function Projectile.prototype.moverRound(self, target, radius, angle_speed, init_angle, clock_wise, round_time, radius_speed, lifting_speed, height, target_point)
    if target.x ~= nil then
        target = y3.point.create(target.x, target.y)
    elseif target.activeData ~= nil then
        target = target.y3Unit
    end
    local data = {
        target = target,
        radius = radius,
        angle_speed = angle_speed,
        init_angle = init_angle,
        clock_wise = clock_wise,
        round_time = round_time,
        radius_speed = radius_speed,
        lifting_speed = lifting_speed,
        height = height,
        target_point = target_point
    }
    self:applyData(data)
    if self._projectile ~= nil then
        return self._projectile:mover_round(data)
    end
end
function Projectile.prototype.moveStop(self)
    if self._projectile == nil then
        return
    end
    self._projectile:break_mover()
end
function Projectile.prototype.getTime(self)
    if self._projectile == nil then
        return 0
    end
    return self._projectile:get_left_time()
end
function Projectile.prototype.getProjectile(self)
    return self._projectile
end
function Projectile.prototype.getPosition(self)
    if self._projectile == nil then
        return nil
    end
    local pos = {
        x = self._projectile:get_point():get_x(),
        y = self._projectile:get_point():get_y()
    }
    return pos
end
function Projectile.prototype.setScale(self, scale)
    self._projectile:set_scale(scale, scale, scale)
end
function Projectile.prototype.setOnHitAlreadyNil(self, bool)
    if bool == nil then
        bool = true
    end
    self._onHitAlreadyNil = bool
end
return ____exports
