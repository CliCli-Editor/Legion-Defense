local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["7"] = 10,["9"] = 11,["12"] = 15,["15"] = 13,["22"] = 17,["23"] = 10,["25"] = 23,["26"] = 24,["27"] = 23});
local ____exports = {}
____exports.syncData = {inSync = 0, inController = 0}
--- 将代码块标注成已同步状态，可绕开同步检查
function ____exports.sync(self, cb)
    local ____exports_syncData_0, ____inSync_1 = ____exports.syncData, "inSync"
    ____exports_syncData_0[____inSync_1] = ____exports_syncData_0[____inSync_1] + 1
    do
        local function ____catch(e)
            console:error(e)
        end
        local ____try, ____hasReturned = pcall(function()
            cb(nil)
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
    local ____exports_syncData_2, ____inSync_3 = ____exports.syncData, "inSync"
    ____exports_syncData_2[____inSync_3] = ____exports_syncData_2[____inSync_3] - 1
end
--- 检查是否在controller中
function ____exports.isInController(self)
    return ____exports.syncData.inController > 0
end
return ____exports
