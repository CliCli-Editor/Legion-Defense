local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 3,["7"] = 3,["8"] = 3,["10"] = 3,["11"] = 22,["12"] = 22,["13"] = 22,["15"] = 24,["16"] = 25,["17"] = 26,["19"] = 32,["20"] = 32,["21"] = 32,["22"] = 32,["23"] = 32,["24"] = 32,["25"] = 32,["26"] = 32,["27"] = 36,["28"] = 22,["29"] = 39,["30"] = 40,["31"] = 41,["34"] = 44,["35"] = 44,["36"] = 44,["37"] = 44,["38"] = 44,["39"] = 44,["40"] = 47,["41"] = 49,["42"] = 50,["43"] = 51,["44"] = 51,["45"] = 51,["46"] = 51,["47"] = 54,["48"] = 56,["49"] = 58,["50"] = 60,["51"] = 61,["52"] = 61,["53"] = 61,["54"] = 61,["55"] = 61,["56"] = 62,["57"] = 63,["58"] = 64,["59"] = 66,["60"] = 67,["61"] = 68,["62"] = 69,["63"] = 70,["65"] = 61,["66"] = 61,["67"] = 73,["68"] = 39,["69"] = 13});
local ____exports = {}
____exports.ProgressEffect = __TS__Class()
local ProgressEffect = ____exports.ProgressEffect
ProgressEffect.name = "ProgressEffect"
function ProgressEffect.prototype.____constructor(self)
end
function ProgressEffect.play(self, ui, start, ____end, speed, callback)
    if speed == nil then
        speed = 1
    end
    local key = ui.handle
    if self.playList[key] == nil then
        self.playList[key] = {timer = nil, waitList = {}}
    end
    local ____self_playList_key_waitList_0 = self.playList[key].waitList
    ____self_playList_key_waitList_0[#____self_playList_key_waitList_0 + 1] = {
        ui = ui,
        start = start,
        ["end"] = ____end,
        speed = speed,
        callback = callback
    }
    self:tryPlay(key)
end
function ProgressEffect.tryPlay(self, key)
    local data = self.playList[key]
    if #data.waitList == 0 or data.timer ~= nil then
        return
    end
    local ____table_remove_result_1 = table.remove(data.waitList, 1)
    local ui = ____table_remove_result_1.ui
    local start = ____table_remove_result_1.start
    local ____end = ____table_remove_result_1["end"]
    local speed = ____table_remove_result_1.speed
    local callback = ____table_remove_result_1.callback
    local totalTime = 0.3
    start = math.max(0, start)
    ____end = math.min(100, ____end)
    speed = math.max(
        0.01,
        math.min(10, speed)
    )
    local totalFrame = math.floor(math.floor((____end - start) / 100 * totalTime * 30 / speed) + 0.5)
    totalFrame = math.max(5, totalFrame)
    local step = (____end - start) / totalFrame
    local current = start
    local timer
    timer = y3.ltimer.loop_count_frame(
        1,
        totalFrame,
        function(temp_timer, count)
            current = current + step
            ui:set_current_progress_bar_value(current)
            if count >= totalFrame then
                timer:remove()
                timer = nil
                local ____ = callback and callback(nil)
                self.playList[key].timer = nil
                self:tryPlay(key)
            end
        end
    )
    self.playList[key].timer = timer
end
ProgressEffect.playList = {}
return ____exports
