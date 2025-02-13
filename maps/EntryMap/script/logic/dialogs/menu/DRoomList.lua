local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["27"] = 8,["28"] = 9,["29"] = 8,["30"] = 22,["31"] = 23,["32"] = 23,["33"] = 23,["34"] = 24,["35"] = 23,["36"] = 23,["37"] = 27,["38"] = 27,["39"] = 27,["40"] = 28,["41"] = 29,["42"] = 30,["43"] = 31,["44"] = 28,["45"] = 27,["46"] = 27,["47"] = 35,["48"] = 36,["50"] = 38,["51"] = 38,["52"] = 39,["53"] = 40,["54"] = 41,["55"] = 43,["56"] = 43,["57"] = 43,["58"] = 44,["59"] = 43,["60"] = 43,["61"] = 47,["62"] = 47,["63"] = 47,["64"] = 48,["65"] = 49,["66"] = 47,["67"] = 47,["68"] = 52,["69"] = 52,["70"] = 52,["71"] = 53,["72"] = 54,["73"] = 55,["75"] = 58,["76"] = 52,["77"] = 52,["78"] = 61,["79"] = 61,["80"] = 61,["81"] = 62,["82"] = 63,["83"] = 64,["85"] = 67,["86"] = 61,["87"] = 61,["88"] = 70,["89"] = 70,["90"] = 70,["91"] = 71,["92"] = 72,["93"] = 73,["95"] = 76,["96"] = 70,["97"] = 70,["98"] = 79,["99"] = 79,["100"] = 79,["101"] = 80,["102"] = 79,["103"] = 79,["104"] = 83,["105"] = 83,["106"] = 83,["107"] = 84,["108"] = 85,["109"] = 86,["111"] = 89,["112"] = 83,["113"] = 83,["114"] = 92,["115"] = 92,["116"] = 92,["117"] = 93,["118"] = 94,["119"] = 95,["121"] = 98,["122"] = 92,["123"] = 92,["124"] = 101,["125"] = 101,["126"] = 101,["127"] = 102,["128"] = 103,["129"] = 104,["131"] = 107,["132"] = 101,["133"] = 101,["134"] = 110,["135"] = 110,["136"] = 110,["137"] = 111,["138"] = 110,["139"] = 110,["140"] = 114,["141"] = 114,["142"] = 114,["143"] = 115,["144"] = 114,["145"] = 114,["146"] = 118,["147"] = 118,["148"] = 118,["149"] = 119,["150"] = 120,["151"] = 121,["153"] = 123,["154"] = 118,["155"] = 118,["156"] = 126,["157"] = 126,["158"] = 126,["159"] = 126,["160"] = 128,["161"] = 129,["164"] = 133,["165"] = 126,["166"] = 126,["167"] = 38,["170"] = 138,["171"] = 138,["172"] = 138,["173"] = 139,["174"] = 140,["175"] = 138,["176"] = 138,["177"] = 143,["178"] = 143,["179"] = 143,["180"] = 145,["181"] = 146,["182"] = 143,["183"] = 143,["184"] = 149,["185"] = 149,["186"] = 149,["187"] = 151,["188"] = 151,["189"] = 151,["190"] = 151,["191"] = 151,["192"] = 151,["193"] = 152,["194"] = 151,["195"] = 151,["196"] = 149,["197"] = 149,["198"] = 156,["199"] = 156,["200"] = 156,["201"] = 157,["202"] = 156,["203"] = 156,["204"] = 160,["205"] = 160,["206"] = 160,["207"] = 161,["208"] = 161,["209"] = 161,["210"] = 162,["211"] = 163,["212"] = 164,["213"] = 161,["214"] = 161,["215"] = 160,["216"] = 160,["217"] = 167,["218"] = 167,["219"] = 167,["220"] = 168,["221"] = 168,["222"] = 168,["223"] = 169,["224"] = 170,["225"] = 171,["226"] = 168,["227"] = 168,["228"] = 167,["229"] = 167,["230"] = 22,["231"] = 177,["232"] = 178,["233"] = 177,["234"] = 181,["237"] = 183,["238"] = 184,["239"] = 184,["240"] = 184,["241"] = 184,["242"] = 184,["243"] = 184,["244"] = 184,["245"] = 184,["246"] = 190,["247"] = 191,["248"] = 191,["249"] = 191,["250"] = 191,["253"] = 194,["254"] = 194,["255"] = 194,["256"] = 194,["257"] = 195,["258"] = 197,["259"] = 198,["261"] = 200,["263"] = 194,["264"] = 194,["267"] = 182,["270"] = 205,["272"] = 182,["274"] = 181});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Room = include("logic.match.Room")
local room = ____Room.room
local ____DInputAlert = include("logic.dialogs.tips.DInputAlert")
local DInputAlert = ____DInputAlert.DInputAlert
____exports.DRoomList = __TS__Class()
local DRoomList = ____exports.DRoomList
DRoomList.name = "DRoomList"
__TS__ClassExtends(DRoomList, Dialog)
function DRoomList.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {sel = -1}
end
function DRoomList.prototype.onCreate(self)
    self:bindClick(
        "bg.exit",
        function()
            self:hide()
        end
    )
    self:bindClick(
        "bg.content.refresh",
        function()
            room:refreshCurrentPage(function()
                local list = self:getUI("bg.content.rooms")
                GameAPI.set_list_view_percent(LOCAL.PLAYER.handle, list.handle, 0)
                self.data.sel = -1
            end)
        end
    )
    local roomListRoot = self:getUI("bg.content.rooms")
    local roomList = roomListRoot:get_childs()
    do
        local i = 0
        while i < #roomList do
            local index = i
            local roomNode = roomList[index + 1]
            local path = ("bg.content.rooms" .. ".") .. roomNode:get_name()
            self:bindClick(
                path,
                function()
                    self.data.sel = index
                end
            )
            self:bindVisible(
                path,
                function()
                    local roomData = room.data.roomList[index + 1]
                    return roomData ~= nil
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return ""
                    end
                    return roomData.room_name
                end
            )
            self:bindText(
                path .. ".owner",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return ""
                    end
                    return ""
                end
            )
            self:bindText(
                path .. ".id",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return ""
                    end
                    return (i18n["local"](i18n, "房间号：") .. "#fbca47 ") .. tostring(roomData.room_id)
                end
            )
            self:bindVisible(
                path .. ".id",
                function()
                    return false
                end
            )
            self:bindText(
                path .. ".memberCount",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return ""
                    end
                    return (((i18n["local"](i18n, "玩家人数：") .. "#fbca47") .. tostring(roomData.curr_player_number)) .. "/") .. 6
                end
            )
            self:bindVisible(
                path .. ".memberCount",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return false
                    end
                    return roomData.room_state == y3.const.SteamRoomState["大厅"]
                end
            )
            self:bindVisible(
                path .. ".playing",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return false
                    end
                    return roomData.room_state ~= y3.const.SteamRoomState["大厅"]
                end
            )
            self:bindText(
                path .. ".playing",
                function()
                    return i18n["local"](i18n, "游戏中")
                end
            )
            self:bindVisible(
                path .. ".sel",
                function()
                    return self.data.sel == index
                end
            )
            self:bindVisible(
                path .. ".lock",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return false
                    end
                    return not roomData.is_public
                end
            )
            self:bindAction(
                path,
                "左键-双击",
                function()
                    local roomData = room.data.roomList[index + 1]
                    if roomData == nil then
                        return
                    end
                    self:joinRoom(roomData)
                end
            )
            i = i + 1
        end
    end
    self:bindButtonEnable(
        "bg.content.join",
        function()
            local roomData = room.data.roomList[self.data.sel + 1]
            return roomData ~= nil and roomData.curr_player_number < roomData.max_player_number
        end
    )
    self:bindClick(
        "bg.content.join",
        function()
            local roomData = room.data.roomList[self.data.sel + 1]
            self:joinRoom(roomData)
        end
    )
    self:bindClick(
        "bg.content.create",
        function()
            room:createRoom(
                i18n:format(
                    "${name}的房间",
                    {name = LOCAL.PLAYER:get_name()}
                ),
                function()
                    room:refreshCurrentPage()
                end
            )
        end
    )
    self:bindText(
        "bg.content.pageNv.page",
        function()
            return (tostring(room.data.pageNum) .. "/") .. tostring(room.data.totalPageNum)
        end
    )
    self:bindClick(
        "bg.content.pageNv.prePage",
        function()
            room:gotoPage(
                room.data.pageNum - 1,
                function()
                    local list = self:getUI("bg.content.rooms")
                    GameAPI.set_list_view_percent(LOCAL.PLAYER.handle, list.handle, 0)
                    self.data.sel = -1
                end
            )
        end
    )
    self:bindClick(
        "bg.content.pageNv.nextPage",
        function()
            room:gotoPage(
                room.data.pageNum + 1,
                function()
                    local list = self:getUI("bg.content.rooms")
                    GameAPI.set_list_view_percent(LOCAL.PLAYER.handle, list.handle, 0)
                    self.data.sel = -1
                end
            )
        end
    )
end
function DRoomList.prototype.onShow(self)
    room:gotoPage(1)
end
function DRoomList.prototype.joinRoom(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            if not data.is_public then
                local r = __TS__Await(dialogs:got(
                    DInputAlert,
                    {
                        title = i18n["local"](i18n, "加入房间"),
                        des = i18n:format("由于${room}设置了密码，需输入正确的密码才可加入", {room = data.room_name}),
                        sure = i18n["local"](i18n, "加入")
                    }
                ))
                if r.ok then
                    room:joinRoom(
                        data.room_id,
                        __TS__StringTrim(r.result)
                    )
                end
            else
                room:joinRoom(
                    data.room_id,
                    nil,
                    function(____, code, showToast)
                        if code == 3005 then
                            data.is_public = false
                            self:joinRoom(data)
                        else
                            showToast(nil)
                        end
                    end
                )
            end
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, e)
                console:error(e)
            end
        ))
    end)
end
return ____exports
