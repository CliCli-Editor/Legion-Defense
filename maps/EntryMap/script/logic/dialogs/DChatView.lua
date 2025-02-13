local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__New = ____lualib.__TS__New
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["25"] = 8,["26"] = 9,["27"] = 17,["28"] = 17,["29"] = 17,["30"] = 17,["31"] = 17,["32"] = 17,["33"] = 29,["34"] = 30,["35"] = 8,["36"] = 25,["37"] = 26,["38"] = 25,["39"] = 31,["40"] = 32,["41"] = 33,["42"] = 34,["43"] = 35,["44"] = 37,["45"] = 37,["46"] = 37,["47"] = 38,["48"] = 39,["49"] = 40,["50"] = 41,["51"] = 45,["52"] = 47,["54"] = 50,["56"] = 52,["57"] = 37,["58"] = 37,["59"] = 56,["60"] = 56,["61"] = 56,["62"] = 56,["63"] = 57,["64"] = 58,["65"] = 59,["66"] = 56,["67"] = 56,["68"] = 71,["69"] = 71,["70"] = 71,["71"] = 71,["72"] = 73,["73"] = 74,["74"] = 75,["75"] = 71,["76"] = 71,["77"] = 77,["78"] = 77,["79"] = 77,["80"] = 77,["81"] = 79,["82"] = 82,["83"] = 82,["84"] = 82,["85"] = 83,["86"] = 82,["87"] = 82,["88"] = 77,["89"] = 77,["90"] = 87,["91"] = 87,["92"] = 87,["93"] = 88,["94"] = 89,["95"] = 87,["96"] = 90,["97"] = 91,["98"] = 87,["99"] = 87,["100"] = 95,["101"] = 95,["102"] = 95,["103"] = 96,["104"] = 98,["106"] = 100,["108"] = 95,["109"] = 95,["110"] = 119,["111"] = 119,["112"] = 119,["113"] = 121,["116"] = 122,["119"] = 126,["120"] = 119,["121"] = 119,["122"] = 136,["123"] = 137,["124"] = 138,["125"] = 140,["126"] = 140,["127"] = 140,["128"] = 141,["129"] = 140,["130"] = 140,["131"] = 144,["132"] = 144,["133"] = 144,["134"] = 145,["135"] = 144,["136"] = 144,["137"] = 148,["138"] = 148,["139"] = 148,["140"] = 149,["141"] = 148,["142"] = 148,["143"] = 151,["144"] = 151,["145"] = 151,["146"] = 152,["147"] = 151,["148"] = 151,["149"] = 155,["150"] = 155,["151"] = 155,["152"] = 155,["153"] = 156,["154"] = 155,["155"] = 155,["156"] = 159,["157"] = 159,["158"] = 159,["159"] = 159,["160"] = 160,["161"] = 159,["162"] = 159,["163"] = 163,["164"] = 163,["165"] = 163,["166"] = 163,["167"] = 164,["168"] = 163,["169"] = 163,["170"] = 166,["171"] = 166,["172"] = 166,["173"] = 166,["174"] = 167,["175"] = 166,["176"] = 166,["177"] = 170,["178"] = 170,["179"] = 170,["180"] = 171,["181"] = 170,["182"] = 170,["183"] = 174,["184"] = 174,["185"] = 174,["186"] = 175,["187"] = 174,["188"] = 174,["189"] = 178,["190"] = 178,["191"] = 178,["192"] = 179,["193"] = 178,["194"] = 178,["195"] = 181,["196"] = 181,["197"] = 181,["198"] = 182,["199"] = 181,["200"] = 181,["201"] = 31,["202"] = 199,["203"] = 200,["204"] = 201,["206"] = 201,["208"] = 199,["209"] = 204,["210"] = 205,["212"] = 205,["214"] = 204,["215"] = 208,["216"] = 209,["217"] = 208,["218"] = 211,["219"] = 212,["220"] = 211,["221"] = 215,["222"] = 216,["223"] = 215,["224"] = 218,["225"] = 219,["226"] = 218,["227"] = 222,["228"] = 223,["229"] = 222,["230"] = 226,["232"] = 227,["233"] = 231,["234"] = 232,["237"] = 239,["240"] = 234,["241"] = 235,["242"] = 235,["244"] = 236,["245"] = 237,["251"] = 233,["254"] = 232,["255"] = 242,["256"] = 244,["257"] = 244,["258"] = 245,["259"] = 246,["260"] = 244,["261"] = 247,["262"] = 248,["265"] = 249,["266"] = 250,["267"] = 251,["268"] = 252,["269"] = 253,["270"] = 253,["271"] = 253,["272"] = 254,["273"] = 253,["274"] = 253,["275"] = 244,["276"] = 244,["277"] = 244,["278"] = 244,["280"] = 226,["281"] = 259,["283"] = 260,["284"] = 264,["285"] = 265,["288"] = 272,["291"] = 267,["292"] = 268,["293"] = 268,["295"] = 269,["296"] = 270,["302"] = 266,["305"] = 265,["306"] = 275,["307"] = 277,["308"] = 277,["309"] = 278,["310"] = 279,["311"] = 277,["312"] = 280,["313"] = 281,["316"] = 282,["317"] = 283,["318"] = 284,["319"] = 285,["320"] = 285,["321"] = 285,["322"] = 286,["323"] = 285,["324"] = 285,["325"] = 277,["326"] = 277,["327"] = 277,["328"] = 277,["330"] = 259,["331"] = 293,["333"] = 294,["334"] = 298,["335"] = 299,["338"] = 306,["341"] = 301,["342"] = 302,["343"] = 302,["345"] = 303,["346"] = 304,["352"] = 300,["355"] = 299,["356"] = 309,["357"] = 311,["358"] = 311,["359"] = 312,["360"] = 314,["361"] = 311,["362"] = 315,["363"] = 316,["366"] = 317,["367"] = 318,["368"] = 319,["369"] = 320,["370"] = 320,["371"] = 320,["372"] = 321,["373"] = 320,["374"] = 320,["375"] = 311,["376"] = 311,["377"] = 311,["378"] = 311,["380"] = 293,["381"] = 327,["383"] = 328,["384"] = 332,["385"] = 333,["388"] = 340,["391"] = 335,["392"] = 336,["393"] = 336,["395"] = 337,["396"] = 338,["402"] = 334,["405"] = 333,["406"] = 343,["407"] = 345,["408"] = 345,["409"] = 346,["410"] = 347,["411"] = 345,["412"] = 348,["413"] = 349,["416"] = 350,["417"] = 351,["418"] = 352,["419"] = 353,["420"] = 353,["421"] = 353,["422"] = 354,["423"] = 353,["424"] = 353,["425"] = 345,["426"] = 345,["427"] = 345,["428"] = 345,["430"] = 327});
local ____exports = {}
local ____ChatView = include("framework.ui.ChatView")
local ChatView = ____ChatView.ChatView
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
local ____ChatData = include("logic.models.ChatData")
local ChatData = ____ChatData.ChatData
____exports.DChatView = __TS__Class()
local DChatView = ____exports.DChatView
DChatView.name = "DChatView"
__TS__ClassExtends(DChatView, Dialog)
function DChatView.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {
        type = 0,
        timeout = 10,
        isShow = true,
        onMoused = false,
        isInput = false
    }
    self.isFocus = false
    self.idleTime = 0
end
function DChatView.prototype.onCreate(self)
    self:initView()
end
function DChatView.prototype.initView(self)
    self:initChatAll()
    self:initChatTeam()
    self:initChatSystem()
    self:initChatNotify()
    LOCAL.PLAYER:event(
        "玩家-发送消息",
        function(trg, data)
            local team_ui = self:getUI("chat.chat_box.input.scroll_view_channel.button_alliance")
            local all_ui = self:getUI("chat.chat_box.input.scroll_view_channel.button_all")
            local all_x = all_ui:get_absolute_y()
            local team_x = team_ui:get_absolute_y()
            if all_x < team_x then
                chatController.sendMsg:execute(data.player.id, data.str1, true)
            else
                chatController.sendMsg:execute(data.player.id, data.str1, false)
            end
            self.data.isInput = false
        end
    )
    LOCAL.PLAYER:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.RETURN,
        function()
            self:showChat()
            self:addTime()
            self.data.isInput = true
        end
    )
    LOCAL.PLAYER:event(
        "本地-界面-输入框获取焦点",
        self:getUI("chat.chat_box.input.image_19.input_field"),
        function(trg, data)
            self.data.isInput = true
            self:showChat()
            self:addTime()
        end
    )
    LOCAL.PLAYER:event(
        "本地-界面-输入框失去焦点",
        self:getUI("chat.chat_box.input.image_19.input_field"),
        function()
            self.data.isInput = false
            y3.ltimer.wait_frame(
                2,
                function()
                    self:hideInput()
                end
            )
        end
    )
    self:bindMouse(
        "chat",
        function()
            self.data.onMoused = true
            self:addTime()
        end,
        function()
            self.data.onMoused = false
        end
    )
    self:watch(
        function() return self.data.timeout end,
        function(____, v)
            if v == 0 then
                self:hideChat()
            else
                self:showChat()
            end
        end
    )
    y3.ltimer.loop(
        1,
        function()
            if self.data.onMoused then
                return
            end
            if self.data.isInput then
                return
            end
            self.data.timeout = math.max(0, self.data.timeout - 1)
        end
    )
    self:hideInput()
    self.data.isInput = false
    self:getUI("chat.tip"):set_visible(false)
    self:bindVisible(
        "chat.content.all_chat",
        function()
            return self.data.type == 0
        end
    )
    self:bindVisible(
        "chat.content.team_chat",
        function()
            return self.data.type == 1
        end
    )
    self:bindVisible(
        "chat.content.notify_chat",
        function()
            return self.data.type == 2
        end
    )
    self:bindVisible(
        "chat.content.system_chat",
        function()
            return self.data.type == 3
        end
    )
    self:bindAction(
        "chat.content.list.all",
        "左键-点击",
        function()
            self.data.type = 0
        end
    )
    self:bindAction(
        "chat.content.list.chat",
        "左键-点击",
        function()
            self.data.type = 1
        end
    )
    self:bindAction(
        "chat.content.list.notify",
        "左键-点击",
        function()
            self.data.type = 2
        end
    )
    self:bindAction(
        "chat.content.list.system",
        "左键-点击",
        function()
            self.data.type = 3
        end
    )
    self:bindVisible(
        "chat.content.list.all.select",
        function()
            return self.data.type == 0
        end
    )
    self:bindVisible(
        "chat.content.list.chat.select",
        function()
            return self.data.type == 1
        end
    )
    self:bindVisible(
        "chat.content.list.notify.select",
        function()
            return self.data.type == 2
        end
    )
    self:bindVisible(
        "chat.content.list.system.select",
        function()
            return self.data.type == 3
        end
    )
end
function DChatView.prototype.showChat(self)
    self.idleTime = 0
    local ____opt_0 = self:getUI("chat.content")
    if ____opt_0 ~= nil then
        ____opt_0:set_visible(true)
    end
end
function DChatView.prototype.hideChat(self)
    local ____opt_2 = self:getUI("chat.content")
    if ____opt_2 ~= nil then
        ____opt_2:set_visible(false)
    end
end
function DChatView.prototype.isInputVisible(self)
    return self:getUI("chat.chat_box.input.image_19.input_field"):is_visible()
end
function DChatView.prototype.isContentVisible(self)
    return self:getUI("chat.content"):is_visible()
end
function DChatView.prototype.hideInput(self)
    self:getUI("chat.chat_box.input"):set_visible(false)
end
function DChatView.prototype.showInput(self)
    self:getUI("chat.chat_box.input"):set_visible(true)
end
function DChatView.prototype.addTime(self)
    self.data.timeout = math.min(10, self.data.timeout + 3)
end
function DChatView.prototype.initChatAll(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local scroll = __TS__New(ChatView, {prefab = "ChatTextItem", rootPath = "DChatView.chat.content.all_chat"})
        scroll:init()
        scroll.itemRender = function(____, ui, index)
            do
                local function ____catch(____error)
                    console:error(____error)
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                    if chatData == nil or chatData.all_messages == nil or chatData.all_messages[index + 1] == nil then
                        return true
                    end
                    local text = chatData.all_messages[index + 1].value
                    ui:set_text(text)
                end)
                if not ____try then
                    ____hasReturned, ____returnValue = ____catch(____hasReturned)
                end
                if ____hasReturned then
                    return ____returnValue
                end
            end
        end
        scroll:refresh(0)
        self:watch(
            function()
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                return chatData and #chatData.all_messages
            end,
            function(____, v)
                if v == nil or v == 0 then
                    return
                end
                self:addTime()
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                scroll:updateLens(chatData and #chatData.all_messages or 0)
                scroll:moveToBottom()
                y3.timer.wait_frame(
                    4,
                    function()
                        scroll:moveToBottom()
                    end
                )
            end,
            false,
            true
        )
    end)
end
function DChatView.prototype.initChatTeam(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local scroll = __TS__New(ChatView, {prefab = "ChatTextItem", rootPath = "DChatView.chat.content.team_chat"})
        scroll:init()
        scroll.itemRender = function(____, ui, index)
            do
                local function ____catch(____error)
                    console:error(____error)
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                    if chatData == nil or chatData.chats == nil or chatData.chats[index + 1] == nil then
                        return true
                    end
                    local text = chatData.chats[index + 1].value
                    ui:set_text(text)
                end)
                if not ____try then
                    ____hasReturned, ____returnValue = ____catch(____hasReturned)
                end
                if ____hasReturned then
                    return ____returnValue
                end
            end
        end
        scroll:refresh(0)
        self:watch(
            function()
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                return chatData and #chatData.chats
            end,
            function(____, v)
                if v == nil or v == 0 then
                    return
                end
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                scroll:updateLens(chatData and #chatData.chats or 0)
                scroll:moveToBottom()
                y3.timer.wait_frame(
                    4,
                    function()
                        scroll:moveToBottom()
                    end
                )
            end,
            false,
            true
        )
    end)
end
function DChatView.prototype.initChatSystem(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local scroll = __TS__New(ChatView, {prefab = "ChatTextItem", rootPath = "DChatView.chat.content.system_chat"})
        scroll:init()
        scroll.itemRender = function(____, ui, index)
            do
                local function ____catch(____error)
                    console:error(____error)
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                    if chatData == nil or chatData.sys == nil or chatData.sys[index + 1] == nil then
                        return true
                    end
                    local text = chatData.sys[index + 1].value
                    ui:set_text(text)
                end)
                if not ____try then
                    ____hasReturned, ____returnValue = ____catch(____hasReturned)
                end
                if ____hasReturned then
                    return ____returnValue
                end
            end
        end
        scroll:refresh(0)
        self:watch(
            function()
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                return chatData and #chatData.sys
            end,
            function(____, v)
                if v == nil or v == 0 then
                    return
                end
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                scroll:updateLens(chatData and #chatData.sys or 0)
                scroll:moveToBottom()
                y3.timer.wait_frame(
                    4,
                    function()
                        scroll:moveToBottom()
                    end
                )
            end,
            false,
            true
        )
    end)
end
function DChatView.prototype.initChatNotify(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local scroll = __TS__New(ChatView, {prefab = "ChatTextItem", rootPath = "DChatView.chat.content.notify_chat"})
        scroll:init()
        scroll.itemRender = function(____, ui, index)
            do
                local function ____catch(____error)
                    console:error(____error)
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                    if chatData == nil or chatData.nofities == nil or chatData.nofities[index + 1] == nil then
                        return true
                    end
                    local text = chatData.nofities[index + 1].value
                    ui:set_text(text)
                end)
                if not ____try then
                    ____hasReturned, ____returnValue = ____catch(____hasReturned)
                end
                if ____hasReturned then
                    return ____returnValue
                end
            end
        end
        scroll:refresh(0)
        self:watch(
            function()
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                return chatData and #chatData.nofities
            end,
            function(____, v)
                if v == nil or v == 0 then
                    return
                end
                local chatData = LOCAL.PLAYER_DATA:getSingle(ChatData)
                scroll:updateLens(chatData and #chatData.nofities or 0)
                scroll:moveToBottom()
                y3.timer.wait_frame(
                    4,
                    function()
                        scroll:moveToBottom()
                    end
                )
            end,
            false,
            true
        )
    end)
end
return ____exports
