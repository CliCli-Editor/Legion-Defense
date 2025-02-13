local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 3,["7"] = 3,["8"] = 3,["10"] = 3,["11"] = 8,["12"] = 9,["13"] = 8,["14"] = 15,["15"] = 16,["16"] = 15,["17"] = 22,["18"] = 23,["19"] = 22,["20"] = 29,["21"] = 30,["22"] = 29,["23"] = 37,["24"] = 38,["25"] = 37,["26"] = 41,["27"] = 42,["28"] = 41,["29"] = 45,["30"] = 46,["31"] = 45,["32"] = 52,["33"] = 53,["34"] = 54,["35"] = 52,["36"] = 60,["37"] = 61,["38"] = 62,["39"] = 60,["40"] = 68,["41"] = 69,["42"] = 70,["43"] = 68,["44"] = 76,["45"] = 77,["46"] = 78,["47"] = 76,["48"] = 84,["49"] = 85,["50"] = 86,["51"] = 84,["52"] = 89,["53"] = 90,["54"] = 89});
local ____exports = {}
____exports.Saver = __TS__Class()
local Saver = ____exports.Saver
Saver.name = "Saver"
function Saver.prototype.____constructor(self)
end
function Saver.load_boolean(self, player, slot)
    return y3.save_data.load_boolean(player, slot)
end
function Saver.load_number(self, player, slot)
    return y3.save_data.load_integer(player, slot)
end
function Saver.load_real(self, player, slot)
    return y3.save_data.load_real(player, slot)
end
function Saver.load_string(self, player, slot)
    return y3.save_data.load_string(player, slot)
end
function Saver.load_table(self, player, slot, disable_cover)
    return y3.save_data.load_table(player, slot, disable_cover)
end
function Saver.load_table_with_cover_disable(self, player, slot)
    return y3.save_data.load_table_with_cover_enable(player, slot)
end
function Saver.load_table_with_cover_enable(self, player, slot)
    return y3.save_data.load_table_with_cover_enable(player, slot)
end
function Saver.save_boolean(self, player, slot, value)
    y3.save_data.save_boolean(player, slot, value)
    self:upload_save_data(player)
end
function Saver.save_number(self, player, slot, value)
    y3.save_data.save_integer(player, slot, value)
    self:upload_save_data(player)
end
function Saver.save_real(self, player, slot, value)
    y3.save_data.save_real(player, slot, value)
    self:upload_save_data(player)
end
function Saver.save_string(self, player, slot, value)
    y3.save_data.save_string(player, slot, value)
    self:upload_save_data(player)
end
function Saver.save_table(self, player, slot, t)
    y3.save_data.save_table(player, slot, t)
    self:upload_save_data(player)
end
function Saver.upload_save_data(self, player)
    player:upload_save_data()
end
return ____exports
