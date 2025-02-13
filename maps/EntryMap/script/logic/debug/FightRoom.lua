local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__StringEndsWith = ____lualib.__TS__StringEndsWith
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__ObjectValues = ____lualib.__TS__ObjectValues
local __TS__ObjectKeys = ____lualib.__TS__ObjectKeys
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 9,["26"] = 10,["27"] = 12,["28"] = 13,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 12,["36"] = 16,["37"] = 16,["38"] = 16,["39"] = 16,["40"] = 20,["41"] = 16,["42"] = 18,["43"] = 23,["45"] = 24,["46"] = 25,["48"] = 27,["49"] = 28,["53"] = 31,["55"] = 32,["56"] = 33,["58"] = 35,["59"] = 36,["63"] = 20,["64"] = 41,["65"] = 42,["66"] = 42,["67"] = 42,["68"] = 42,["69"] = 41,["70"] = 47,["71"] = 48,["72"] = 47,["73"] = 54,["74"] = 55,["75"] = 56,["76"] = 56,["77"] = 56,["78"] = 56,["79"] = 58,["80"] = 68,["81"] = 69,["82"] = 70,["83"] = 71,["85"] = 73,["86"] = 74,["87"] = 75,["88"] = 77,["89"] = 78,["90"] = 79,["91"] = 79,["93"] = 81,["94"] = 81,["96"] = 84,["97"] = 86,["98"] = 54,["99"] = 89,["100"] = 94,["101"] = 95,["102"] = 96,["103"] = 97,["104"] = 97,["106"] = 98,["107"] = 98,["111"] = 89,["112"] = 103,["115"] = 114,["118"] = 105,["119"] = 106,["120"] = 107,["121"] = 108,["122"] = 109,["123"] = 110,["131"] = 103,["132"] = 118,["135"] = 133,["138"] = 120,["139"] = 121,["140"] = 122,["141"] = 123,["142"] = 124,["143"] = 125,["144"] = 125,["145"] = 125,["146"] = 125,["147"] = 125,["148"] = 126,["149"] = 127,["152"] = 130,["159"] = 118,["160"] = 137,["161"] = 138,["162"] = 139,["163"] = 140,["164"] = 141,["166"] = 143,["167"] = 144,["169"] = 146,["170"] = 147,["171"] = 147,["172"] = 147,["173"] = 147,["174"] = 147,["175"] = 147,["177"] = 149,["178"] = 150,["180"] = 152,["181"] = 153,["182"] = 154,["183"] = 155,["184"] = 156,["185"] = 157,["186"] = 158,["187"] = 160,["188"] = 161,["189"] = 162,["190"] = 163,["192"] = 166,["193"] = 167,["195"] = 169,["196"] = 170,["198"] = 173,["199"] = 173,["202"] = 177,["203"] = 137,["204"] = 180,["205"] = 181,["206"] = 180,["207"] = 184,["208"] = 186,["209"] = 187,["211"] = 190,["212"] = 191,["213"] = 192,["214"] = 192,["217"] = 195,["218"] = 197,["219"] = 198,["220"] = 199,["221"] = 200,["222"] = 202,["224"] = 203,["225"] = 203,["226"] = 202,["228"] = 202,["229"] = 202,["230"] = 202,["231"] = 202,["232"] = 202,["233"] = 202,["234"] = 202,["235"] = 202,["236"] = 202,["237"] = 202,["238"] = 202,["239"] = 202,["241"] = 217,["242"] = 218,["244"] = 221,["245"] = 222,["247"] = 225,["248"] = 226,["250"] = 229,["251"] = 230,["253"] = 233,["254"] = 234,["255"] = 234,["256"] = 234,["257"] = 235,["259"] = 236,["260"] = 236,["261"] = 237,["262"] = 236,["265"] = 234,["266"] = 234,["267"] = 274,["268"] = 275,["270"] = 278,["271"] = 279,["273"] = 282,["274"] = 283,["275"] = 284,["277"] = 288,["278"] = 289,["279"] = 291,["280"] = 292,["283"] = 295,["284"] = 296,["286"] = 195,["287"] = 300,["288"] = 301,["289"] = 301,["290"] = 301,["291"] = 302,["292"] = 303,["293"] = 303,["294"] = 303,["295"] = 304,["296"] = 303,["297"] = 303,["298"] = 301,["299"] = 301,["301"] = 308,["303"] = 184});
local ____exports = {}
local ____SyncCounter = include("framework.data.SyncCounter")
local sync = ____SyncCounter.sync
local ____DebugRoom = include("framework.debug.DebugRoom")
local DebugRoom = ____DebugRoom.DebugRoom
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____DFightRoom = include("logic.dialogs.DFightRoom")
local DFightRoom = ____DFightRoom.DFightRoom
local ____Property = include("logic.models.Property")
local map2numbers = ____Property.map2numbers
local numbers2map = ____Property.numbers2map
local Edittime = include("logic.debug.Edittime")
local Runtime = include("logic.debug.Runtime")
local function bind(self, ____self, name, func)
    ____self:registerAction(
        name,
        function(____, data) return func(
            ____self,
            table.unpack(data.args)
        ) end
    )
end
____exports.FightRoom = __TS__Class()
local FightRoom = ____exports.FightRoom
FightRoom.name = "FightRoom"
__TS__ClassExtends(FightRoom, DebugRoom)
function FightRoom.prototype.____constructor(self, fight)
    DebugRoom.prototype.____constructor(self, fight)
    self._battlegroundData = {camera = {x = 0, y = 0}, units = {}, seed = 0}
    for k in pairs(Edittime) do
        do
            if not __TS__StringEndsWith(k, "InEdittime") then
                goto __continue5
            end
            local cb = Edittime[k]
            bind(nil, self, k, cb)
        end
        ::__continue5::
    end
    for k in pairs(Runtime) do
        do
            if not __TS__StringEndsWith(k, "InRuntime") then
                goto __continue8
            end
            local cb = Runtime[k]
            bind(nil, self, k, cb)
        end
        ::__continue8::
    end
end
function FightRoom.prototype.genEdittimeData(self)
    return {
        battleground = self:save(),
        view = Edittime:genEdittimeView(self)
    }
end
function FightRoom.prototype.genRuntimeData(self)
    return {view = {Runtime:genRuntimeView(self.fight)}}
end
function FightRoom.prototype.save(self)
    local pos = y3.camera.get_camera_center_raycast(LOCAL.PLAYER)
    self._battlegroundData.camera = {
        x = pos:get_x(),
        y = pos:get_y()
    }
    local data = {camera = self._battlegroundData.camera, seed = self._battlegroundData.seed, units = {}}
    for ____, u in ipairs(self._battlegroundData.units) do
        local obj = {}
        for k in pairs(u) do
            obj[k] = u[k]
        end
        obj.baseProperties = map2numbers(nil, u.baseProperties)
        obj.defaultValues = map2numbers(nil, u.defaultValues)
        obj.effects = map2numbers(nil, u.effects)
        obj.baseStatus = {}
        for x in pairs(u.baseStatus) do
            local ____obj_baseStatus_0 = obj.baseStatus
            ____obj_baseStatus_0[#____obj_baseStatus_0 + 1] = x
        end
        local ____data_units_1 = data.units
        ____data_units_1[#____data_units_1 + 1] = obj
    end
    self:saveHistory(data)
    return data
end
function FightRoom.prototype.saveHistory(self, data)
    if #data.units > 0 then
        local file = io.open(lua_script_path .. "/.log/fight_room_history.json", "w")
        if file ~= nil then
            if file ~= nil then
                file:write(JSON:stringify(data))
            end
            if file ~= nil then
                file:close()
            end
        end
    end
end
function FightRoom.prototype.loadHistory(self)
    do
        local function ____catch(e)
            console:error("加载本地战场历史失败", e)
        end
        local ____try, ____hasReturned = pcall(function()
            local file = io.open(lua_script_path .. "/.log/fight_room_history.json", "r")
            if file ~= nil then
                local text = file:read()
                if text ~= nil then
                    local json = JSON:parse(text)
                    self:load(json)
                end
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function FightRoom.prototype.loadFromPath(self, path, reloadOk)
    do
        local function ____catch(e)
            console:error("加载本地战场历史失败", e)
        end
        local ____try, ____hasReturned = pcall(function()
            local readpath = (lua_script_path .. "/../../../../") .. path
            local file = io.open(readpath, "r")
            if file ~= nil then
                local text = file:read("a")
                if text ~= nil then
                    local content = __TS__StringReplaceAll(
                        __TS__StringReplaceAll(text, "\n", ""),
                        "\r",
                        ""
                    )
                    local json = JSON:parse(content)
                    self:load(json, reloadOk)
                end
            else
                console:error("无法加载文件", readpath)
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function FightRoom.prototype.load(self, data, reloadOk)
    local battlegroundPath = nil
    if data.battlegroundPath ~= nil then
        battlegroundPath = data.battlegroundPath
        data = JSON:parse(data.data)
    end
    if battlegroundPath ~= nil then
        self.fight.report.id = battlegroundPath
    end
    if #self._battlegroundData.units == 0 and data.camera ~= nil then
        y3.camera.linear_move_by_time(
            LOCAL.PLAYER,
            y3.point.create(data.camera.x, data.camera.y),
            0.25,
            1
        )
    end
    if data.seed then
        self._seed = data.seed
    end
    if data then
        local battleground = data
        for ____, u in ipairs(battleground.units) do
            local unit = u
            unit.baseProperties = numbers2map(nil, u.baseProperties)
            unit.defaultValues = numbers2map(nil, u.defaultValues)
            unit.effects = numbers2map(nil, u.effects)
            local baseStatus = u.baseStatus
            unit.baseStatus = {}
            for ____, x in ipairs(baseStatus) do
                unit.baseStatus[x] = true
            end
            if unit.simpleSkills == nil then
                unit.simpleSkills = {}
            end
            if unit.tags == nil then
                unit.tags = {}
            end
            local ____self__battlegroundData_units_6 = self._battlegroundData.units
            ____self__battlegroundData_units_6[#____self__battlegroundData_units_6 + 1] = unit
        end
    end
    self:reload(reloadOk)
end
function FightRoom.prototype.clear(self)
    self._battlegroundData.units = {}
end
function FightRoom.prototype.reload(self, reloadOk)
    if not self._isRunning then
        y3.game.resume_soft_pause()
    end
    local unitMap = __TS__ObjectValues(self.fight.allUnitMap)
    for ____, unit in ipairs(unitMap) do
        if unit ~= nil then
            unit:destroy(unit)
        end
    end
    local function load()
        console:log("seed", self._seed)
        y3.game.set_random_seed(self._seed)
        local id = 0
        for ____, unit in ipairs(self._battlegroundData.units) do
            local ____self_10 = self.fight
            local ____self_10_createUnitEntity_11 = ____self_10.createUnitEntity
            local ____id_9 = id
            id = ____id_9 + 1
            local unitEntity = ____self_10_createUnitEntity_11(
                ____self_10,
                {
                    id = ____id_9,
                    level = unit.level,
                    name = "",
                    playerId = unit.playerId,
                    roleId = unit.roleId,
                    pos = unit.position,
                    baseProperties = map2numbers(nil, unit.baseProperties),
                    defaultValues = unit.defaultValues,
                    safeTable = true,
                    customData = {projectileList = {}}
                }
            )
            for ____, skill in ipairs(unit.commandSkills) do
                unitEntity:addSkill(unitEntity, skill, "命令")
            end
            for ____, skill in ipairs(unit.hiddenSkills) do
                unitEntity:addSkill(unitEntity, skill, "隐藏")
            end
            for ____, skill in ipairs(unit.normalSkills) do
                unitEntity:addSkill(unitEntity, skill, "普通")
            end
            for ____, skill in ipairs(unit.heroSkills) do
                unitEntity:addSkill(unitEntity, skill, "英雄")
            end
            local simpleSkillKeys = __TS__ObjectKeys(unit.simpleSkills)
            __TS__ArrayForEach(
                simpleSkillKeys,
                function(____, skillName)
                    local count = unit.simpleSkills[skillName]
                    do
                        local i = 0
                        while i < count do
                            unitEntity:addSimpleSkill(unitEntity, skillName)
                            i = i + 1
                        end
                    end
                end
            )
            for st in pairs(unit.baseStatus) do
                unitEntity:setBaseState(unitEntity, st, true)
            end
            for ____, tag in ipairs(unit.tags) do
                unitEntity:addTag(unitEntity, tag)
            end
            for eff in pairs(unit.effects) do
                local quantity = unit.effects[eff]
                unitEntity:addEffect(unitEntity, eff, quantity)
            end
            unitEntity:addEffect(unitEntity, 31)
            unitEntity:addEffect(unitEntity, 32)
            if dialogs:get(DFightRoom) == nil then
                dialogs:show(DFightRoom, {rankStatus = 1, showMessage = true})
            end
        end
        if reloadOk ~= nil then
            reloadOk(nil)
        end
    end
    if not self._isRunning then
        y3.ctimer.wait(
            0.1,
            function()
                y3.game.enable_soft_pause()
                sync(
                    nil,
                    function()
                        load(nil)
                    end
                )
            end
        )
    else
        load(nil)
    end
end
return ____exports
