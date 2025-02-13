local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__StringTrim = ____lualib.__TS__StringTrim
local __TS__Promise = ____lualib.__TS__Promise
local __TS__InstanceOf = ____lualib.__TS__InstanceOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["22"] = 6,["23"] = 8,["24"] = 6,["25"] = 10,["26"] = 10,["27"] = 10,["29"] = 11,["32"] = 21,["33"] = 22,["37"] = 14,["38"] = 15,["40"] = 17,["41"] = 18,["48"] = 25,["49"] = 26,["51"] = 28,["52"] = 10,["53"] = 31,["54"] = 32,["55"] = 33,["56"] = 34,["58"] = 36,["59"] = 37,["60"] = 38,["63"] = 41,["64"] = 41,["65"] = 41,["68"] = 45,["71"] = 43,["77"] = 41,["78"] = 41,["79"] = 41,["80"] = 41,["81"] = 31,["82"] = 50,["83"] = 51,["84"] = 52,["87"] = 55,["88"] = 55,["89"] = 55,["92"] = 59,["95"] = 57,["101"] = 55,["102"] = 55,["103"] = 55,["104"] = 55,["105"] = 50,["106"] = 65,["107"] = 66,["108"] = 66,["109"] = 66,["110"] = 66,["111"] = 67,["112"] = 66,["113"] = 66,["114"] = 66,["115"] = 65,["116"] = 70,["117"] = 71,["118"] = 71,["119"] = 71,["120"] = 71,["121"] = 72,["122"] = 71,["123"] = 71,["124"] = 71,["125"] = 70,["126"] = 76,["127"] = 77,["128"] = 77,["129"] = 77,["130"] = 77,["131"] = 78,["132"] = 77,["133"] = 77,["134"] = 77,["135"] = 76,["136"] = 82,["137"] = 83,["138"] = 83,["139"] = 83,["140"] = 83,["141"] = 84,["142"] = 83,["143"] = 83,["144"] = 83,["145"] = 82,["146"] = 88,["147"] = 89,["148"] = 89,["149"] = 89,["150"] = 89,["151"] = 90,["152"] = 89,["153"] = 89,["154"] = 89,["155"] = 88,["156"] = 93,["157"] = 94,["158"] = 94,["159"] = 94,["160"] = 94,["161"] = 95,["162"] = 94,["163"] = 94,["164"] = 94,["165"] = 93,["166"] = 98,["167"] = 99,["168"] = 99,["169"] = 99,["170"] = 99,["171"] = 100,["172"] = 99,["173"] = 99,["174"] = 99,["175"] = 98,["176"] = 103,["177"] = 104,["178"] = 104,["179"] = 104,["180"] = 104,["181"] = 105,["182"] = 104,["183"] = 104,["184"] = 104,["185"] = 103,["186"] = 109,["187"] = 110,["188"] = 110,["189"] = 110,["190"] = 110,["191"] = 111,["192"] = 110,["193"] = 110,["194"] = 110,["195"] = 109,["196"] = 115,["197"] = 116,["198"] = 116,["199"] = 116,["200"] = 116,["201"] = 117,["202"] = 118,["204"] = 120,["205"] = 121,["207"] = 123,["208"] = 124,["211"] = 116,["212"] = 116,["213"] = 116,["214"] = 115,["215"] = 131,["216"] = 131,["217"] = 131,["219"] = 131,["220"] = 131,["222"] = 132,["223"] = 133,["224"] = 134,["227"] = 137,["228"] = 138,["229"] = 138,["230"] = 138,["233"] = 159,["236"] = 140,["237"] = 141,["238"] = 142,["239"] = 143,["241"] = 145,["242"] = 146,["243"] = 147,["244"] = 148,["245"] = 148,["246"] = 148,["247"] = 149,["248"] = 148,["249"] = 148,["251"] = 152,["252"] = 153,["253"] = 154,["254"] = 155,["255"] = 154,["262"] = 139,["265"] = 138,["266"] = 138,["267"] = 131,["268"] = 166,["269"] = 167,["270"] = 167,["271"] = 167,["272"] = 167,["273"] = 168,["274"] = 167,["275"] = 167,["276"] = 167,["277"] = 166,["278"] = 174,["279"] = 175,["280"] = 175,["281"] = 175,["282"] = 175,["283"] = 176,["284"] = 177,["285"] = 178,["287"] = 180,["289"] = 175,["290"] = 175,["291"] = 175,["292"] = 174,["293"] = 187,["294"] = 188,["295"] = 188,["296"] = 188,["297"] = 188,["298"] = 189,["299"] = 190,["300"] = 191,["302"] = 192,["304"] = 188,["305"] = 188,["306"] = 188,["307"] = 187,["308"] = 197,["309"] = 198,["310"] = 198,["311"] = 198,["312"] = 198,["313"] = 199,["314"] = 198,["315"] = 198,["316"] = 198,["317"] = 197,["318"] = 203,["319"] = 204,["320"] = 204,["321"] = 204,["322"] = 204,["323"] = 205,["324"] = 204,["325"] = 204,["326"] = 204,["327"] = 203,["328"] = 209,["329"] = 210,["330"] = 210,["331"] = 210,["332"] = 210,["333"] = 211,["334"] = 210,["335"] = 210,["336"] = 210,["337"] = 209,["338"] = 215,["339"] = 216,["340"] = 216,["341"] = 216,["342"] = 216,["343"] = 217,["344"] = 216,["345"] = 216,["346"] = 216,["347"] = 215,["348"] = 221,["349"] = 222,["350"] = 223,["351"] = 221,["352"] = 226,["353"] = 227,["354"] = 227,["355"] = 227,["356"] = 227,["357"] = 228,["358"] = 228,["359"] = 228,["360"] = 228,["361"] = 228,["362"] = 228,["363"] = 228,["364"] = 227,["365"] = 227,["366"] = 227,["367"] = 226,["368"] = 232,["369"] = 233,["370"] = 233,["371"] = 233,["372"] = 233,["373"] = 233,["374"] = 232,["375"] = 235,["376"] = 236,["377"] = 236,["378"] = 236,["379"] = 236,["380"] = 236,["381"] = 235,["382"] = 239,["383"] = 240,["384"] = 240,["385"] = 240,["386"] = 240,["387"] = 240,["388"] = 239,["389"] = 243,["390"] = 244,["391"] = 244,["392"] = 244,["393"] = 244,["394"] = 244,["395"] = 243,["396"] = 246,["397"] = 247,["398"] = 248,["399"] = 247,["400"] = 250,["401"] = 251,["402"] = 251,["403"] = 251,["404"] = 251,["405"] = 252,["406"] = 251,["407"] = 251,["408"] = 254,["409"] = 254,["410"] = 254,["411"] = 254,["412"] = 255,["413"] = 254,["414"] = 254,["415"] = 257,["416"] = 257,["417"] = 257,["418"] = 257,["419"] = 259,["420"] = 260,["421"] = 260,["422"] = 260,["423"] = 261,["424"] = 260,["425"] = 260,["427"] = 246,["428"] = 266,["429"] = 267,["430"] = 267,["431"] = 267,["432"] = 267,["433"] = 267,["434"] = 266,["435"] = 269,["436"] = 270,["437"] = 270,["438"] = 270,["439"] = 270,["440"] = 270,["441"] = 269,["442"] = 272,["443"] = 273,["444"] = 273,["445"] = 273,["446"] = 273,["447"] = 273,["448"] = 272,["449"] = 275,["450"] = 276,["451"] = 276,["452"] = 276,["453"] = 276,["454"] = 276,["455"] = 275,["456"] = 279,["457"] = 280,["458"] = 280,["459"] = 280,["460"] = 280,["461"] = 280,["462"] = 279,["463"] = 283,["464"] = 284,["465"] = 284,["466"] = 284,["467"] = 284,["468"] = 284,["469"] = 283,["470"] = 287,["471"] = 287,["472"] = 287,["474"] = 287,["475"] = 287,["477"] = 288,["478"] = 288,["479"] = 288,["480"] = 288,["481"] = 288,["482"] = 288,["483"] = 288,["484"] = 287,["485"] = 296,["486"] = 297,["487"] = 297,["488"] = 297,["489"] = 297,["490"] = 297,["491"] = 297,["492"] = 297,["493"] = 296,["494"] = 305,["495"] = 306,["496"] = 306,["497"] = 306,["498"] = 306,["499"] = 306,["500"] = 306,["501"] = 306,["502"] = 305,["503"] = 312,["504"] = 313,["505"] = 313,["506"] = 313,["507"] = 313,["508"] = 313,["509"] = 312,["510"] = 318,["511"] = 319,["512"] = 319,["513"] = 319,["514"] = 319,["515"] = 319,["516"] = 318,["517"] = 325,["518"] = 326,["519"] = 326,["520"] = 326,["521"] = 326,["522"] = 326,["523"] = 325,["524"] = 329,["525"] = 330,["526"] = 330,["527"] = 330,["528"] = 330,["529"] = 330,["530"] = 329,["531"] = 333,["532"] = 334,["533"] = 334,["534"] = 334,["535"] = 334,["536"] = 334,["537"] = 333,["538"] = 337,["539"] = 338,["540"] = 338,["541"] = 338,["542"] = 338,["543"] = 338,["544"] = 337,["545"] = 341,["546"] = 342,["547"] = 342,["548"] = 342,["549"] = 342,["550"] = 342,["551"] = 341,["552"] = 344,["553"] = 345,["554"] = 346,["555"] = 347,["556"] = 344,["557"] = 350,["558"] = 351,["559"] = 351,["560"] = 351,["561"] = 351,["562"] = 352,["563"] = 351,["564"] = 351,["565"] = 351,["566"] = 350,["567"] = 356,["568"] = 357,["569"] = 357,["570"] = 357,["571"] = 357,["572"] = 358,["573"] = 359,["575"] = 357,["576"] = 357,["577"] = 357,["578"] = 356,["579"] = 364,["580"] = 365,["581"] = 365,["582"] = 365,["583"] = 365,["584"] = 365,["585"] = 364,["586"] = 368,["587"] = 369,["588"] = 369,["589"] = 369,["590"] = 369,["591"] = 369,["592"] = 369,["593"] = 369,["594"] = 368,["595"] = 372,["596"] = 373,["597"] = 373,["598"] = 373,["599"] = 373,["600"] = 374,["601"] = 375,["602"] = 376,["604"] = 378,["607"] = 373,["608"] = 373,["609"] = 373,["610"] = 372});
local ____exports = {}
local ____SoundManager = include("logic.managers.SoundManager")
local SoundType = ____SoundManager.SoundType
local SoundManager = ____SoundManager.SoundManager
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Watcher = include("framework.ui.Watcher")
local Watcher = ____Watcher.Watcher
____exports.UIBinder = __TS__Class()
local UIBinder = ____exports.UIBinder
UIBinder.name = "UIBinder"
__TS__ClassExtends(UIBinder, Watcher)
function UIBinder.prototype.____constructor(self, ...)
    Watcher.prototype.____constructor(self, ...)
    self.name = ""
end
function UIBinder.prototype.getUI(self, path, noError)
    if noError == nil then
        noError = false
    end
    local ui
    do
        local function ____catch(e)
            if not noError then
                console:error(e)
            end
        end
        local ____try, ____hasReturned = pcall(function()
            if path == nil then
                ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, self.name)
            else
                local fullPath = (self.name .. ".") .. path
                ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
    if not noError and ui == nil then
        console:error("无法找到UI", path)
    end
    return ui
end
function UIBinder.prototype.bind(self, path, compute, setter, async)
    local bindTraceback = nil
    if y3.game.is_debug_mode() then
        bindTraceback = debug.traceback()
    end
    local ui = self:getUI(path)
    if ui == nil then
        console:error("无法找到UI", path, bindTraceback)
        return
    end
    self:watch(
        compute,
        function(____, newVal, oldVal)
            do
                local function ____catch(e)
                    console:error("设置UI异常", e, path, bindTraceback)
                end
                local ____try, ____hasReturned = pcall(function()
                    setter(nil, ui, newVal)
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
        end,
        async,
        true
    )
end
function UIBinder.prototype.uiBind(self, ui, compute, setter, async)
    if ui == nil then
        console:error("无法绑定UI, UI不存在")
        return
    end
    self:watch(
        compute,
        function(____, newVal, oldVal)
            do
                local function ____catch(e)
                    console:error("设置UI异常", e, ui.name)
                end
                local ____try, ____hasReturned = pcall(function()
                    setter(nil, ui, newVal)
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
        end,
        async,
        true
    )
end
function UIBinder.prototype.uiBindText(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_text(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindTextColor(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_text_color(v[1] or 0, v[2] or 0, v[3] or 0, v[4] or 0)
        end,
        async
    )
end
function UIBinder.prototype.uiBindVisible(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_visible(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindButtonEnable(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_button_enable(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindImage(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_image(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindHoverImage(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_hover_image_type(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindPressImage(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_press_image_type(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindDisableImage(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_disable_image_type(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindSeq(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            GameAPI.set_ui_comp_sequence(y3.player.LOCAL_PLAYER.handle, ui.handle, v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindImageUrl(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            if type(v) == "number" then
                ui:set_image(v)
            else
                if v == nil or __TS__StringTrim(v) == "" then
                    ui:set_image(0)
                else
                    ui:set_image(0)
                    ui:set_image_url(v)
                end
            end
        end,
        async
    )
end
function UIBinder.prototype.uiBindAction(self, ui, event, callback, clickCd, soundType)
    if clickCd == nil then
        clickCd = 0.25
    end
    if soundType == nil then
        soundType = SoundType["点击音效"]
    end
    if ui == nil then
        local bindTraceback = debug.traceback()
        console:error("无法找到UI", bindTraceback)
        return
    end
    local clickCD = false
    ui:add_local_event(
        event,
        function()
            do
                local function ____catch(e)
                    console:error("点击事件异常", e)
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    local isClick = event == "左键-按下" or event == "右键-按下" or event == "左键-点击" or event == "右键-点击"
                    if isClick and clickCD then
                        console:log("点击CD")
                        return true
                    end
                    if isClick then
                        SoundManager:play(soundType)
                        clickCD = true
                        y3.ctimer.wait(
                            clickCd,
                            function()
                                clickCD = false
                            end
                        )
                    end
                    local p = callback(nil, ui, LOCAL.PLAYER)
                    if __TS__InstanceOf(p, __TS__Promise) then
                        p:catch(function(____, e)
                            console:error(e)
                        end)
                    end
                end)
                if not ____try then
                    ____hasReturned, ____returnValue = ____catch(____hasReturned)
                end
                if ____hasReturned then
                    return ____returnValue
                end
            end
        end
    )
end
function UIBinder.prototype.uiBindProgress(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_current_progress_bar_value(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindModel(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            local unit = y3.object.unit[v]
            if unit ~= nil and unit.data ~= nil and unit.data.model ~= nil then
                ui:set_ui_model_id(unit.data.model)
            else
                ui:set_ui_model_id(0)
            end
        end,
        async
    )
end
function UIBinder.prototype.uiBindModelHead(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            local unit = y3.object.unit[v]
            if unit ~= nil and unit.data ~= nil and unit.data.icon ~= nil then
                ui:set_image(unit.data.icon)
            else
                ui:set_image(999)
            end
        end,
        async
    )
end
function UIBinder.prototype.uiBindPos(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_pos(v.x, v.y)
        end,
        async
    )
end
function UIBinder.prototype.uiBindModelFov(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:change_showroom_fov(v)
        end,
        async
    )
end
function UIBinder.prototype.uiBindModelCamera(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:change_showroom_cposition(v.x, v.y, v.z)
        end,
        async
    )
end
function UIBinder.prototype.uiBindModelFocus(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            ui:set_ui_model_focus_pos(v.x, v.y, v.z)
        end,
        async
    )
end
function UIBinder.prototype.uiBindMouse(self, ui, on, off)
    self:uiBindAction(ui, "鼠标-移入", on)
    self:uiBindAction(ui, "鼠标-移出", off)
end
function UIBinder.prototype.uiBindSpine(self, ui, compute, async)
    self:uiBind(
        ui,
        compute,
        function(____, ui, v)
            GameAPI.play_ui_spine(
                LOCAL.PLAYER.handle,
                ui.handle,
                v.spine,
                v.animName,
                v.isLoop
            )
        end,
        async
    )
end
function UIBinder.prototype.bindText(self, path, compute, async)
    self:uiBindText(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindTextColor(self, path, compute, async)
    self:uiBindTextColor(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindVisible(self, path, compute, async)
    self:uiBindVisible(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindButtonEnable(self, path, compute, async)
    self:uiBindButtonEnable(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindButtonEnableHover(self, buttonPath, hoverPaths, compute)
    local isEnabled = vue.computed(function()
        return compute(nil)
    end)
    local isOver = vue.ref(false)
    self:bindAction(
        buttonPath,
        "鼠标-移入",
        function()
            isOver.value = true
        end
    )
    self:bindAction(
        buttonPath,
        "鼠标-移出",
        function()
            isOver.value = false
        end
    )
    self:bindButtonEnable(
        buttonPath,
        function() return isEnabled.value end
    )
    for ____, hoverPath in ipairs(hoverPaths) do
        self:bindVisible(
            hoverPath,
            function()
                return isEnabled.value and isOver.value
            end
        )
    end
end
function UIBinder.prototype.bindImage(self, path, compute, async)
    self:uiBindImage(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindHoverImage(self, path, compute, async)
    self:uiBindHoverImage(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindPressImage(self, path, compute, async)
    self:uiBindPressImage(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindDisableImage(self, path, compute, async)
    self:uiBindDisableImage(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindSeq(self, path, compute, async)
    self:uiBindSeq(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindImageUrl(self, path, compute, async)
    self:uiBindImageUrl(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindAction(self, path, event, callback, clickCd, soundType)
    if clickCd == nil then
        clickCd = 0.25
    end
    if soundType == nil then
        soundType = SoundType["点击音效"]
    end
    self:uiBindAction(
        self:getUI(path),
        event,
        callback,
        clickCd,
        soundType
    )
end
function UIBinder.prototype.bindClick(self, path, callback, clickCd, soundType)
    self:uiBindAction(
        self:getUI(path),
        "左键-点击",
        callback,
        clickCd,
        soundType
    )
end
function UIBinder.prototype.bindRightClick(self, path, callback, clickCd, soundType)
    self:uiBindAction(
        self:getUI(path),
        "右键-点击",
        callback,
        clickCd,
        soundType
    )
end
function UIBinder.prototype.bindProgress(self, path, compute, async)
    self:uiBindProgress(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindModel(self, path, compute, async)
    self:uiBindModel(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindModelHead(self, path, compute, async)
    self:uiBindModelHead(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindPos(self, path, compute, async)
    self:uiBindPos(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindModelFov(self, path, compute, async)
    self:uiBindModelFov(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindModelCamera(self, path, compute, async)
    self:uiBindModelCamera(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindModelFocus(self, path, compute, async)
    self:uiBindModelFocus(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.bindMouse(self, path, on, off)
    local ui = self:getUI(path)
    self:uiBindAction(ui, "鼠标-移入", on)
    self:uiBindAction(ui, "鼠标-移出", off)
end
function UIBinder.prototype.bindAlpha(self, path, compute, async)
    self:uiBind(
        self:getUI(path),
        compute,
        function(____, ui, v)
            ui:set_alpha(v)
        end,
        async
    )
end
function UIBinder.prototype.bindSize(self, path, compute, async)
    self:uiBind(
        self:getUI(path),
        compute,
        function(____, ui, v)
            if v ~= nil then
                ui:set_ui_size(v.width, v.height)
            end
        end,
        async
    )
end
function UIBinder.prototype.bindSpine(self, path, compute, async)
    self:uiBindSpine(
        self:getUI(path),
        compute,
        async
    )
end
function UIBinder.prototype.playSpine(self, ui, spineId, animName, isLoop)
    GameAPI.play_ui_spine(
        LOCAL.PLAYER.handle,
        ui.handle,
        spineId,
        animName,
        isLoop
    )
end
function UIBinder.prototype.bindScale(self, path, compute, async)
    self:uiBind(
        self:getUI(path),
        compute,
        function(____, ui, v)
            if v ~= nil then
                if type(v) == "number" then
                    ui:set_widget_relative_scale(v, v)
                else
                    ui:set_widget_relative_scale(v.x, v.y)
                end
            end
        end,
        async
    )
end
return ____exports
