local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__Delete = ____lualib.__TS__Delete
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 20,["18"] = 21,["19"] = 21,["20"] = 23,["21"] = 23,["22"] = 26,["23"] = 26,["24"] = 27,["25"] = 27,["26"] = 28,["27"] = 28,["28"] = 29,["29"] = 29,["30"] = 31,["31"] = 31,["32"] = 34,["33"] = 34,["34"] = 35,["35"] = 35,["36"] = 36,["37"] = 36,["38"] = 37,["39"] = 37,["40"] = 38,["41"] = 38,["42"] = 41,["43"] = 41,["44"] = 42,["45"] = 42,["46"] = 43,["47"] = 43,["48"] = 44,["49"] = 44,["50"] = 45,["51"] = 45,["52"] = 46,["53"] = 46,["54"] = 47,["55"] = 47,["56"] = 49,["57"] = 49,["58"] = 50,["59"] = 50,["60"] = 51,["61"] = 51,["62"] = 54,["63"] = 54,["64"] = 54,["66"] = 56,["67"] = 62,["68"] = 155,["69"] = 54,["70"] = 64,["71"] = 64,["72"] = 64,["74"] = 64,["75"] = 64,["77"] = 65,["78"] = 66,["79"] = 67,["80"] = 69,["81"] = 71,["82"] = 69,["83"] = 73,["84"] = 75,["85"] = 73,["86"] = 78,["87"] = 79,["88"] = 79,["89"] = 79,["90"] = 80,["91"] = 79,["92"] = 79,["93"] = 78,["94"] = 83,["95"] = 83,["96"] = 86,["97"] = 88,["98"] = 64,["99"] = 91,["100"] = 92,["101"] = 93,["102"] = 94,["104"] = 97,["106"] = 91,["107"] = 101,["108"] = 102,["109"] = 104,["110"] = 104,["111"] = 104,["112"] = 105,["113"] = 104,["114"] = 104,["115"] = 108,["117"] = 101,["118"] = 118,["119"] = 119,["122"] = 123,["123"] = 123,["124"] = 123,["125"] = 123,["126"] = 124,["127"] = 124,["128"] = 124,["129"] = 124,["130"] = 124,["131"] = 124,["132"] = 131,["133"] = 132,["135"] = 135,["136"] = 118,["137"] = 139,["138"] = 140,["143"] = 151,["146"] = 146,["147"] = 147,["148"] = 148,["149"] = 149,["155"] = 139,["156"] = 156,["157"] = 158,["161"] = 160,["162"] = 196,["163"] = 161,["165"] = 163,["168"] = 165,["170"] = 166,["171"] = 167,["172"] = 168,["175"] = 170,["177"] = 171,["178"] = 172,["179"] = 173,["182"] = 175,["184"] = 176,["185"] = 177,["186"] = 178,["189"] = 180,["191"] = 181,["192"] = 182,["193"] = 183,["196"] = 185,["198"] = 186,["199"] = 187,["202"] = 189,["204"] = 190,["205"] = 191,["206"] = 192,["209"] = 194,["211"] = 195,["212"] = 196,["213"] = 197,["215"] = 197,["216"] = 197,["217"] = 197,["219"] = 197,["224"] = 199,["226"] = 200,["227"] = 201,["228"] = 201,["229"] = 201,["230"] = 201,["231"] = 202,["232"] = 203,["233"] = 204,["234"] = 205,["235"] = 207,["236"] = 208,["237"] = 209,["238"] = 210,["239"] = 210,["242"] = 212,["243"] = 213,["244"] = 213,["251"] = 218,["253"] = 219,["254"] = 220,["255"] = 221,["256"] = 222,["259"] = 225,["260"] = 226,["263"] = 228,["265"] = 229,["266"] = 230,["267"] = 231,["268"] = 232,["272"] = 235,["274"] = 238,["281"] = 156,["282"] = 248,["283"] = 249,["284"] = 250,["286"] = 252,["287"] = 248,["288"] = 257});
local ____exports = {}
local ____Socket = include("framework.net.Socket")
local Socket = ____Socket.Socket
local ____ReloadLogic = include("logic.reload.ReloadLogic")
local reloadLogic = ____ReloadLogic.reloadLogic
local ____SyncCounter = include("framework.data.SyncCounter")
local sync = ____SyncCounter.sync
____exports.Socket_ID = Socket_ID or ({})
____exports.Socket_ID.NONE = 0
____exports.Socket_ID[____exports.Socket_ID.NONE] = "NONE"
____exports.Socket_ID["心跳"] = 1
____exports.Socket_ID[____exports.Socket_ID["心跳"]] = "心跳"
____exports.Socket_ID["运行"] = 1000
____exports.Socket_ID[____exports.Socket_ID["运行"]] = "运行"
____exports.Socket_ID["停止"] = 1001
____exports.Socket_ID[____exports.Socket_ID["停止"]] = "停止"
____exports.Socket_ID["暂停游戏"] = 1002
____exports.Socket_ID[____exports.Socket_ID["暂停游戏"]] = "暂停游戏"
____exports.Socket_ID["恢复游戏"] = 1003
____exports.Socket_ID[____exports.Socket_ID["恢复游戏"]] = "恢复游戏"
____exports.Socket_ID["收到命令"] = 1004
____exports.Socket_ID[____exports.Socket_ID["收到命令"]] = "收到命令"
____exports.Socket_ID["发送协议"] = 1005
____exports.Socket_ID[____exports.Socket_ID["发送协议"]] = "发送协议"
____exports.Socket_ID["服务器返回数据"] = 1006
____exports.Socket_ID[____exports.Socket_ID["服务器返回数据"]] = "服务器返回数据"
____exports.Socket_ID["技能热重载"] = 1007
____exports.Socket_ID[____exports.Socket_ID["技能热重载"]] = "技能热重载"
____exports.Socket_ID["切换战场"] = 1008
____exports.Socket_ID[____exports.Socket_ID["切换战场"]] = "切换战场"
____exports.Socket_ID["补充战场"] = 1009
____exports.Socket_ID[____exports.Socket_ID["补充战场"]] = "补充战场"
____exports.Socket_ID["辅助命令"] = 2000
____exports.Socket_ID[____exports.Socket_ID["辅助命令"]] = "辅助命令"
____exports.Socket_ID["打开游戏"] = 2001
____exports.Socket_ID[____exports.Socket_ID["打开游戏"]] = "打开游戏"
____exports.Socket_ID["Webview日志"] = 2002
____exports.Socket_ID[____exports.Socket_ID["Webview日志"]] = "Webview日志"
____exports.Socket_ID["客户端断开连接"] = 2003
____exports.Socket_ID[____exports.Socket_ID["客户端断开连接"]] = "客户端断开连接"
____exports.Socket_ID["Web端重新连接"] = 2004
____exports.Socket_ID[____exports.Socket_ID["Web端重新连接"]] = "Web端重新连接"
____exports.Socket_ID["快速导表"] = 2005
____exports.Socket_ID[____exports.Socket_ID["快速导表"]] = "快速导表"
____exports.Socket_ID["快速编译"] = 2006
____exports.Socket_ID[____exports.Socket_ID["快速编译"]] = "快速编译"
____exports.Socket_ID.Group = 3000
____exports.Socket_ID[____exports.Socket_ID.Group] = "Group"
____exports.Socket_ID.GroupEnd = 3001
____exports.Socket_ID[____exports.Socket_ID.GroupEnd] = "GroupEnd"
____exports.Socket_ID.GroupLog = 3002
____exports.Socket_ID[____exports.Socket_ID.GroupLog] = "GroupLog"
____exports.DebugRoomClient = __TS__Class()
local DebugRoomClient = ____exports.DebugRoomClient
DebugRoomClient.name = "DebugRoomClient"
function DebugRoomClient.prototype.____constructor(self)
    self.id = 1000
    self.requestMap = {}
    self.heartbeat = 0
end
function DebugRoomClient.prototype.init(self, port, ip)
    if port == nil then
        port = 9013
    end
    if ip == nil then
        ip = "127.0.0.1"
    end
    self.port = port
    self.ip = ip
    local socket = __TS__New(Socket, ip, port)
    socket:on_connected(function()
        console:log("服务器连接成功")
    end)
    socket:on_disconnected(function()
        console:log("服务器断开连接")
    end)
    socket:on_data(function(____, data)
        sync(
            nil,
            function()
                self:handler_data(data)
            end
        )
    end)
    socket:on_error(function(____, ____error)
    end)
    socket:connect()
    self.net = socket
end
function DebugRoomClient.prototype.tryReconnect(self)
    if self.net ~= nil then
        console:log("尝试重连")
        self.net:reconnect()
    else
        console:error("socket连接未初始化, 请先init")
    end
end
function DebugRoomClient.prototype.register(self, room)
    self.room = room
    y3.ctimer.wait_frame(
        5,
        function()
            self:postRoomInfo()
        end
    )
    if not self.timer then
    end
end
function DebugRoomClient.prototype.post(self, code, data, callback)
    if self.net == nil then
        return
    end
    local ____self_0, ____id_1 = self, "id"
    local ____self_id_2 = ____self_0[____id_1] + 1
    ____self_0[____id_1] = ____self_id_2
    local id = ____self_id_2
    local requestData = {
        code = code,
        id = id,
        data = data,
        timestamp = __TS__New(Date):getTime()
    }
    if callback ~= nil then
        self.requestMap[id] = callback
    end
    self.net:send(JSON:stringify(requestData))
end
function DebugRoomClient.prototype.postRoomInfo(self)
    if not self.net or not self.net.isConnecting then
        return
    end
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            local a = self.room:genFightRoom()
            local data = JSON:stringify(a)
            console:log("发送协议")
            self:post(____exports.Socket_ID["发送协议"], data)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function DebugRoomClient.prototype.handler_data(self, data)
    if not self.room then
        return
    end
    repeat
        local ____switch24 = data.code
        local d, skillList, data2, result
        local ____cond24 = ____switch24 == ____exports.Socket_ID["心跳"]
        if ____cond24 then
            self.heartbeat = data.timestamp / 1000
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["运行"]
        if ____cond24 then
            console:log("运行")
            self.room:run()
            self:postRoomInfo()
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["停止"]
        if ____cond24 then
            console:log("停止")
            self.room:stop()
            self:postRoomInfo()
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["暂停游戏"]
        if ____cond24 then
            console:log("暂停游戏")
            self.room:pause()
            self:postRoomInfo()
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["恢复游戏"]
        if ____cond24 then
            console:log("恢复游戏")
            self.room:resume()
            self:postRoomInfo()
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["Web端重新连接"]
        if ____cond24 then
            console:log("Web端重新连接")
            self:postRoomInfo()
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["切换战场"]
        if ____cond24 then
            console:log("切换战场")
            self.room:clear()
            self.room:load(JSON:parse(data.data))
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["补充战场"]
        if ____cond24 then
            console:log("补充战场")
            d = JSON:parse(data.data)
            local ____self_4 = self.room
            local ____self_4_load_5 = ____self_4.load
            local ____temp_3
            if d.data ~= nil then
                ____temp_3 = JSON:parse(d.data)
            else
                ____temp_3 = d
            end
            ____self_4_load_5(____self_4, ____temp_3)
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["技能热重载"]
        if ____cond24 then
            skillList = JSON:parse(data.data)
            console:log(
                "技能热重载",
                JSON:stringify(skillList)
            )
            reloadLogic:reload(skillList)
            for key in pairs(self.room.fight.allUnitMap) do
                local element = self.room.fight.allUnitMap[key]
                for ____, skillName in __TS__Iterator(skillList) do
                    local name = skillName
                    if __TS__StringStartsWith(name, "logic.simpleAbilities") then
                        name = __TS__StringSplit(name, "logic.simpleAbilities.")[2]
                        if element ~= nil then
                            element:refreshSimpleSkill(name)
                        end
                    else
                        name = __TS__StringSplit(name, "logic.abilities.")[2]
                        if element ~= nil then
                            element:refreshSkill(name)
                        end
                    end
                end
            end
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["收到命令"]
        if ____cond24 then
            data2 = JSON:parse(data.data)
            console:log("收到命令", data2)
            result = self.room:runAction(data2)
            if data2.isMove then
                return
            end
            console:log("返回结果", result)
            self:postRoomInfo()
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["服务器返回数据"]
        if ____cond24 then
            if self.requestMap[data.id] ~= nil then
                local cb = self.requestMap[data.id]
                cb(nil, data)
                __TS__Delete(self.requestMap, data.id)
            end
            break
        end
        ____cond24 = ____cond24 or ____switch24 == ____exports.Socket_ID["发送协议"]
        if ____cond24 then
            console:log("发送协议")
            break
        end
        do
            break
        end
    until true
end
function DebugRoomClient.inst(self)
    if not self._inst then
        self._inst = __TS__New(____exports.DebugRoomClient)
    end
    return self._inst
end
____exports.debugRoomClient = ____exports.DebugRoomClient:inst()
return ____exports
