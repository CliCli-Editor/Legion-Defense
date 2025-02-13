local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 47,["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 47,["11"] = 49,["12"] = 50,["14"] = 3,["15"] = 6,["18"] = 10,["21"] = 8,["27"] = 6,["28"] = 14,["29"] = 23,["30"] = 28,["31"] = 43,["32"] = 43,["33"] = 43,["34"] = 44,["35"] = 43,["36"] = 43,["37"] = 53,["38"] = 53,["39"] = 53,["40"] = 55,["41"] = 55,["42"] = 55,["43"] = 56,["44"] = 55,["45"] = 55,["46"] = 53,["47"] = 53,["48"] = 61,["49"] = 61,["50"] = 62,["51"] = 63,["52"] = 64,["53"] = 65,["54"] = 66,["55"] = 66,["56"] = 66,["57"] = 67,["58"] = 68,["59"] = 69,["60"] = 70,["61"] = 71,["62"] = 73,["63"] = 74,["65"] = 77,["66"] = 78,["67"] = 79,["68"] = 80,["69"] = 80,["70"] = 80,["71"] = 80,["72"] = 80,["73"] = 80,["74"] = 80,["75"] = 80,["76"] = 82,["77"] = 83,["80"] = 86,["81"] = 87,["82"] = 88,["84"] = 91,["85"] = 92,["86"] = 94,["87"] = 66,["88"] = 66,["89"] = 97,["90"] = 98,["91"] = 98,["92"] = 98,["93"] = 98,["94"] = 99,["95"] = 98,["96"] = 98,["98"] = 108,["99"] = 110,["100"] = 111,["101"] = 111,["102"] = 111,["103"] = 113,["104"] = 111,["105"] = 111});
local ____exports = {}
local updateFrameSync
local ____SyncCounter = include("framework.data.SyncCounter")
local sync = ____SyncCounter.sync
local ____global = include("framework.global")
local global = ____global.global
function updateFrameSync(self)
    vue.flushCallbacks()
    vue.flushCallbacksFrameSync()
end
local GameContext = _G.include("y3.third_party.NPBehave.GameContext")
y3.player.with_local = function(callback)
    do
        local function ____catch(e)
            console:error(e)
        end
        local ____try, ____hasReturned = pcall(function()
            callback(y3.player.LOCAL_PLAYER)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
y3.pb = _G.include("pb")
y3.game.toggle_day_night_time(false)
y3.config.sync.camera = true
y3.timer.loop_frame(
    1,
    function()
        updateFrameSync(nil)
    end
)
y3.ltimer.loop(
    0.25,
    function()
        sync(
            nil,
            function()
                GameContext.Update(0.25)
            end
        )
    end
)
local ____opt_0 = _G.python
local time = (____opt_0 and ____opt_0.debug_ns_timestamp) ~= nil and python:debug_ns_timestamp() or 0
local max = 0
local sum = 0
local enabledProfiler = false
local profiler = nil
y3.timer.loop_frame(
    1,
    function(tr, count)
        if y3.game.is_debug_mode() and enabledProfiler then
            local nextTime = python:debug_ns_timestamp()
            local detail = (nextTime - time) / 1000000
            sum = sum + detail
            local average = sum / count
            if profiler ~= nil then
                profiler:stop()
            end
            if time ~= 0 and detail > average * 2 then
                max = math.max(detail, max)
                local logName = ("profiler_frame" .. tostring(count)) .. ".log"
                console:log(
                    "帧耗时：" .. tostring(detail),
                    "最大耗时：",
                    max,
                    "平均耗时：",
                    average,
                    logName
                )
                if profiler ~= nil then
                    profiler:dump_report_to_file(logName)
                end
            end
            time = nextTime
            profiler = newProfiler("call")
            profiler:start()
        end
        global.frameCount = global.frameCount + 1
        global.time.value = os.clock()
        global.frameStore.value = GlobalAPI.get_frame_stack()
    end
)
if y3.game.is_debug_mode() then
    y3.game:event(
        "本地-键盘-按下",
        y3.const.KeyboardKey.F1,
        function()
            enabledProfiler = not enabledProfiler
        end
    )
end
collectgarbage("incremental", 0, 105, 14)
collectgarbage("stop")
y3.ctimer.loop_frame(
    1,
    function()
        local isEnd = collectgarbage("step")
    end
)
return ____exports
