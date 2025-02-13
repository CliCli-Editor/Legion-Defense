local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 3,["10"] = 3,["11"] = 3,["13"] = 3,["14"] = 5,["17"] = 11,["20"] = 7,["21"] = 9,["27"] = 5,["28"] = 15,["31"] = 19,["34"] = 17,["40"] = 15,["41"] = 22,["44"] = 26,["47"] = 24,["53"] = 22,["54"] = 32});
local ____exports = {}
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
____exports.CheckManager = __TS__Class()
local CheckManager = ____exports.CheckManager
CheckManager.name = "CheckManager"
function CheckManager.prototype.____constructor(self)
end
function CheckManager.prototype.idle(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.statInfo:idle()
            archive.statInfo:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function CheckManager.prototype.removeIdle(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.statInfo:removeIdle()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function CheckManager.prototype.useIdle(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            archive.statInfo:useIdle()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
____exports.checkManager = __TS__New(____exports.CheckManager)
return ____exports
