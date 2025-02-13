local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 3,["14"] = 3,["15"] = 8,["16"] = 10,["17"] = 10,["18"] = 12,["19"] = 12,["20"] = 14,["21"] = 14,["23"] = 80,["24"] = 80,["25"] = 80,["26"] = 80,["27"] = 143,["28"] = 80,["29"] = 143,["30"] = 90,["31"] = 132,["32"] = 134,["33"] = 136,["34"] = 137,["35"] = 139,["36"] = 141,["37"] = 215,["38"] = 223,["39"] = 145,["40"] = 146,["42"] = 149,["43"] = 149,["45"] = 150,["46"] = 150,["48"] = 151,["49"] = 151,["51"] = 152,["52"] = 152,["54"] = 153,["55"] = 153,["57"] = 154,["58"] = 154,["60"] = 156,["61"] = 157,["62"] = 158,["64"] = 143,["65"] = 162,["66"] = 163,["67"] = 163,["69"] = 164,["70"] = 164,["72"] = 165,["73"] = 165,["75"] = 166,["76"] = 166,["78"] = 167,["79"] = 167,["81"] = 168,["82"] = 168,["84"] = 170,["85"] = 170,["87"] = 171,["88"] = 171,["90"] = 173,["91"] = 173,["93"] = 174,["94"] = 174,["96"] = 176,["97"] = 177,["98"] = 179,["99"] = 180,["100"] = 181,["101"] = 182,["102"] = 182,["103"] = 182,["104"] = 182,["105"] = 183,["107"] = 185,["108"] = 185,["109"] = 185,["110"] = 185,["112"] = 188,["113"] = 189,["114"] = 190,["115"] = 191,["116"] = 162,["117"] = 194,["119"] = 196,["120"] = 197,["121"] = 198,["122"] = 199,["123"] = 200,["125"] = 202,["127"] = 204,["128"] = 205,["130"] = 207,["132"] = 206,["135"] = 209,["137"] = 206,["138"] = 211,["139"] = 212,["141"] = 194,["142"] = 230,["143"] = 231,["144"] = 230,["145"] = 237,["146"] = 238,["147"] = 239,["149"] = 241,["150"] = 242,["152"] = 244,["153"] = 245,["155"] = 237,["156"] = 249,["157"] = 250,["158"] = 251,["159"] = 252,["160"] = 249,["161"] = 259,["162"] = 259,["163"] = 259,["165"] = 260,["166"] = 262,["167"] = 263,["168"] = 265,["170"] = 266,["171"] = 266,["172"] = 267,["173"] = 268,["174"] = 268,["175"] = 269,["176"] = 270,["177"] = 271,["179"] = 267,["180"] = 266,["184"] = 276,["185"] = 276,["187"] = 277,["190"] = 259,["191"] = 281,["192"] = 282,["193"] = 283,["194"] = 283,["195"] = 283,["196"] = 283,["198"] = 284,["199"] = 284,["200"] = 285,["201"] = 286,["202"] = 286,["203"] = 286,["204"] = 286,["205"] = 287,["206"] = 288,["207"] = 289,["208"] = 289,["209"] = 289,["210"] = 289,["211"] = 291,["212"] = 284,["215"] = 294,["216"] = 295,["217"] = 281,["218"] = 298,["219"] = 299,["220"] = 299,["221"] = 299,["222"] = 299,["223"] = 299,["224"] = 298,["225"] = 302,["226"] = 304,["227"] = 305,["228"] = 307,["229"] = 308,["230"] = 309,["231"] = 310,["232"] = 312,["233"] = 302,["234"] = 314,["235"] = 315,["236"] = 316,["237"] = 318,["238"] = 314,["239"] = 321,["240"] = 322,["241"] = 323,["242"] = 324,["243"] = 325,["244"] = 325,["245"] = 325,["246"] = 325,["249"] = 329,["250"] = 330,["251"] = 331,["252"] = 321,["253"] = 334,["254"] = 335,["255"] = 336,["256"] = 337,["257"] = 338,["258"] = 340,["259"] = 342,["260"] = 334,["261"] = 345,["262"] = 346,["263"] = 347,["264"] = 348,["265"] = 349,["266"] = 351,["267"] = 354,["268"] = 345,["269"] = 356,["270"] = 357,["271"] = 358,["272"] = 359,["273"] = 360,["274"] = 362,["275"] = 364,["276"] = 356,["277"] = 368,["278"] = 369,["279"] = 370,["280"] = 371,["281"] = 372,["283"] = 374,["285"] = 368,["286"] = 378,["287"] = 379,["288"] = 380,["289"] = 380,["290"] = 380,["291"] = 380,["294"] = 382,["295"] = 382,["296"] = 383,["297"] = 383,["298"] = 383,["299"] = 384,["300"] = 385,["301"] = 386,["302"] = 387,["303"] = 388,["304"] = 389,["305"] = 390,["306"] = 391,["309"] = 394,["310"] = 395,["312"] = 397,["314"] = 400,["315"] = 401,["316"] = 402,["317"] = 403,["318"] = 404,["319"] = 405,["321"] = 407,["322"] = 408,["324"] = 410,["325"] = 400,["327"] = 382,["330"] = 378,["331"] = 416,["332"] = 417,["333"] = 418,["335"] = 420,["336"] = 416,["337"] = 422,["338"] = 423,["339"] = 423,["340"] = 423,["341"] = 423,["342"] = 423,["345"] = 423,["346"] = 424,["347"] = 423,["349"] = 422,["350"] = 431,["351"] = 432,["352"] = 431,["353"] = 435,["354"] = 436,["355"] = 435,["356"] = 438,["357"] = 439,["358"] = 438,["363"] = 93,["371"] = 96,["379"] = 99,["387"] = 102,["395"] = 105,["403"] = 108,["411"] = 111,["419"] = 114,["427"] = 117,["435"] = 120,["443"] = 123,["451"] = 126,["459"] = 129});
local ____exports = {}
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
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
____exports.ScrollView = __TS__Class()
local ScrollView = ____exports.ScrollView
ScrollView.name = "ScrollView"
__TS__ClassExtends(ScrollView, UIBinder)
function ScrollView.prototype.____constructor(self, options)
    UIBinder.prototype.____constructor(self)
    self.options = options
    self.max_count_in_line = 0
    self.ui_children = {}
    self.max_count = 0
    self.contentWidth = 0
    self.contentHeight = 0
    self.scrollViewName = ""
    self.scrollView = nil
    self.pool = {}
    self.created = {}
    if options.scrollType == nil then
        options.scrollType = ____exports.ScrollType["横向滑动"]
    end
    if options.marginLeft == nil then
        options.marginLeft = 0
    end
    if options.marginRight == nil then
        options.marginRight = 0
    end
    if options.marginTop == nil then
        options.marginTop = 0
    end
    if options.marginBottom == nil then
        options.marginBottom = 0
    end
    if options.paddingWidth == nil then
        options.paddingWidth = 0
    end
    if options.paddingHeight == nil then
        options.paddingHeight = 0
    end
    if options.scrollType == ____exports.ScrollType["网格滑动"] then
        local count = (options.showWidth - options.marginLeft - options.marginRight + options.paddingWidth) / (options.itemWidth + options.paddingWidth)
        self.max_count_in_line = math.floor(count)
    end
end
function ScrollView.prototype.updateOptions(self, options)
    if options.marginLeft ~= nil then
        self.options.marginLeft = options.marginLeft
    end
    if options.marginRight ~= nil then
        self.options.marginRight = options.marginRight
    end
    if options.marginTop ~= nil then
        self.options.marginTop = options.marginTop
    end
    if options.marginBottom ~= nil then
        self.options.marginBottom = options.marginBottom
    end
    if options.paddingWidth ~= nil then
        self.options.paddingWidth = options.paddingWidth
    end
    if options.paddingHeight ~= nil then
        self.options.paddingHeight = options.paddingHeight
    end
    if options.showWidth ~= nil then
        self.options.showWidth = options.showWidth
    end
    if options.showHeight ~= nil then
        self.options.showHeight = options.showHeight
    end
    if options.itemWidth ~= nil then
        self.options.itemWidth = options.itemWidth
    end
    if options.itemHeight ~= nil then
        self.options.itemHeight = options.itemHeight
    end
    self.scrollView:set_visible(true)
    self.scrollView:set_pos(0, 0)
    if self.scrollType == ____exports.ScrollType["横向滑动"] then
        self.scrollView:set_pos(0, 0)
    elseif self.scrollType == ____exports.ScrollType["纵向滑动"] then
        self.scrollView:set_pos(
            0,
            self:main():get_height()
        )
        self.scrollView:set_ui_size(self.showWidth, self.showHeight)
    else
        self.scrollView:set_pos(
            self.scrollView:get_width() / 2,
            self.scrollView:get_height() / 2
        )
    end
    self:root():set_visible(true)
    self:content():set_visible(true)
    self:root():set_ui_size(self.options.showWidth, self.options.showHeight)
    self:content():set_ui_size(self.options.showWidth, self.options.showHeight)
end
function ScrollView.prototype.init(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local prefabName = ""
        if self.scrollType == ____exports.ScrollType["横向滑动"] then
            prefabName = "ScrollViewHorizontal"
        elseif self.scrollType == ____exports.ScrollType["纵向滑动"] then
            prefabName = "ScrollViewVertical"
        else
            prefabName = "ScrollViewGrid"
        end
        self.scrollViewName = prefabName
        local ui = nil
        local ____try = __TS__AsyncAwaiter(function()
            ui = __TS__Await(uiController.createByPath:execute(y3.player.LOCAL_PLAYER.id, prefabName, self.rootPath))
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:error(____error)
            end
        ))
        self.scrollView = ui
        self:updateOptions({})
    end)
end
function ScrollView.prototype.getChild(self, index)
    return self.ui_children[index + 1]
end
function ScrollView.prototype.reload(self)
    if self.scrollType == ____exports.ScrollType["横向滑动"] then
        self:initHorizontal()
    end
    if self.scrollType == ____exports.ScrollType["纵向滑动"] then
        self:initVertical()
    end
    if self.scrollType == ____exports.ScrollType["网格滑动"] then
        self:initGrid()
    end
end
function ScrollView.prototype.getUI(self, path)
    local fullPath = (self.rootPath .. ".") .. path
    local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER.id, fullPath)
    return ui
end
function ScrollView.prototype.refresh(self, lens, force)
    if force == nil then
        force = false
    end
    self.max_count = lens
    if #self.ui_children + #self.pool < lens then
        local need = lens - #self.ui_children - #self.pool
        local cur = 0
        do
            local index = 0
            while index < need do
                self:getPrefab(function(____, a)
                    local ____self_pool_0 = self.pool
                    ____self_pool_0[#____self_pool_0 + 1] = a
                    cur = cur + 1
                    if cur == need then
                        self:reload()
                    end
                end)
                index = index + 1
            end
        end
    else
        if force then
            self:reload()
        else
            self:refreshChildren()
        end
    end
end
function ScrollView.prototype.resizeHeightBy(self, handle)
    local currentHeight = self:getChild(0):get_relative_y()
    local totalHeight = handle(
        nil,
        self:getChild(0)
    )
    do
        local index = 1
        while index < self.max_count do
            local prefab = self:getChild(index) or self:getPool()
            local height = handle(
                nil,
                self:getChild(index - 1)
            )
            currentHeight = currentHeight - height
            currentHeight = currentHeight - self.paddingHeight
            prefab:set_pos(
                prefab:get_relative_x(),
                currentHeight
            )
            totalHeight = totalHeight + (height + self.paddingHeight)
            index = index + 1
        end
    end
    self.contentHeight = math.max(totalHeight, self.showHeight)
    self:content():set_ui_size(self.contentWidth, self.contentHeight)
end
function ScrollView.prototype.moveToBottom(self)
    GameAPI.set_list_view_percent(
        y3.player.LOCAL_PLAYER.handle,
        self:root().handle,
        100
    )
end
function ScrollView.prototype.getGridPos(self, index)
    local x = index % self.max_count_in_line
    local y = math.floor(index / self.max_count_in_line)
    local posX = self.marginLeft + (self.itemWidth + self.paddingWidth) * x
    local posY = self.contentHeight - (self.marginTop + (self.itemHeight + self.paddingHeight) * y)
    posX = posX + self.itemWidth / 2
    posY = posY - self.itemHeight / 2
    return {posX = posX, posY = posY}
end
function ScrollView.prototype.getHorizontalPos(self, index)
    local posX = self.marginLeft + (self.itemWidth + self.paddingWidth) * index
    posX = posX + self.itemWidth / 2
    return {posX = posX, posY = self.itemHeight / 2}
end
function ScrollView.prototype.getVercitalPos(self, index)
    if self.options.autoResize and index ~= 0 then
        local last = self:getChild(index - 1)
        if last ~= nil then
            return {
                posX = self.itemWidth / 2,
                posY = last:get_absolute_y() + last:get_height() + self.paddingHeight
            }
        end
    end
    local posY = self.contentHeight - (self.marginTop + (self.itemHeight + self.paddingHeight) * index)
    posY = posY - self.itemHeight / 2
    return {posX = self.itemWidth / 2, posY = posY}
end
function ScrollView.prototype.initGrid(self)
    local lines = math.ceil(self.max_count / self.max_count_in_line)
    self.contentHeight = self.marginTop + self.marginBottom + (self.paddingHeight + self.itemHeight) * lines
    self.contentHeight = math.max(self.contentHeight, self.showHeight)
    self.contentWidth = self.showWidth
    self:content():set_ui_size(self.contentWidth, self.contentHeight)
    self:refreshChildren()
end
function ScrollView.prototype.initHorizontal(self)
    local maxWidth = self.marginLeft + self.marginRight + (self.paddingWidth + self.itemWidth) * self.max_count
    maxWidth = math.max(self.showWidth, maxWidth)
    self.contentWidth = maxWidth
    self.contentHeight = self.showHeight
    self:content():set_ui_size(self.contentWidth, self.contentHeight)
    self:refreshChildren()
end
function ScrollView.prototype.initVertical(self)
    local maxHeight = self.marginTop + self.marginBottom + (self.paddingHeight + self.itemHeight) * self.max_count
    maxHeight = math.max(self.showHeight, maxHeight)
    self.contentHeight = maxHeight
    self.contentWidth = self.showWidth
    self:content():set_ui_size(self.contentWidth, self.contentHeight)
    self:refreshChildren()
end
function ScrollView.prototype.getPos(self, index)
    if self.scrollType == ____exports.ScrollType["纵向滑动"] then
        return self:getVercitalPos(index)
    elseif self.scrollType == ____exports.ScrollType["网格滑动"] then
        return self:getGridPos(index)
    else
        return self:getHorizontalPos(index)
    end
end
function ScrollView.prototype.refreshChildren(self)
    if not self.options.autoResize then
        __TS__ArrayForEach(
            self.ui_children,
            function(____, a) return a:set_visible(false) end
        )
    end
    do
        local index = 0
        while index < self.max_count do
            local ____temp_1 = self:getPos(index)
            local posX = ____temp_1.posX
            local posY = ____temp_1.posY
            local prefab = self:getChild(index) or self:getPool()
            if prefab ~= nil then
                prefab:set_visible(true)
                prefab:set_pos(posX, posY)
                if self.created[index] == nil then
                    self.created[index] = true
                    if self.itemCreate ~= nil then
                        self:itemCreate(prefab, index)
                    end
                end
                if self.itemRender ~= nil then
                    self:itemRender(prefab, index)
                end
                self.ui_children[index + 1] = prefab
            else
                self:getPrefab(function(____, prefab)
                    prefab:set_visible(true)
                    prefab:set_pos(posX, posY)
                    self.created[index] = true
                    if self.itemCreate ~= nil then
                        self:itemCreate(prefab, index)
                    end
                    if self.itemRender ~= nil then
                        self:itemRender(prefab, index)
                    end
                    self.ui_children[index + 1] = prefab
                end)
            end
            index = index + 1
        end
    end
end
function ScrollView.prototype.getPool(self)
    if #self.pool ~= 0 then
        return table.remove(self.pool, 1)
    end
    return nil
end
function ScrollView.prototype.getPrefab(self, callback)
    local ____self_2 = uiController.createByUI:execute(
        y3.player.LOCAL_PLAYER.id,
        self.options.prefab,
        self:content()
    )
    ____self_2["then"](
        ____self_2,
        function(____, a)
            callback(nil, a)
        end
    )
end
function ScrollView.prototype.root(self)
    return y3.ui.get_ui(y3.player.LOCAL_PLAYER, self.options.rootPath .. ("." .. self.scrollViewName) .. ".root")
end
function ScrollView.prototype.content(self)
    return y3.ui.get_ui(y3.player.LOCAL_PLAYER, self.options.rootPath .. ("." .. self.scrollViewName) .. ".root.content")
end
function ScrollView.prototype.main(self)
    return y3.ui.get_ui(y3.player.LOCAL_PLAYER, self.options.rootPath)
end
__TS__SetDescriptor(
    ScrollView.prototype,
    "rootPath",
    {get = function(self)
        return self.options.rootPath
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "prefab",
    {get = function(self)
        return self.options.prefab
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "paddingWidth",
    {get = function(self)
        return self.options.paddingWidth
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "paddingHeight",
    {get = function(self)
        return self.options.paddingHeight
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "marginLeft",
    {get = function(self)
        return self.options.marginLeft
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "marginRight",
    {get = function(self)
        return self.options.marginRight
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "marginTop",
    {get = function(self)
        return self.options.marginTop
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "marginBottom",
    {get = function(self)
        return self.options.marginBottom
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "scrollType",
    {get = function(self)
        return self.options.scrollType
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "itemWidth",
    {get = function(self)
        return self.options.itemWidth
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "itemHeight",
    {get = function(self)
        return self.options.itemHeight
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "showWidth",
    {get = function(self)
        return self.options.showWidth
    end},
    true
)
__TS__SetDescriptor(
    ScrollView.prototype,
    "showHeight",
    {get = function(self)
        return self.options.showHeight
    end},
    true
)
return ____exports
