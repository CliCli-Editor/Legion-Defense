local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 16,["27"] = 16,["28"] = 16,["29"] = 16,["31"] = 16,["32"] = 17,["33"] = 16,["34"] = 42,["35"] = 43,["36"] = 43,["37"] = 43,["38"] = 44,["39"] = 43,["40"] = 43,["41"] = 47,["42"] = 47,["43"] = 47,["44"] = 48,["45"] = 48,["46"] = 47,["47"] = 47,["48"] = 51,["49"] = 51,["50"] = 51,["53"] = 54,["54"] = 55,["55"] = 56,["56"] = 56,["58"] = 56,["59"] = 56,["60"] = 56,["61"] = 56,["62"] = 56,["64"] = 56,["65"] = 58,["66"] = 59,["69"] = 63,["70"] = 63,["71"] = 63,["72"] = 63,["73"] = 63,["74"] = 63,["75"] = 63,["76"] = 63,["77"] = 68,["78"] = 69,["81"] = 52,["84"] = 72,["86"] = 52,["88"] = 51,["89"] = 51,["90"] = 76,["91"] = 76,["92"] = 76,["93"] = 77,["94"] = 77,["95"] = 77,["96"] = 76,["97"] = 76,["98"] = 80,["99"] = 80,["100"] = 80,["103"] = 82,["104"] = 82,["105"] = 82,["106"] = 82,["107"] = 82,["108"] = 82,["109"] = 82,["110"] = 82,["111"] = 87,["112"] = 88,["113"] = 88,["114"] = 88,["115"] = 89,["116"] = 90,["117"] = 91,["120"] = 94,["121"] = 88,["122"] = 88,["125"] = 81,["128"] = 98,["130"] = 81,["132"] = 80,["133"] = 80,["134"] = 102,["135"] = 102,["136"] = 102,["137"] = 103,["138"] = 103,["139"] = 104,["140"] = 105,["142"] = 107,["143"] = 107,["145"] = 102,["146"] = 102,["147"] = 111,["148"] = 111,["149"] = 111,["150"] = 112,["151"] = 112,["152"] = 113,["153"] = 114,["155"] = 116,["157"] = 111,["158"] = 111,["159"] = 120,["160"] = 120,["161"] = 120,["164"] = 123,["165"] = 124,["166"] = 124,["168"] = 124,["169"] = 124,["170"] = 124,["171"] = 124,["172"] = 124,["174"] = 124,["175"] = 126,["176"] = 127,["179"] = 131,["180"] = 131,["181"] = 131,["182"] = 131,["183"] = 131,["184"] = 131,["185"] = 131,["186"] = 131,["187"] = 131,["188"] = 137,["189"] = 138,["190"] = 139,["191"] = 140,["193"] = 142,["197"] = 121,["200"] = 146,["202"] = 121,["204"] = 120,["205"] = 120,["206"] = 150,["208"] = 151,["209"] = 151,["210"] = 152,["211"] = 153,["212"] = 154,["213"] = 155,["214"] = 155,["215"] = 155,["216"] = 156,["217"] = 156,["218"] = 157,["220"] = 159,["221"] = 160,["222"] = 155,["223"] = 155,["224"] = 162,["225"] = 162,["226"] = 162,["227"] = 163,["228"] = 163,["229"] = 164,["231"] = 166,["232"] = 167,["233"] = 162,["234"] = 162,["235"] = 170,["236"] = 170,["237"] = 170,["238"] = 171,["239"] = 171,["240"] = 172,["242"] = 174,["243"] = 176,["244"] = 177,["245"] = 178,["246"] = 179,["247"] = 180,["248"] = 181,["250"] = 184,["251"] = 170,["252"] = 170,["253"] = 186,["254"] = 186,["255"] = 186,["256"] = 187,["257"] = 187,["258"] = 188,["260"] = 190,["261"] = 192,["262"] = 193,["263"] = 194,["264"] = 195,["265"] = 196,["266"] = 197,["268"] = 199,["270"] = 186,["271"] = 186,["272"] = 202,["273"] = 202,["274"] = 202,["275"] = 203,["276"] = 203,["277"] = 204,["279"] = 206,["280"] = 207,["281"] = 202,["282"] = 202,["283"] = 210,["284"] = 210,["285"] = 210,["286"] = 211,["287"] = 210,["288"] = 210,["289"] = 214,["290"] = 214,["291"] = 214,["292"] = 215,["293"] = 215,["294"] = 216,["296"] = 218,["297"] = 219,["298"] = 214,["299"] = 214,["300"] = 222,["301"] = 222,["302"] = 222,["303"] = 223,["304"] = 222,["305"] = 222,["306"] = 226,["307"] = 226,["308"] = 226,["309"] = 227,["310"] = 227,["311"] = 228,["313"] = 230,["314"] = 231,["315"] = 226,["316"] = 226,["317"] = 234,["318"] = 234,["319"] = 234,["320"] = 235,["321"] = 235,["322"] = 236,["324"] = 238,["325"] = 239,["326"] = 234,["327"] = 234,["328"] = 241,["329"] = 241,["330"] = 241,["331"] = 242,["332"] = 242,["333"] = 243,["335"] = 245,["336"] = 246,["337"] = 247,["339"] = 241,["340"] = 241,["341"] = 251,["342"] = 251,["343"] = 251,["344"] = 252,["345"] = 253,["346"] = 253,["348"] = 253,["349"] = 253,["350"] = 253,["351"] = 253,["352"] = 253,["354"] = 253,["355"] = 254,["356"] = 255,["358"] = 257,["359"] = 258,["361"] = 260,["362"] = 260,["363"] = 261,["365"] = 263,["366"] = 265,["367"] = 266,["369"] = 269,["370"] = 251,["371"] = 251,["372"] = 272,["373"] = 272,["374"] = 272,["375"] = 273,["376"] = 273,["377"] = 274,["379"] = 276,["380"] = 279,["381"] = 281,["382"] = 281,["383"] = 281,["384"] = 281,["385"] = 282,["386"] = 282,["387"] = 282,["388"] = 283,["389"] = 284,["390"] = 282,["391"] = 281,["392"] = 287,["393"] = 287,["394"] = 287,["395"] = 288,["396"] = 289,["397"] = 287,["398"] = 281,["399"] = 292,["400"] = 292,["401"] = 292,["402"] = 293,["403"] = 294,["404"] = 292,["405"] = 281,["406"] = 297,["407"] = 297,["408"] = 297,["409"] = 298,["410"] = 299,["411"] = 297,["412"] = 281,["413"] = 281,["414"] = 281,["416"] = 305,["417"] = 305,["418"] = 305,["419"] = 305,["420"] = 306,["421"] = 306,["422"] = 307,["423"] = 308,["424"] = 306,["425"] = 305,["426"] = 305,["428"] = 272,["429"] = 272,["430"] = 151,["433"] = 317,["434"] = 317,["435"] = 317,["437"] = 318,["438"] = 319,["440"] = 320,["443"] = 322,["446"] = 317,["447"] = 317,["448"] = 326,["449"] = 326,["450"] = 326,["451"] = 327,["452"] = 327,["453"] = 327,["454"] = 327,["455"] = 328,["456"] = 328,["457"] = 329,["458"] = 330,["459"] = 328,["460"] = 327,["461"] = 327,["462"] = 326,["463"] = 326,["464"] = 337,["465"] = 337,["466"] = 337,["467"] = 338,["468"] = 339,["469"] = 339,["471"] = 339,["472"] = 339,["473"] = 339,["474"] = 339,["475"] = 339,["477"] = 339,["478"] = 337,["479"] = 337,["480"] = 342,["481"] = 342,["482"] = 342,["483"] = 343,["484"] = 343,["486"] = 343,["487"] = 343,["488"] = 343,["489"] = 343,["490"] = 343,["492"] = 343,["493"] = 344,["494"] = 345,["497"] = 348,["498"] = 348,["500"] = 348,["501"] = 348,["502"] = 348,["503"] = 348,["504"] = 348,["506"] = 348,["507"] = 350,["508"] = 351,["511"] = 355,["512"] = 342,["513"] = 342,["514"] = 358,["515"] = 358,["516"] = 358,["517"] = 359,["518"] = 358,["519"] = 358,["520"] = 362,["521"] = 42,["522"] = 366,["523"] = 367,["524"] = 367,["525"] = 367,["526"] = 368,["527"] = 367,["528"] = 367,["529"] = 367,["530"] = 371,["531"] = 371,["532"] = 371,["533"] = 372,["534"] = 373,["535"] = 371,["536"] = 371,["537"] = 376,["539"] = 377,["540"] = 377,["541"] = 378,["542"] = 379,["543"] = 380,["544"] = 380,["545"] = 380,["546"] = 381,["547"] = 380,["548"] = 380,["549"] = 380,["550"] = 383,["551"] = 383,["552"] = 383,["553"] = 384,["554"] = 385,["555"] = 386,["557"] = 388,["559"] = 383,["560"] = 383,["561"] = 383,["562"] = 391,["563"] = 391,["564"] = 391,["565"] = 392,["566"] = 393,["567"] = 391,["568"] = 391,["569"] = 391,["570"] = 396,["571"] = 396,["572"] = 396,["573"] = 397,["574"] = 398,["575"] = 399,["577"] = 396,["578"] = 396,["579"] = 377,["582"] = 366,["583"] = 404,["584"] = 405,["585"] = 406,["586"] = 408,["587"] = 410,["588"] = 410,["590"] = 404});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Room = include("logic.match.Room")
local room = ____Room.room
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____DInputAlert = include("logic.dialogs.tips.DInputAlert")
local DInputAlert = ____DInputAlert.DInputAlert
____exports.DRoom = __TS__Class()
local DRoom = ____exports.DRoom
DRoom.name = "DRoom"
__TS__ClassExtends(DRoom, Dialog)
function DRoom.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {rightMenu = {visible = false, items = {}}, selMode = "经典模式"}
end
function DRoom.prototype.onCreate(self)
    self:bindClick(
        "bg.exit",
        function()
            room:exit()
        end
    )
    self:bindText(
        "bg.content.roomName.label",
        function()
            local ____opt_0 = room.data.roomInfo
            return ____opt_0 and ____opt_0.roomName or i18n["local"](i18n, "未知")
        end
    )
    self:bindClick(
        "bg.content.roomName",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                local ____try = __TS__AsyncAwaiter(function()
                    local aid = y3.steam.get_player_aid()
                    print("aidaidaidaid", aid)
                    local ____opt_6 = room.data.roomInfo
                    local ____opt_2 = ____opt_6 and ____opt_6.slots
                    if ____opt_2 ~= nil then
                        local ____opt_3 = room.data.roomInfo
                        ____opt_2 = __TS__ArrayFind(
                            ____opt_3 and ____opt_3.slots,
                            function(____, a) return a.aid == aid end
                        )
                    end
                    local info = ____opt_2
                    if (info and info.is_owner) ~= true then
                        DTips:show(i18n["local"](i18n, "仅限房主更改房间名称"))
                        return ____awaiter_resolve(nil)
                    end
                    local r = __TS__Await(dialogs:got(
                        DInputAlert,
                        {
                            title = i18n["local"](i18n, "修改名称"),
                            des = i18n["local"](i18n, "请输入新的名称"),
                            sure = i18n["local"](i18n, "确定")
                        }
                    ))
                    if r.ok and __TS__StringTrim(r.result) ~= "" then
                        room:changeName(__TS__StringTrim(r.result))
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
    )
    self:bindText(
        "bg.content.roomId",
        function()
            local ____i18n_local_result_12 = i18n["local"](i18n, "房间ID：")
            local ____opt_10 = room.data.roomInfo
            return ____i18n_local_result_12 .. tostring(____opt_10 and ____opt_10.roomId or -1)
        end
    )
    self:bindClick(
        "bg.content.inviteSel",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                local ____try = __TS__AsyncAwaiter(function()
                    local r = __TS__Await(dialogs:got(
                        DInputAlert,
                        {
                            title = i18n["local"](i18n, "邀请玩家"),
                            des = i18n["local"](i18n, "请输入玩家昵称"),
                            sure = i18n["local"](i18n, "邀请")
                        }
                    ))
                    if r.ok then
                        y3.steam.request_aid_by_nickname(
                            __TS__StringTrim(r.result),
                            function(aid, error_code)
                                print("request_aid_by_nickname ", aid, error_code)
                                if aid == nil then
                                    DTips:show(i18n:format("玩家${nickname}不存在", {nickname = r.result}))
                                    return
                                end
                                room:invite(aid)
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
    )
    self:bindText(
        "bg.content.pwd.text",
        function()
            local ____opt_13 = room.data.roomInfo
            local isPublic = ____opt_13 and ____opt_13.isPublic
            if isPublic then
                return i18n["local"](i18n, "未设置密码")
            else
                local ____opt_15 = room.data.roomInfo
                return ____opt_15 and ____opt_15.passwd or ""
            end
        end
    )
    self:bindImage(
        "bg.content.pwd.icon",
        function()
            local ____opt_17 = room.data.roomInfo
            local isPublic = ____opt_17 and ____opt_17.isPublic
            if isPublic then
                return 134225080
            else
                return 134278400
            end
        end
    )
    self:bindClick(
        "bg.content.pwd",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                local ____try = __TS__AsyncAwaiter(function()
                    local aid = y3.steam.get_player_aid()
                    local ____opt_23 = room.data.roomInfo
                    local ____opt_19 = ____opt_23 and ____opt_23.slots
                    if ____opt_19 ~= nil then
                        local ____opt_20 = room.data.roomInfo
                        ____opt_19 = __TS__ArrayFind(
                            ____opt_20 and ____opt_20.slots,
                            function(____, a) return a.aid == aid end
                        )
                    end
                    local info = ____opt_19
                    if (info and info.is_owner) ~= true then
                        DTips:show(i18n["local"](i18n, "仅限房主更改房间密码"))
                        return ____awaiter_resolve(nil)
                    end
                    local r = __TS__Await(dialogs:got(
                        DInputAlert,
                        {
                            title = i18n["local"](i18n, "修改房间密码"),
                            des = i18n["local"](i18n, "请输入房间密码，密码留空则关闭房间密码"),
                            sure = i18n["local"](i18n, "确定"),
                            allowEmpty = true
                        }
                    ))
                    if r.ok then
                        local pwd = __TS__StringTrim(r.result)
                        if pwd == "" then
                            room:changeRoomPassword(nil)
                        else
                            room:changeRoomPassword(r.result)
                        end
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
    )
    local memberNodes = self:getUI("bg.content.slots.list"):get_childs()
    do
        local i = 0
        while i < #memberNodes do
            local node = memberNodes[i + 1]
            local index = i
            local path = "bg.content.slots.list." .. node:get_name()
            self:bindVisible(
                path .. ".member",
                function()
                    local ____opt_27 = room.data.roomInfo
                    if (____opt_27 and ____opt_27.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    return not data.is_owner
                end
            )
            self:bindVisible(
                path .. ".owner",
                function()
                    local ____opt_29 = room.data.roomInfo
                    if (____opt_29 and ____opt_29.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    return data.is_owner
                end
            )
            self:bindImageUrl(
                path .. ".headbg.head",
                function()
                    local ____opt_31 = room.data.roomInfo
                    if (____opt_31 and ____opt_31.slots) == nil then
                        return nil
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    if data.state == y3.const.SteamRoomSlotState["关闭"] then
                        return 134274875
                    elseif data.state == y3.const.SteamRoomSlotState["简单电脑"] then
                        return 134260243
                    elseif data.state == y3.const.SteamRoomSlotState["困难电脑"] then
                        return 134227170
                    end
                    return data.head_icon
                end
            )
            self:bindText(
                path .. ".name",
                function()
                    local ____opt_33 = room.data.roomInfo
                    if (____opt_33 and ____opt_33.slots) == nil then
                        return ""
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    if data.state == y3.const.SteamRoomSlotState["关闭"] then
                        return i18n["local"](i18n, "关闭")
                    elseif data.state == y3.const.SteamRoomSlotState["简单电脑"] then
                        return i18n["local"](i18n, "简单的电脑")
                    elseif data.state == y3.const.SteamRoomSlotState["困难电脑"] then
                        return i18n["local"](i18n, "困难的电脑")
                    else
                        return (data.aid == 0 or data.aid == nil) and "#a8bcd1" .. i18n["local"](i18n, "等待玩家进入") or data.nickname
                    end
                end
            )
            self:bindVisible(
                path .. ".ownerFlag",
                function()
                    local ____opt_35 = room.data.roomInfo
                    if (____opt_35 and ____opt_35.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    return data.is_owner
                end
            )
            self:bindText(
                path .. ".ownerFlag",
                function()
                    return i18n["local"](i18n, "房主")
                end
            )
            self:bindVisible(
                path .. ".inGameFlag",
                function()
                    local ____opt_37 = room.data.roomInfo
                    if (____opt_37 and ____opt_37.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    return data.in_game
                end
            )
            self:bindText(
                path .. ".inGameFlag",
                function()
                    return i18n["local"](i18n, "游戏中")
                end
            )
            self:bindVisible(
                path .. ".switch",
                function()
                    local ____opt_39 = room.data.roomInfo
                    if (____opt_39 and ____opt_39.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    return data.state == y3.const.SteamRoomSlotState["打开"] and (data.aid == 0 or data.aid == nil)
                end
            )
            self:bindClick(
                path .. ".switch",
                function()
                    local ____opt_41 = room.data.roomInfo
                    if (____opt_41 and ____opt_41.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    room:changeSlot(data.slot)
                end
            )
            self:bindClick(
                path .. ".member",
                function()
                    local ____opt_43 = room.data.roomInfo
                    if (____opt_43 and ____opt_43.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    if data.state == y3.const.SteamRoomSlotState["打开"] and (data.aid == 0 or data.aid == nil) then
                        room:changeSlot(data.slot)
                    end
                end
            )
            self:bindVisible(
                path .. ".menu",
                function()
                    local aid = y3.steam.get_player_aid()
                    local ____opt_49 = room.data.roomInfo
                    local ____opt_45 = ____opt_49 and ____opt_49.slots
                    if ____opt_45 ~= nil then
                        local ____opt_46 = room.data.roomInfo
                        ____opt_45 = __TS__ArrayFind(
                            ____opt_46 and ____opt_46.slots,
                            function(____, a) return a.aid == aid end
                        )
                    end
                    local selfData = ____opt_45
                    if selfData == nil then
                        return false
                    end
                    if not selfData.is_owner then
                        return false
                    end
                    local ____opt_51 = room.data.roomInfo
                    if (____opt_51 and ____opt_51.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    if data.is_owner then
                        return false
                    end
                    return true
                end
            )
            self:bindClick(
                path .. ".menu",
                function(____, ui)
                    local ____opt_53 = room.data.roomInfo
                    if (____opt_53 and ____opt_53.slots) == nil then
                        return false
                    end
                    local data = room.data.roomInfo.slots[index + 1]
                    if data.aid == nil or data.aid == 0 then
                        self:showRightMenu(
                            ui:get_absolute_x() - ui:get_real_width() / 2,
                            ui:get_absolute_y() - ui:get_real_height() / 2,
                            {
                                {
                                    label = i18n["local"](i18n, "打开"),
                                    enabled = function() return data.state ~= y3.const.SteamRoomSlotState["打开"] end,
                                    callback = function()
                                        room:changeSlotState(data.slot, y3.const.SteamRoomSlotState["打开"])
                                    end
                                },
                                {
                                    label = i18n["local"](i18n, "关闭"),
                                    enabled = function() return data.state ~= y3.const.SteamRoomSlotState["关闭"] end,
                                    callback = function()
                                        room:changeSlotState(data.slot, y3.const.SteamRoomSlotState["关闭"])
                                    end
                                },
                                {
                                    label = i18n["local"](i18n, "简单电脑"),
                                    enabled = function() return data.state ~= y3.const.SteamRoomSlotState["简单电脑"] end,
                                    callback = function()
                                        room:changeSlotState(data.slot, y3.const.SteamRoomSlotState["简单电脑"])
                                    end
                                },
                                {
                                    label = i18n["local"](i18n, "困难电脑"),
                                    enabled = function() return data.state ~= y3.const.SteamRoomSlotState["困难电脑"] end,
                                    callback = function()
                                        room:changeSlotState(data.slot, y3.const.SteamRoomSlotState["困难电脑"])
                                    end
                                }
                            }
                        )
                    else
                        self:showRightMenu(
                            ui:get_absolute_x() - ui:get_real_width() / 2,
                            ui:get_absolute_y() - ui:get_real_height() / 2,
                            {{
                                label = i18n["local"](i18n, "踢出"),
                                enabled = function() return true end,
                                callback = function()
                                    room:kick(data.aid)
                                end
                            }}
                        )
                    end
                end
            )
            i = i + 1
        end
    end
    self:bindText(
        "bg.content.modeSel.label",
        function()
            repeat
                local ____switch82 = self.data.selMode
                local ____cond82 = ____switch82 == "经典模式"
                if ____cond82 then
                    return i18n["local"](i18n, "经典模式")
                end
                do
                    return ""
                end
            until true
        end
    )
    self:bindClick(
        "bg.content.modeSel",
        function(____, ui)
            self:showRightMenu(
                ui:get_absolute_x() - ui:get_real_width() / 2,
                ui:get_absolute_y() - ui:get_real_height() / 2,
                {{
                    label = i18n["local"](i18n, "经典模式"),
                    enabled = function() return true end,
                    callback = function()
                        self.data.selMode = "经典模式"
                    end
                }}
            )
        end
    )
    self:bindButtonEnable(
        "bg.content.start",
        function()
            local aid = y3.steam.get_player_aid()
            local ____opt_61 = room.data.roomInfo
            local ____opt_57 = ____opt_61 and ____opt_61.slots
            if ____opt_57 ~= nil then
                local ____opt_58 = room.data.roomInfo
                ____opt_57 = __TS__ArrayFind(
                    ____opt_58 and ____opt_58.slots,
                    function(____, a) return a.aid == aid end
                )
            end
            return (____opt_57 and ____opt_57.is_owner) == true
        end
    )
    self:bindClick(
        "bg.content.start",
        function()
            local ____opt_67 = room.data.roomInfo
            local ____opt_63 = ____opt_67 and ____opt_67.slots
            if ____opt_63 ~= nil then
                local ____opt_64 = room.data.roomInfo
                ____opt_63 = #__TS__ArrayFilter(
                    ____opt_64 and ____opt_64.slots,
                    function(____, a) return a.in_game end
                )
            end
            local inGameCount = ____opt_63 or 0
            if inGameCount > 0 then
                DTips:show(i18n["local"](i18n, "有玩家未结束游戏，需等待其结束游戏或者将其踢出队伍才可开始游戏"))
                return
            end
            local ____opt_73 = room.data.roomInfo
            local ____opt_69 = ____opt_73 and ____opt_73.slots
            if ____opt_69 ~= nil then
                local ____opt_70 = room.data.roomInfo
                ____opt_69 = #__TS__ArrayFilter(
                    ____opt_70 and ____opt_70.slots,
                    function(____, a) return a.aid ~= 0 or a.state == y3.const.SteamRoomSlotState["困难电脑"] or a.state == y3.const.SteamRoomSlotState["简单电脑"] end
                )
            end
            local playerCount = ____opt_69 or 0
            if playerCount < 2 then
                DTips:show(i18n["local"](i18n, "单人无法启动游戏，至少需要两个玩家/电脑才可以开始游戏"))
                return
            end
            room:startGame()
        end
    )
    self:bindText(
        "bg.content.start.text",
        function()
            return i18n["local"](i18n, "开始游戏")
        end
    )
    self:initRightMenu()
end
function DRoom.prototype.initRightMenu(self)
    self:bindVisible(
        "rightMenuBox",
        function()
            return self.data.rightMenu.visible
        end,
        true
    )
    self:bindClick(
        "rightMenuBox",
        function()
            self.data.rightMenu.visible = false
            self.data.rightMenu.items = {}
        end
    )
    local itemCount = 6
    do
        local i = 0
        while i < itemCount do
            local index = i + 1
            local path = "rightMenuBox.rightMenu.item" .. tostring(index)
            self:bindVisible(
                path,
                function()
                    return self.data.rightMenu.items[index] ~= nil
                end,
                true
            )
            self:bindTextColor(
                path .. ".name",
                function()
                    local data = self.data.rightMenu.items[index]
                    if data and data:enabled() then
                        return UIUtils:toColor("#bec5cc")
                    else
                        return UIUtils:toColor("#5f6266")
                    end
                end,
                true
            )
            self:bindText(
                path .. ".name",
                function()
                    local data = self.data.rightMenu.items[index]
                    return data and data.label or ""
                end,
                true
            )
            self:bindClick(
                path,
                function()
                    local data = self.data.rightMenu.items[index]
                    if data and data:enabled() then
                        data:callback()
                    end
                end
            )
            i = i + 1
        end
    end
end
function DRoom.prototype.showRightMenu(self, x, y, items)
    self.data.rightMenu.items = items
    self.data.rightMenu.visible = true
    local ui = self:getUI("rightMenuBox.rightMenu")
    if ui ~= nil then
        ui:set_absolute_pos(x, y)
    end
end
return ____exports
