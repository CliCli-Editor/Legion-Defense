local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ObjectValues = ____lualib.__TS__ObjectValues
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 5,["15"] = 37,["16"] = 37,["17"] = 37,["19"] = 42,["20"] = 44,["21"] = 45,["22"] = 47,["23"] = 48,["24"] = 50,["25"] = 53,["26"] = 54,["27"] = 56,["28"] = 37,["29"] = 58,["30"] = 59,["32"] = 60,["33"] = 60,["35"] = 61,["36"] = 62,["37"] = 63,["38"] = 64,["40"] = 66,["41"] = 66,["42"] = 66,["43"] = 66,["44"] = 66,["45"] = 66,["46"] = 67,["47"] = 68,["48"] = 69,["52"] = 60,["55"] = 73,["56"] = 74,["57"] = 75,["59"] = 77,["60"] = 77,["61"] = 77,["62"] = 78,["63"] = 77,["64"] = 77,["65"] = 80,["66"] = 80,["67"] = 80,["68"] = 81,["69"] = 82,["70"] = 83,["71"] = 80,["72"] = 80,["73"] = 85,["74"] = 85,["75"] = 85,["76"] = 86,["77"] = 85,["78"] = 85,["79"] = 101,["80"] = 101,["81"] = 101,["82"] = 101,["83"] = 58,["84"] = 104,["85"] = 105,["86"] = 107,["87"] = 108,["88"] = 109,["90"] = 112,["91"] = 104,["92"] = 115,["93"] = 116,["94"] = 117,["95"] = 118,["96"] = 115,["97"] = 121,["98"] = 123,["99"] = 123,["100"] = 123,["101"] = 123,["102"] = 123,["103"] = 123,["104"] = 124,["105"] = 124,["106"] = 124,["107"] = 124,["108"] = 124,["109"] = 124,["110"] = 124,["111"] = 124,["112"] = 127,["113"] = 128,["114"] = 129,["115"] = 130,["116"] = 131,["117"] = 131,["118"] = 131,["119"] = 131,["120"] = 131,["121"] = 131,["122"] = 131,["123"] = 132,["124"] = 133,["127"] = 138,["128"] = 139,["129"] = 140,["130"] = 141,["131"] = 142,["132"] = 142,["133"] = 142,["134"] = 142,["135"] = 142,["136"] = 142,["137"] = 142,["140"] = 146,["141"] = 149,["142"] = 150,["143"] = 152,["144"] = 153,["146"] = 155,["147"] = 157,["148"] = 158,["151"] = 163,["152"] = 164,["153"] = 165,["154"] = 166,["156"] = 169,["157"] = 170,["158"] = 171,["159"] = 172,["160"] = 173,["164"] = 121,["165"] = 179,["166"] = 180,["167"] = 182,["168"] = 184,["169"] = 186,["170"] = 187,["171"] = 188,["173"] = 190,["174"] = 190,["175"] = 190,["176"] = 190,["177"] = 191,["178"] = 192,["179"] = 193,["180"] = 194,["183"] = 198,["184"] = 199,["185"] = 200,["186"] = 201,["189"] = 206,["192"] = 204,["199"] = 210,["202"] = 215,["205"] = 212,["206"] = 213,["215"] = 220,["216"] = 179,["217"] = 223,["218"] = 224,["219"] = 225,["220"] = 226,["221"] = 227,["224"] = 223,["225"] = 235,["226"] = 236,["229"] = 241,["230"] = 241,["231"] = 241,["232"] = 241,["233"] = 243,["234"] = 245,["235"] = 246,["236"] = 246,["237"] = 246,["238"] = 246,["239"] = 246,["240"] = 246,["241"] = 246,["242"] = 249,["243"] = 250,["244"] = 250,["245"] = 250,["246"] = 250,["247"] = 250,["248"] = 251,["249"] = 235,["250"] = 257,["251"] = 259,["254"] = 264,["255"] = 264,["256"] = 264,["257"] = 264,["258"] = 266,["259"] = 268,["260"] = 269,["261"] = 269,["262"] = 269,["263"] = 269,["264"] = 269,["265"] = 269,["266"] = 269,["267"] = 273,["268"] = 274,["269"] = 274,["270"] = 274,["271"] = 274,["272"] = 274,["273"] = 274,["274"] = 274,["275"] = 276,["276"] = 257,["277"] = 282,["278"] = 283,["279"] = 282,["280"] = 288});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local isGamePlayer = ____LocalPlayer.isGamePlayer
local ____SyncCounter = include("framework.data.SyncCounter")
local syncData = ____SyncCounter.syncData
local EVENT_ID = "UIEventManager"
____exports.CommandSync = __TS__Class()
local CommandSync = ____exports.CommandSync
CommandSync.name = "CommandSync"
function CommandSync.prototype.____constructor(self)
    self.listener = {}
    self.index = 0
    self.callbackMap = {}
    self.togetherIndex = 0
    self.togetherCallbackMap = {}
    self.waitPlayerMap = {}
    self._executeMap = {}
    self._executeTogetherMap = {}
    self._isObserver = false
end
function CommandSync.prototype.init(self)
    console:log("==========玩家信息============")
    do
        local i = 1
        while i <= 33 do
            do
                local player = y3.player.get_by_id(i)
                if player == nil then
                    console:log(i, "no player")
                    goto __continue4
                end
                console:log(
                    i,
                    player:get_state(),
                    player:get_controller(),
                    player:get_team_id()
                )
                if isGamePlayer(nil, player) then
                    self.waitPlayerMap[i] = true
                    console:log("add wait", i)
                end
            end
            ::__continue4::
            i = i + 1
        end
    end
    local localPlayer = y3.player.get_by_id(y3.player.LOCAL_PLAYER.id)
    if not isGamePlayer(nil, localPlayer) then
        self._isObserver = true
    end
    y3.game:event(
        "玩家-掉线",
        function(trg, data)
            self:dropLine(data.player.id)
        end
    )
    y3.game:event(
        "玩家-离开游戏",
        function(trg, data)
            console:log("[execute] 玩家离开游戏", data.player.id)
            self.waitPlayerMap[data.player.id] = nil
            self:checkAllTogether()
        end
    )
    y3.game:event(
        "玩家-重连",
        function(trg, data)
            self:onLine(data.player.id)
        end
    )
    y3.sync.onSync(
        EVENT_ID,
        function(data) return self:onSync(data) end
    )
end
function CommandSync.prototype.onLine(self, playerId)
    console:log("[execute] 玩家-重连")
    local player = y3.player.get_by_id(playerId)
    if isGamePlayer(nil, player) then
        self.waitPlayerMap[playerId] = true
    end
    self:checkAllTogether()
end
function CommandSync.prototype.dropLine(self, playerId)
    console:log("[execute] 玩家掉线", playerId)
    self.waitPlayerMap[playerId] = nil
    self:checkAllTogether()
end
function CommandSync.prototype.onSync(self, data)
    local ____data_0 = data
    local ____type = ____data_0.type
    local tr = ____data_0.tr
    local id = ____data_0.id
    local name = ____data_0.name
    local args = ____data_0.args
    console:log(
        "onSync",
        ____type,
        tr,
        id,
        name,
        table.unpack(args)
    )
    if tr == LOCAL.PLAYER_ID then
        if ____type == 1 and self._executeTogetherMap[id] == nil then
            self.togetherIndex = id
            local oldData = self.togetherCallbackMap[id]
            self.togetherCallbackMap[id] = {
                id = id,
                name = name,
                args = args,
                callback = nil,
                waitPlayers = oldData and oldData.waitPlayers or ({})
            }
        elseif self._executeMap[id] == nil then
            self.index = id
        end
    end
    if self._isObserver then
        if ____type == 1 and self._executeTogetherMap[id] == nil then
            self.togetherIndex = id
            local oldData = self.togetherCallbackMap[id]
            self.togetherCallbackMap[id] = {
                id = id,
                name = name,
                args = args,
                callback = nil,
                waitPlayers = oldData and oldData.waitPlayers or ({})
            }
        end
    end
    if ____type == 1 then
        local cbData = self.togetherCallbackMap[id]
        if cbData == nil then
            cbData = {waitPlayers = {}}
            self.togetherCallbackMap[id] = cbData
        end
        cbData.waitPlayers[tr] = true
        if cbData.id ~= nil then
            self:checkAndRunTogether(cbData)
        end
    else
        local func = self.listener[name]
        local r = nil
        if func ~= nil then
            r = func(nil, args)
        end
        if tr == LOCAL.PLAYER_ID then
            local cb = self.callbackMap[id]
            self.callbackMap[id] = nil
            if cb ~= nil then
                cb(nil, r)
            end
        end
    end
end
function CommandSync.prototype.checkAndRunTogether(self, cbData)
    local notOkList = {}
    syncData.inSync = syncData.inSync + 1
    local allOk = true
    local playerIds = {}
    for playerId in pairs(self.waitPlayerMap) do
        playerIds[#playerIds + 1] = playerId
    end
    playerIds = __TS__ArraySort(
        playerIds,
        function(____, a, b) return a - b end
    )
    for ____, playerId in ipairs(playerIds) do
        if cbData.waitPlayers[playerId] ~= true then
            notOkList[#notOkList + 1] = tostring(playerId)
            allOk = false
        end
    end
    if allOk then
        local func = self.listener[cbData.name]
        local r = nil
        if func ~= nil then
            do
                local function ____catch(e)
                    console:error(e)
                end
                local ____try, ____hasReturned = pcall(function()
                    r = func(nil, cbData.args)
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
        end
        self.togetherCallbackMap[cbData.id] = nil
        do
            local function ____catch(e)
                console:error(e)
            end
            local ____try, ____hasReturned = pcall(function()
                if cbData.callback ~= nil then
                    cbData:callback()
                end
            end)
            if not ____try then
                ____catch(____hasReturned)
            end
        end
    else
    end
    syncData.inSync = syncData.inSync - 1
end
function CommandSync.prototype.checkAllTogether(self)
    local list = __TS__ObjectValues(self.togetherCallbackMap)
    for ____, cbData in ipairs(list) do
        if cbData ~= nil and cbData.id ~= nil then
            self:checkAndRunTogether(cbData)
        end
    end
end
function CommandSync.prototype.execute(self, name, args, callback, ignoreObserver)
    if ignoreObserver and self._isObserver then
        return
    end
    local ____self_5, ____index_6 = self, "index"
    local ____self_index_7 = ____self_5[____index_6] + 1
    ____self_5[____index_6] = ____self_index_7
    local msgId = ____self_index_7
    self._executeMap[msgId] = true
    local trigger = LOCAL.PLAYER_ID
    local data = {
        type = nil,
        tr = trigger,
        id = msgId,
        name = name,
        args = args
    }
    self.callbackMap[msgId] = callback
    console:log(
        "发送自定义事件",
        name,
        JSON:stringify(data)
    )
    y3.sync.send(EVENT_ID, data)
end
function CommandSync.prototype.executeTogether(self, name, args, callback)
    if self._isObserver then
        return
    end
    local ____self_8, ____togetherIndex_9 = self, "togetherIndex"
    local ____self_togetherIndex_10 = ____self_8[____togetherIndex_9] + 1
    ____self_8[____togetherIndex_9] = ____self_togetherIndex_10
    local t_msgId = ____self_togetherIndex_10
    self._executeTogetherMap[t_msgId] = true
    local trigger = LOCAL.PLAYER_ID
    local data = {
        type = 1,
        tr = trigger,
        id = t_msgId,
        name = name,
        args = args
    }
    local oldData = self.togetherCallbackMap[t_msgId]
    self.togetherCallbackMap[t_msgId] = {
        id = t_msgId,
        name = name,
        args = args,
        callback = callback,
        waitPlayers = oldData and oldData.waitPlayers or ({})
    }
    y3.sync.send(EVENT_ID, data)
end
function CommandSync.prototype.register(self, name, func)
    self.listener[name] = func
end
____exports.uiEventManager = __TS__New(____exports.CommandSync)
return ____exports
