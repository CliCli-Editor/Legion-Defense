local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 2,["7"] = 58,["8"] = 58,["9"] = 58,["10"] = 62,["11"] = 63,["12"] = 63,["13"] = 63,["14"] = 63,["15"] = 63,["16"] = 63,["17"] = 63,["18"] = 63,["19"] = 63,["20"] = 63,["21"] = 63,["22"] = 63,["23"] = 63,["24"] = 63,["25"] = 63,["26"] = 63,["27"] = 63,["28"] = 63,["29"] = 63,["30"] = 58,["31"] = 58});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.PetData = {
    name = "PetData",
    indexKeys = {},
    make = function(self)
        return S({
            id = 0,
            playerId = 0,
            nickname = "",
            petId = 0,
            wing = nil,
            halo = nil,
            effect = nil,
            y3Player = nil,
            y3Unit = nil,
            status_ui = nil,
            info_ui = nil,
            build_callback = nil,
            select_callback = nil,
            abilities = {},
            skills = {},
            init = false,
            selBigBlessArrow = false
        })
    end
}
return ____exports
