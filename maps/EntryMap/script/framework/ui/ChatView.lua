local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 2,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 9,["16"] = 11,["17"] = 11,["18"] = 13,["19"] = 13,["20"] = 15,["21"] = 15,["23"] = 57,["24"] = 57,["25"] = 57,["26"] = 57,["27"] = 69,["28"] = 57,["29"] = 69,["30"] = 62,["31"] = 64,["32"] = 67,["33"] = 82,["34"] = 69,["35"] = 73,["36"] = 74,["37"] = 73,["38"] = 77,["39"] = 78,["40"] = 79,["41"] = 77,["42"] = 94,["43"] = 95,["44"] = 94,["45"] = 101,["46"] = 101,["47"] = 105,["48"] = 106,["49"] = 107,["50"] = 108,["51"] = 105,["52"] = 115,["53"] = 115,["54"] = 115,["56"] = 116,["57"] = 115,["58"] = 119,["59"] = 120,["60"] = 121,["63"] = 122,["64"] = 123,["65"] = 124,["67"] = 126,["68"] = 126,["69"] = 127,["70"] = 126,["73"] = 119,["74"] = 131,["75"] = 132,["76"] = 133,["77"] = 134,["78"] = 135,["79"] = 136,["80"] = 137,["81"] = 138,["83"] = 140,["85"] = 143,["86"] = 144,["87"] = 145,["88"] = 146,["89"] = 147,["91"] = 143,["93"] = 131,["94"] = 153,["95"] = 154,["96"] = 154,["97"] = 154,["98"] = 154,["99"] = 154,["100"] = 153,["101"] = 157,["102"] = 158,["103"] = 159,["105"] = 161,["106"] = 157,["107"] = 163,["108"] = 167,["109"] = 168,["110"] = 163,["111"] = 174,["112"] = 175,["113"] = 174,["114"] = 178,["115"] = 179,["116"] = 178,["117"] = 182,["118"] = 183,["119"] = 184,["120"] = 186,["121"] = 186,["122"] = 186,["123"] = 186,["124"] = 189,["125"] = 192,["126"] = 194,["127"] = 196,["128"] = 182,["133"] = 60});
local ____exports = {}
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____UIBinder = include("framework.ui.UIBinder")
local UIBinder = ____UIBinder.UIBinder
____exports.ScrollType = ScrollType or ({})
____exports.ScrollType["横向滑动"] = 0
____exports.ScrollType[____exports.ScrollType["横向滑动"]] = "横向滑动"
____exports.ScrollType["纵向滑动"] = 1
____exports.ScrollType[____exports.ScrollType["纵向滑动"]] = "纵向滑动"
____exports.ScrollType["网格滑动"] = 2
____exports.ScrollType[____exports.ScrollType["网格滑动"]] = "网格滑动"
--- 滑动UI
____exports.ChatView = __TS__Class()
local ChatView = ____exports.ChatView
ChatView.name = "ChatView"
__TS__ClassExtends(ChatView, UIBinder)
function ChatView.prototype.____constructor(self, options)
    UIBinder.prototype.____constructor(self)
    self.options = options
    self.ui_children = {}
    self.max_count = 0
    self.scrollView = nil
    self.pool = {}
end
function ChatView.prototype.updateOptions(self, options)
    self.scrollView:set_visible(true)
end
function ChatView.prototype.init(self)
    self.scrollView = self:root()
    self:updateOptions({})
end
function ChatView.prototype.getChild(self, index)
    return self.ui_children[index + 1]
end
function ChatView.prototype.reload(self)
end
function ChatView.prototype.getUI(self, path)
    local fullPath = (self.rootPath .. ".") .. path
    local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, fullPath)
    return ui
end
function ChatView.prototype.refresh(self, lens, force)
    if force == nil then
        force = false
    end
    self.max_count = lens
end
function ChatView.prototype.updateLens(self, total)
    local newCount = total - self.max_count
    if newCount <= 0 then
        return
    end
    SoundManager:play(SoundType["聊天消息"])
    self.max_count = total
    self:reload()
    do
        local index = 0
        while index < newCount do
            self:addItem()
            index = index + 1
        end
    end
end
function ChatView.prototype.addItem(self)
    local lastIndex = #self.ui_children
    local index = lastIndex
    local prefab = self:getChild(index) or self:getPool()
    if prefab ~= nil then
        prefab:set_visible(true)
        if self.itemRender ~= nil then
            self:itemRender(prefab, index)
        end
        self.ui_children[index + 1] = prefab
    else
        self:getPrefab(function(____, prefab)
            prefab:set_visible(true)
            self.ui_children[index + 1] = prefab
            if self.itemRender ~= nil then
                self:itemRender(prefab, index)
            end
        end)
    end
end
function ChatView.prototype.moveToBottom(self)
    GameAPI.set_list_view_percent(
        LOCAL.PLAYER.handle,
        self:content().handle,
        100
    )
end
function ChatView.prototype.getPool(self)
    if #self.pool ~= 0 then
        return table.remove(self.pool, 1)
    end
    return nil
end
function ChatView.prototype.getPrefab(self, callback)
    local ui = self:createUI()
    callback(nil, ui)
end
function ChatView.prototype.root(self)
    return y3.ui.get_ui(y3.player.LOCAL_PLAYER, self.options.rootPath)
end
function ChatView.prototype.content(self)
    return self.scrollView
end
function ChatView.prototype.createUI(self)
    local ui = self.scrollView:create_child("文本")
    ui:set_font_size(16)
    ui:set_ui_size(
        self.scrollView:get_width(),
        22
    )
    ui:set_text_color(253, 252, 252, 255)
    ui:set_text_alignment("左", "中")
    GameAPI.set_text_over_length_handling_type(LOCAL.PLAYER.handle, ui.handle, 1, 16)
    return ui
end
__TS__SetDescriptor(
    ChatView.prototype,
    "rootPath",
    {get = function(self)
        return self.options.rootPath
    end},
    true
)
return ____exports
