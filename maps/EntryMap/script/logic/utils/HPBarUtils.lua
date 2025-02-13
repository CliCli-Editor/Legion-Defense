local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 3,["7"] = 3,["8"] = 5,["9"] = 5,["10"] = 7,["11"] = 7,["12"] = 9,["13"] = 9,["14"] = 11,["15"] = 11,["16"] = 13,["17"] = 13,["18"] = 15,["19"] = 15,["20"] = 17,["21"] = 17,["22"] = 19,["23"] = 19,["24"] = 20,["25"] = 20,["26"] = 21,["27"] = 21,["28"] = 22,["29"] = 22,["30"] = 24,["31"] = 24,["32"] = 28,["34"] = 29,["35"] = 30,["37"] = 31,["39"] = 32,["41"] = 33,["43"] = 34,["45"] = 35,["47"] = 36,["49"] = 37,["51"] = 38,["53"] = 39,["55"] = 40,["57"] = 41,["59"] = 42,["61"] = 43,["63"] = 44,["65"] = 45,["67"] = 46,["69"] = 47,["71"] = 48,["73"] = 49,["75"] = 50,["77"] = 51,["79"] = 52,["81"] = 53,["83"] = 54,["85"] = 55,["88"] = 57,["91"] = 28,["92"] = 61,["93"] = 62,["94"] = 61});
local ____exports = {}
____exports.HeroHpBar = HeroHpBar or ({})
____exports.HeroHpBar["熟练度0"] = 134247355
____exports.HeroHpBar[____exports.HeroHpBar["熟练度0"]] = "熟练度0"
____exports.HeroHpBar["熟练度1"] = 134265759
____exports.HeroHpBar[____exports.HeroHpBar["熟练度1"]] = "熟练度1"
____exports.HeroHpBar["熟练度2"] = 134224940
____exports.HeroHpBar[____exports.HeroHpBar["熟练度2"]] = "熟练度2"
____exports.HeroHpBar["熟练度3"] = 134246198
____exports.HeroHpBar[____exports.HeroHpBar["熟练度3"]] = "熟练度3"
____exports.HeroHpBar["熟练度4"] = 134238437
____exports.HeroHpBar[____exports.HeroHpBar["熟练度4"]] = "熟练度4"
____exports.HeroHpBar["熟练度5"] = 134252540
____exports.HeroHpBar[____exports.HeroHpBar["熟练度5"]] = "熟练度5"
____exports.HeroHpBar["熟练度6"] = 134279822
____exports.HeroHpBar[____exports.HeroHpBar["熟练度6"]] = "熟练度6"
____exports.HeroHpBar["熟练度7"] = 134230378
____exports.HeroHpBar[____exports.HeroHpBar["熟练度7"]] = "熟练度7"
____exports.HeroHpBar["熟练度8"] = 134239534
____exports.HeroHpBar[____exports.HeroHpBar["熟练度8"]] = "熟练度8"
____exports.HeroHpBar["熟练度9"] = 134219503
____exports.HeroHpBar[____exports.HeroHpBar["熟练度9"]] = "熟练度9"
____exports.HeroHpBar["熟练度10"] = 134276234
____exports.HeroHpBar[____exports.HeroHpBar["熟练度10"]] = "熟练度10"
____exports.HeroHpBar["熟练度11"] = 134264730
____exports.HeroHpBar[____exports.HeroHpBar["熟练度11"]] = "熟练度11"
____exports.HeroHpBar["熟练度12"] = 134228050
____exports.HeroHpBar[____exports.HeroHpBar["熟练度12"]] = "熟练度12"
function ____exports.getHeroHpBar(self, expLevel)
    repeat
        local ____switch3 = expLevel
        local ____cond3 = ____switch3 == 0
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度0"]
        end
        ____cond3 = ____cond3 or ____switch3 == 1
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度1"]
        end
        ____cond3 = ____cond3 or ____switch3 == 2
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度2"]
        end
        ____cond3 = ____cond3 or ____switch3 == 3
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度3"]
        end
        ____cond3 = ____cond3 or ____switch3 == 4
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度4"]
        end
        ____cond3 = ____cond3 or ____switch3 == 5
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度5"]
        end
        ____cond3 = ____cond3 or ____switch3 == 6
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度6"]
        end
        ____cond3 = ____cond3 or ____switch3 == 7
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度7"]
        end
        ____cond3 = ____cond3 or ____switch3 == 8
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度8"]
        end
        ____cond3 = ____cond3 or ____switch3 == 9
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度9"]
        end
        ____cond3 = ____cond3 or ____switch3 == 10
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度10"]
        end
        ____cond3 = ____cond3 or ____switch3 == 11
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度11"]
        end
        ____cond3 = ____cond3 or ____switch3 == 12
        if ____cond3 then
            return ____exports.HeroHpBar["熟练度12"]
        end
        do
            return ____exports.HeroHpBar["熟练度0"]
        end
    until true
end
function ____exports.setHeroHpBar(self, unit, expLevel)
    unit:set_blood_bar_type(____exports.getHeroHpBar(nil, expLevel))
end
return ____exports
