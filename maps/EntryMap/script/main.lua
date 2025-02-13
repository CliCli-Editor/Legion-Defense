--vue
local vue = require "reactivity.Vue"
_G.vue = vue;

--json
local json = require "libs.json"
_G.json = json;

--行为树
require("y3.third_party.NPBehave")

--匹配服
require("matching.init")

--pcall 加入堆栈信息，方便错误排查
_G.pcall = function(func, ...)
    local results = table.pack(
        xpcall(func, function(err)
            -- Do nothing here, just return the error object
            return err .. '\n' .. debug.traceback()
        end, ...)
    )
    local status = table.remove(results, 1)
    if not status then
        -- When an error occurs, err is the error message, mimicking the behavior of pcall
        return false, table.unpack(results)
    else
        -- No error occurred, return all the additional parameters returned by xpcall
        return true, table.unpack(results)
    end
end

-- 开启详细快照，用于排查游戏不同步的问题
if y3.game.is_debug_mode() then
    GameAPI.api_set_enable_detail_snapshot(true)
    GameAPI.api_set_snapshot_traceback_level(3)

    -- 性能分析器
    _G.newProfiler = require("debug.profiler")
end


--游戏逻辑
require "logic.main"
