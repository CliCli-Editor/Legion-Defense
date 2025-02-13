local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 4,["12"] = 4,["13"] = 4,["15"] = 6,["16"] = 7,["17"] = 9,["18"] = 4,["19"] = 12,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 13,["24"] = 14,["25"] = 15,["26"] = 16,["31"] = 33,["34"] = 20,["35"] = 21,["36"] = 22,["37"] = 23,["38"] = 24,["39"] = 24,["41"] = 25,["42"] = 26,["44"] = 28,["45"] = 29,["53"] = 19,["56"] = 13,["57"] = 13,["58"] = 12,["59"] = 41,["60"] = 42,["61"] = 42,["62"] = 42,["63"] = 42,["64"] = 43,["65"] = 43,["66"] = 47,["67"] = 41,["68"] = 49,["69"] = 50,["70"] = 50,["71"] = 50,["72"] = 50,["73"] = 51,["74"] = 52,["76"] = 49,["77"] = 56});
local ____exports = {}
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
____exports.ESCManager = __TS__Class()
local ESCManager = ____exports.ESCManager
ESCManager.name = "ESCManager"
function ESCManager.prototype.____constructor(self)
    self.id = 0
    self.defaultEvent = nil
    self.eventTrack = {}
end
function ESCManager.prototype.init(self)
    LOCAL.PLAYER:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.ESCAPE,
        function()
            console:log("点击esc---------------------")
            if LOCAL.IS_OBSERVER then
                console:log("点击esc？？？？？？？？？？？？？？？")
                return
            end
            do
                local function ____catch(____error)
                    console:error("执行esc事件出错：\n" .. tostring(____error))
                end
                local ____try, ____hasReturned, ____returnValue = pcall(function()
                    console:log("点击esc!!!!!!!!!!!!!!!!!!")
                    if #self.eventTrack ~= 0 then
                        console:log("点击esc!!!!!!!!!!!!!!!!!!3333333333333333333333333333")
                        local event = table.remove(self.eventTrack)
                        if event == nil then
                            return true
                        end
                        console:log("点击esc!!!!!!!!!!!!!!!!!!444444444444444444444")
                        event:event()
                    else
                        if self.defaultEvent ~= nil then
                            self:defaultEvent()
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
        end
    )
end
function ESCManager.prototype.addEvent(self, event)
    local ____self_0, ____id_1 = self, "id"
    local ____self_id_2 = ____self_0[____id_1]
    ____self_0[____id_1] = ____self_id_2 + 1
    local id = ____self_id_2
    local ____self_eventTrack_3 = self.eventTrack
    ____self_eventTrack_3[#____self_eventTrack_3 + 1] = {id = id, event = event}
    return id
end
function ESCManager.prototype.removeEvent(self, id)
    local index = __TS__ArrayFindIndex(
        self.eventTrack,
        function(____, a) return a.id == id end
    )
    if index >= 0 then
        __TS__ArraySplice(self.eventTrack, index, 1)
    end
end
____exports.escManager = __TS__New(____exports.ESCManager)
return ____exports
