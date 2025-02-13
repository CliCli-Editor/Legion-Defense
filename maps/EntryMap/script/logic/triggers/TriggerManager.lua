local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 5,["13"] = 7,["14"] = 9,["15"] = 11,["16"] = 5,["17"] = 12,["18"] = 13,["19"] = 14,["21"] = 16,["22"] = 16,["23"] = 12,["24"] = 18,["25"] = 18,["26"] = 18,["28"] = 19,["29"] = 19,["30"] = 19,["31"] = 19,["32"] = 19,["33"] = 19,["34"] = 19,["35"] = 19,["36"] = 19,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 20,["42"] = 18,["43"] = 28,["44"] = 29,["45"] = 30,["47"] = 31,["48"] = 31,["49"] = 32,["50"] = 33,["51"] = 31,["55"] = 36,["56"] = 37,["58"] = 38,["59"] = 38,["60"] = 39,["61"] = 40,["62"] = 41,["63"] = 42,["64"] = 43,["66"] = 38,["70"] = 28,["71"] = 56,["72"] = 56,["73"] = 56,["75"] = 57,["76"] = 57,["77"] = 57,["78"] = 57,["79"] = 57,["80"] = 57,["81"] = 57,["82"] = 57,["83"] = 57,["84"] = 57,["85"] = 57,["86"] = 57,["87"] = 59,["88"] = 60,["90"] = 62,["91"] = 62,["92"] = 64,["93"] = 56,["94"] = 87,["95"] = 88,["96"] = 89,["99"] = 90,["100"] = 90,["101"] = 90,["102"] = 90,["103"] = 91,["104"] = 92,["107"] = 87,["108"] = 99,["109"] = 99,["110"] = 99,["111"] = 102,["112"] = 105,["113"] = 105,["115"] = 102,["116"] = 103,["117"] = 104,["118"] = 105,["119"] = 106,["120"] = 107,["121"] = 110,["122"] = 108,["123"] = 101,["124"] = 111,["127"] = 127,["128"] = 128,["131"] = 113,["132"] = 113,["134"] = 115,["135"] = 116,["136"] = 117,["137"] = 117,["139"] = 118,["140"] = 119,["141"] = 120,["142"] = 121,["143"] = 122,["152"] = 112,["155"] = 131,["156"] = 111,["157"] = 134,["158"] = 135,["159"] = 136,["160"] = 137,["161"] = 134,["162"] = 141});
local ____exports = {}
____exports.TriggerManager = __TS__Class()
local TriggerManager = ____exports.TriggerManager
TriggerManager.name = "TriggerManager"
function TriggerManager.prototype.____constructor(self)
    self.idx = 1
    self.triggerMap = {}
    self.linkMap = {}
end
function TriggerManager.prototype.link(self, ____type, data)
    if self.linkMap[____type] == nil then
        self.linkMap[____type] = {}
    end
    local ____self_linkMap_____type_0 = self.linkMap[____type]
    ____self_linkMap_____type_0[#____self_linkMap_____type_0 + 1] = data
end
function TriggerManager.prototype.add(self, ____type, times, callback, cfgId)
    if times == nil then
        times = 0
    end
    local ____exports_Trigger_4 = ____exports.Trigger
    local ____self_1, ____idx_2 = self, "idx"
    local ____self_idx_3 = ____self_1[____idx_2]
    ____self_1[____idx_2] = ____self_idx_3 + 1
    local trigger = __TS__New(
        ____exports_Trigger_4,
        ____self_idx_3,
        ____type,
        callback,
        times,
        nil,
        cfgId
    )
    return trigger
end
function TriggerManager.prototype.trigger(self, ____type, data)
    local list = self.triggerMap[____type]
    if list ~= nil and #list ~= 0 then
        do
            local index = #list - 1
            while index >= 0 do
                local func = list[index + 1]
                func:trigger(data)
                index = index - 1
            end
        end
    end
    local links = self.linkMap[____type]
    if links ~= nil and #links ~= 0 then
        do
            local index = #links - 1
            while index >= 0 do
                local triggers = links[index + 1]
                local idx = triggers:condition(data)
                local trg = triggers.triggers[idx + 1]
                if trg ~= nil then
                    trg:trigger(data)
                end
                index = index - 1
            end
        end
    end
end
function TriggerManager.prototype.register(self, ____type, times, callback, condition)
    if times == nil then
        times = 0
    end
    local ____exports_Trigger_8 = ____exports.Trigger
    local ____self_5, ____idx_6 = self, "idx"
    local ____self_idx_7 = ____self_5[____idx_6]
    ____self_5[____idx_6] = ____self_idx_7 + 1
    local trigger = __TS__New(
        ____exports_Trigger_8,
        ____self_idx_7,
        ____type,
        callback,
        times,
        condition
    )
    if self.triggerMap[____type] == nil then
        self.triggerMap[____type] = {}
    end
    local ____self_triggerMap_____type_9 = self.triggerMap[____type]
    ____self_triggerMap_____type_9[#____self_triggerMap_____type_9 + 1] = trigger
    return trigger
end
function TriggerManager.prototype.unRegister(self, trigger)
    local list = self.triggerMap[trigger.type]
    if list == nil or #list == 0 then
        return
    end
    local idx = __TS__ArrayFindIndex(
        list,
        function(____, a) return a == trigger end
    )
    if idx ~= -1 then
        __TS__ArraySplice(list, idx, 1)
    else
    end
end
____exports.Trigger = __TS__Class()
local Trigger = ____exports.Trigger
Trigger.name = "Trigger"
function Trigger.prototype.____constructor(self, id, ____type, callback, times, condition, cfgId)
    if times == nil then
        times = -1
    end
    self.id = id
    self.type = ____type
    self.callback = callback
    self.times = times
    self.condition = condition
    self.cfgId = cfgId
    self.isValid = true
    self.isValid = true
end
function Trigger.prototype.trigger(self, data)
    do
        local function ____catch(____error)
            console:error("触发事件失败，回调方法调用报错")
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if self.condition ~= nil and not self:condition(data, self.cfgId) then
                return true, false
            end
            if self.callback ~= nil then
                local success = self:callback(data, self.cfgId)
                if not success then
                    return true, false
                end
                if self.times > 0 then
                    self.times = self.times - 1
                    if self.times <= 0 then
                        console:log("次数为0")
                        self:cancel()
                    end
                end
            end
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return true
end
function Trigger.prototype.cancel(self)
    self.isValid = false
    self.times = 0
    ____exports.triggerManager:unRegister(self)
end
____exports.triggerManager = __TS__New(____exports.TriggerManager)
return ____exports
