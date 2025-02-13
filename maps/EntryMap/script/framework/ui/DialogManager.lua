local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__FunctionBind = ____lualib.__TS__FunctionBind
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__New = ____lualib.__TS__New
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 4,["18"] = 6,["19"] = 7,["20"] = 8,["21"] = 9,["22"] = 10,["23"] = 11,["24"] = 12,["29"] = 21,["30"] = 21,["31"] = 21,["33"] = 23,["34"] = 24,["35"] = 25,["36"] = 30,["37"] = 30,["38"] = 34,["39"] = 34,["40"] = 38,["41"] = 37,["42"] = 44,["44"] = 45,["45"] = 46,["48"] = 49,["49"] = 49,["50"] = 49,["51"] = 49,["52"] = 49,["53"] = 49,["55"] = 44,["56"] = 52,["58"] = 53,["59"] = 54,["62"] = 57,["64"] = 52,["65"] = 60,["66"] = 61,["67"] = 62,["68"] = 63,["69"] = 64,["70"] = 65,["71"] = 66,["72"] = 67,["76"] = 77,["79"] = 70,["80"] = 71,["81"] = 72,["82"] = 73,["83"] = 72,["90"] = 79,["91"] = 60,["92"] = 96,["94"] = 97,["95"] = 100,["96"] = 101,["97"] = 102,["98"] = 103,["101"] = 106,["102"] = 108,["104"] = 111,["105"] = 112,["106"] = 113,["107"] = 114,["108"] = 115,["109"] = 116,["110"] = 117,["113"] = 120,["114"] = 121,["115"] = 122,["116"] = 123,["117"] = 122,["120"] = 119,["123"] = 127,["125"] = 119,["126"] = 129,["127"] = 130,["128"] = 131,["130"] = 133,["131"] = 133,["132"] = 133,["134"] = 133,["136"] = 133,["137"] = 135,["138"] = 137,["140"] = 140,["141"] = 141,["142"] = 142,["143"] = 143,["144"] = 144,["145"] = 145,["146"] = 148,["148"] = 139,["151"] = 151,["153"] = 139,["155"] = 154,["157"] = 156,["158"] = 157,["160"] = 96,["161"] = 160,["162"] = 161,["164"] = 162,["165"] = 162,["166"] = 163,["167"] = 165,["168"] = 166,["169"] = 168,["170"] = 170,["171"] = 171,["173"] = 173,["174"] = 175,["175"] = 177,["176"] = 178,["178"] = 180,["179"] = 181,["181"] = 162,["184"] = 160,["185"] = 200,["187"] = 203,["188"] = 204,["189"] = 205,["191"] = 207,["192"] = 208,["195"] = 200,["196"] = 212,["198"] = 213,["200"] = 212,["201"] = 220,["204"] = 224,["205"] = 225,["206"] = 226,["208"] = 229,["209"] = 230,["211"] = 233,["212"] = 233,["213"] = 233,["215"] = 233,["217"] = 233,["218"] = 235,["219"] = 236,["220"] = 237,["221"] = 238,["222"] = 242,["223"] = 243,["224"] = 244,["225"] = 246,["226"] = 248,["227"] = 249,["228"] = 250,["230"] = 254,["232"] = 257,["234"] = 223,["237"] = 260,["239"] = 223,["241"] = 220,["242"] = 267,["244"] = 269,["246"] = 270,["247"] = 271,["248"] = 272,["250"] = 274,["251"] = 275,["257"] = 267,["258"] = 282,["259"] = 283,["260"] = 284,["261"] = 285,["263"] = 287,["264"] = 282,["265"] = 293,["267"] = 294,["268"] = 294,["269"] = 295,["270"] = 296,["271"] = 297,["272"] = 298,["275"] = 294,["278"] = 293,["279"] = 304,["280"] = 305,["281"] = 304,["282"] = 308,["283"] = 309,["284"] = 310,["285"] = 311,["287"] = 313,["288"] = 308,["289"] = 318});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local DialogStatus = ____Dialog.DialogStatus
local ____Keyboard = include("framework.ui.Keyboard")
local initKeyboard = ____Keyboard.initKeyboard
initKeyboard(nil)
____exports.DialogEvent = DialogEvent or ({})
____exports.DialogEvent.onCreate = "DialogEvent.onCreate"
____exports.DialogEvent.onShow = "DialogEvent.onShow"
____exports.DialogEvent.onHide = "DialogEvent.onHide"
____exports.DialogEvent.onCovered = "DialogEvent.onCovered"
____exports.DialogEvent.onUncovered = "DialogEvent.onUncovered"
____exports.DialogEvent.onEscapeDown = "DialogEvent.onEscapeDown"
--- 对话框管理
-- * 所有的界面本身都仅在local环境运行，因此界面操作本身不会产生指令消息
-- * 如果需产生指令，则必须通过消息，使所有客户端同时执行
-- * 对话框框架本身并产生全局消息，否则会降低界面操作性能
____exports.DialogManager = __TS__Class()
local DialogManager = ____exports.DialogManager
DialogManager.name = "DialogManager"
function DialogManager.prototype.____constructor(self)
    self._dialogCache = vue.reactive({})
    self._dialogViewList = {}
    self._fullSceneMap = {}
    self.lockScreen = function()
    end
    self.unlockScreen = function()
    end
    Dialog.hideByName = __TS__FunctionBind(self.hideByName, self)
end
function DialogManager.prototype.untilHided(self, clazz)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local dialog = self._dialogCache[clazz.name]
        if not dialog or dialog.status == DialogStatus.None then
            return ____awaiter_resolve(nil)
        end
        __TS__Await(dialog:watchOnce(
            function() return dialog.status end,
            function(____, c) return c == DialogStatus.None end,
            nil,
            true
        ))
    end)
end
function DialogManager.prototype.showRepeat(self, clazz, params)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if ____exports.dialogs:isShowed(clazz) then
            ____exports.dialogs:get(clazz).data.params = params
            return ____awaiter_resolve(nil)
        end
        ____exports.dialogs:show(clazz, params)
    end)
end
function DialogManager.prototype.create(self, clazz, params)
    local dialog = self._dialogCache[clazz.name]
    dialog = __TS__New(clazz)
    dialog.name = clazz.name
    dialog.data = vue.reactive(dialog.data)
    self._dialogCache[clazz.name] = dialog
    if params then
        dialog.data.params = params
    end
    do
        local function ____catch(e)
            console:error("对话框 onCreate 执行异常", e)
        end
        local ____try, ____hasReturned = pcall(function()
            local p = dialog.onCreate and dialog:onCreate()
            if p ~= nil and type(p) == "table" and p.catch ~= nil then
                p:catch(function(____, e)
                    console:error(e)
                end)
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
    dialog.event:emit(____exports.DialogEvent.onCreate)
end
function DialogManager.prototype.show(self, clazz, params)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:lockScreen()
        local dialog = self._dialogCache[clazz.name]
        if dialog and (dialog.status == DialogStatus.Showing or dialog.status == DialogStatus.Showed) then
            self:unlockScreen()
            console:warn(clazz.name .. " 已经打开，不允许重复打开.")
            return ____awaiter_resolve(nil)
        end
        if dialog ~= nil and (dialog.status == DialogStatus.Hiding or dialog.status == DialogStatus.None) then
            __TS__Await(self:untilHided(clazz))
        end
        if not dialog then
            dialog = __TS__New(clazz)
            dialog.name = clazz.name
            dialog.data = vue.reactive(dialog.data)
            self._dialogCache[clazz.name] = dialog
            if params then
                dialog.data.params = params
            end
            local ____try = __TS__AsyncAwaiter(function()
                local p = dialog.onCreate and dialog:onCreate()
                if p ~= nil and type(p) == "table" and p.catch ~= nil then
                    p:catch(function(____, e)
                        console:error(e)
                    end)
                end
            end)
            __TS__Await(____try.catch(
                ____try,
                function(____, e)
                    console:error("对话框 onCreate 执行异常", e)
                end
            ))
            dialog.event:emit(____exports.DialogEvent.onCreate)
        elseif params then
            dialog.data.params = params
        end
        local ____dialog_beforeShow_0
        if dialog.beforeShow then
            ____dialog_beforeShow_0 = __TS__Await(dialog:beforeShow():catch(function(____, e) return console:error(e) end))
        else
            ____dialog_beforeShow_0 = true
        end
        local agree = ____dialog_beforeShow_0
        if agree then
            dialog:setActive(true)
            local ____try = __TS__AsyncAwaiter(function()
                local ____ = dialog.onShow and __TS__Await(dialog:onShow())
                dialog.event:emit(____exports.DialogEvent.onShow)
                self:lockScreen()
                dialog.status = DialogStatus.Showing
                dialog.status = DialogStatus.Showed
                self:unlockScreen()
                self:refreshFullScene()
            end)
            __TS__Await(____try.catch(
                ____try,
                function(____, ____error)
                    console:error(____error)
                end
            ))
        else
            dialog:setActive(false)
        end
        self:unlockScreen()
        return ____awaiter_resolve(nil, dialog)
    end)
end
function DialogManager.prototype.refreshFullScene(self)
    local hide = false
    do
        local index = #self._dialogViewList - 1
        while index >= 0 do
            local dialog = self._dialogViewList[index + 1]
            if not hide then
                if not dialog.visible then
                    dialog._visible = true
                    local ____ = dialog.onUncovered and dialog:onUncovered()
                    dialog.event:emit(____exports.DialogEvent.onUncovered)
                end
            elseif dialog.visible then
                dialog._visible = false
                local ____ = dialog.onCovered and dialog:onCovered()
                dialog.event:emit(____exports.DialogEvent.onCovered)
            end
            if dialog.status == DialogStatus.Showed and dialog.isFullSceneLogic then
                hide = true
            end
            index = index - 1
        end
    end
end
function DialogManager.prototype.got(self, clazz, params)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local dialog = __TS__Await(self:show(clazz, params))
        if not dialog then
            return ____awaiter_resolve(nil, nil)
        else
            __TS__Await(self:untilHided(clazz))
            return ____awaiter_resolve(nil, dialog.data.returnData)
        end
    end)
end
function DialogManager.prototype.hideByName(self, name)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:hide({name = name})
    end)
end
function DialogManager.prototype.hide(self, clazz)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            local dialog = self._dialogCache[clazz.name]
            if not dialog then
                return ____awaiter_resolve(nil, true)
            end
            if dialog.status == DialogStatus.None or dialog.status == DialogStatus.Hiding then
                return ____awaiter_resolve(nil, false)
            end
            local ____dialog_beforeHide_1
            if dialog.beforeHide then
                ____dialog_beforeHide_1 = __TS__Await(dialog:beforeHide()) and (dialog.status == DialogStatus.Showed or dialog.status == DialogStatus.Showing)
            else
                ____dialog_beforeHide_1 = true
            end
            local agree = ____dialog_beforeHide_1
            if agree then
                self:lockScreen()
                dialog.status = DialogStatus.Hiding
                self:refreshFullScene()
                dialog.status = DialogStatus.None
                local ____ = dialog.onHide and dialog:onHide()
                dialog.event:emit(____exports.DialogEvent.onHide)
                dialog:setActive(false)
                local spliceIndex = __TS__ArrayIndexOf(self._dialogViewList, dialog)
                if spliceIndex ~= -1 then
                    __TS__ArraySplice(self._dialogViewList, spliceIndex, 1)
                end
                self:unlockScreen()
            end
            return ____awaiter_resolve(nil, agree)
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, e)
                console:error(e)
            end
        ))
    end)
end
function DialogManager.prototype.hideHover(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        for key in pairs(self._dialogCache) do
            do
                local dialog = self._dialogCache[key]
                if dialog.status == DialogStatus.None or dialog.status == DialogStatus.Hiding then
                    goto __continue50
                end
                if dialog.isHover then
                    self:hide({name = dialog.name})
                end
            end
            ::__continue50::
        end
    end)
end
function DialogManager.prototype.isShowed(self, clazz)
    local dialog = self._dialogCache[clazz.name]
    if dialog and (dialog.status == DialogStatus.Showing or dialog.status == DialogStatus.Showed) then
        return true
    end
    return false
end
function DialogManager.prototype.triggerEscapeDown(self)
    do
        local i = #self._dialogViewList - 1
        while i >= 0 do
            local d = self._dialogViewList[i + 1]
            if d.visible and d.onEscapeDown then
                d:onEscapeDown()
                d.event:emit(____exports.DialogEvent.onEscapeDown)
                return
            end
            i = i - 1
        end
    end
end
function DialogManager.prototype.get(self, clazz)
    return self._dialogCache[clazz.name]
end
function DialogManager.prototype.getAll(self)
    local list = {}
    for name in pairs(self._dialogCache) do
        list[#list + 1] = self._dialogCache[name]
    end
    return list
end
____exports.dialogs = __TS__New(____exports.DialogManager)
return ____exports
