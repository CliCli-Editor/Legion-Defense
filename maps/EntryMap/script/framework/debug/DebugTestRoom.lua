local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 5,["12"] = 5,["13"] = 5,["14"] = 5,["16"] = 5,["17"] = 14,["18"] = 10,["19"] = 6,["20"] = 6,["21"] = 18,["22"] = 19,["23"] = 20,["24"] = 20,["25"] = 20,["26"] = 20,["27"] = 20,["28"] = 20,["29"] = 20,["31"] = 28,["32"] = 18,["33"] = 31,["34"] = 32,["35"] = 32,["36"] = 34,["37"] = 34,["38"] = 34,["39"] = 34,["40"] = 34,["41"] = 34,["42"] = 34,["43"] = 34,["44"] = 34,["45"] = 32,["46"] = 32,["47"] = 31,["48"] = 46,["49"] = 47,["50"] = 48,["51"] = 48,["52"] = 48,["53"] = 48,["54"] = 47,["55"] = 46,["56"] = 56,["57"] = 56,["58"] = 59,["59"] = 59,["60"] = 63,["61"] = 63,["62"] = 67,["63"] = 67,["64"] = 67,["66"] = 68,["67"] = 69,["68"] = 69,["69"] = 69,["70"] = 69,["71"] = 69,["72"] = 69,["73"] = 69,["74"] = 100,["75"] = 101,["77"] = 102,["78"] = 102,["79"] = 103,["80"] = 102,["83"] = 106,["84"] = 106,["85"] = 106,["86"] = 106,["87"] = 106,["88"] = 68,["89"] = 117,["90"] = 118,["91"] = 120,["93"] = 121,["94"] = 121,["95"] = 122,["96"] = 123,["97"] = 124,["99"] = 125,["100"] = 125,["101"] = 126,["102"] = 125,["105"] = 128,["106"] = 121,["109"] = 131,["110"] = 132,["111"] = 133,["113"] = 134,["114"] = 134,["115"] = 135,["116"] = 134,["119"] = 137,["120"] = 138,["121"] = 138,["122"] = 138,["123"] = 138,["124"] = 138,["125"] = 138,["126"] = 137,["127"] = 145,["128"] = 67,["129"] = 148,["130"] = 149,["131"] = 148});
local ____exports = {}
local ____DebugRoom = include("framework.debug.DebugRoom")
local DebugRoom = ____DebugRoom.DebugRoom
local ____Random = include("framework.utils.Random")
local random = ____Random.random
____exports.DebugTestRoom = __TS__Class()
local DebugTestRoom = ____exports.DebugTestRoom
DebugTestRoom.name = "DebugTestRoom"
__TS__ClassExtends(DebugTestRoom, DebugRoom)
function DebugTestRoom.prototype.____constructor(self)
    DebugRoom.prototype.____constructor(self)
    self.cache = nil
end
function DebugTestRoom.prototype.reload(self)
end
function DebugTestRoom.prototype.genFightRoom(self)
    if not self.cache then
        self.cache = {
            isRunning = self._isRunning,
            isPaused = self._isPaused,
            edittime = self:genEdittimeData(),
            runtime = self:genRuntimeData(),
            size = {width = 3000, height = 3000}
        }
    end
    return self.cache
end
function DebugTestRoom.prototype.genEdittimeData(self)
    return {
        battleground = "",
        view = {
            self:createView(),
            self:createView(),
            self:createView(),
            self:createView(),
            self:createView(),
            self:createView(),
            self:createView(),
            self:createView()
        }
    }
end
function DebugTestRoom.prototype.genRuntimeData(self)
    return {view = {
        self:createView(),
        self:createView(),
        self:createView(),
        self:createView()
    }}
end
function DebugTestRoom.prototype.save(self)
end
function DebugTestRoom.prototype.load(self, data)
end
function DebugTestRoom.prototype.clear(self)
end
function DebugTestRoom.prototype.createView(self, floor)
    if floor == nil then
        floor = 0
    end
    local function btnFunc()
        local itemList = {
            {name = "只读属性-大头", type = "readonly", defaultValue = 1111},
            {name = "字符串-大头", type = "string", defaultValue = "大头"},
            {name = "数字-大头", type = "number", defaultValue = 0},
            {name = "布尔-大头", type = "boolean", defaultValue = false},
            {name = "列表-大头", type = "list", list = {{label = "大头-1", value = 1}, {label = "大头-2", value = 2}, {label = "大头-3", value = 3}}}
        }
        local list = {}
        local count = random:randomRange(0, 3)
        do
            local index = 0
            while index < count do
                list[#list + 1] = random:randomList(itemList)
                index = index + 1
            end
        end
        return {
            name = "测试按钮" .. tostring(count),
            action = "test",
            form = {title = "表单", tips = "表单提示", fields = list}
        }
    end
    local hasChild = random:randomRange(1, 10) <= 5 - floor
    local childrenCount = hasChild and random:randomRange(1, 5) or 0
    local children = {}
    do
        local index = 0
        while index < childrenCount do
            local hasBtns = random:randomRange(1, 10) <= 3
            local btnCount = hasBtns and random:randomRange(1, 3) or 0
            local btns = {}
            do
                local key = 0
                while key < btnCount do
                    btns[#btns + 1] = btnFunc(nil)
                    key = key + 1
                end
            end
            children[#children + 1] = self:createView(floor + 1)
            index = index + 1
        end
    end
    local hasBtns = random:randomRange(1, 10) <= 3
    local btnCount = hasBtns and random:randomRange(1, 3) or 0
    local btns = {}
    do
        local key = 0
        while key < btnCount do
            btns[#btns + 1] = btnFunc(nil)
            key = key + 1
        end
    end
    local function func()
        return {
            name = ("第" .. tostring(floor + 1)) .. "层节点",
            isFolded = false,
            buttons = btns,
            children = children
        }
    end
    return func(nil)
end
function DebugTestRoom.prototype.createHero(self, heroId)
    return ""
end
return ____exports
