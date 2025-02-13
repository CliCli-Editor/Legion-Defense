local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 6,["7"] = 6,["8"] = 7,["9"] = 9,["10"] = 6,["11"] = 12,["12"] = 13,["13"] = 14,["14"] = 12,["15"] = 16,["16"] = 17,["17"] = 12,["18"] = 19,["19"] = 20,["20"] = 20,["21"] = 21,["23"] = 24,["24"] = 24,["25"] = 24,["26"] = 12,["27"] = 6,["28"] = 27,["29"] = 28,["30"] = 29,["31"] = 27,["32"] = 31,["33"] = 32,["34"] = 32,["35"] = 27,["36"] = 34,["37"] = 35,["38"] = 35,["39"] = 36,["41"] = 38,["42"] = 38,["43"] = 27,["44"] = 6,["45"] = 41,["46"] = 42,["47"] = 43,["48"] = 41,["49"] = 45,["50"] = 46,["51"] = 46,["52"] = 41,["53"] = 48,["54"] = 49,["55"] = 49,["56"] = 50,["58"] = 53,["59"] = 53,["60"] = 53,["61"] = 41,["62"] = 6,["63"] = 56,["64"] = 57,["65"] = 58,["66"] = 56,["67"] = 60,["68"] = 61,["69"] = 61,["70"] = 56,["71"] = 63,["72"] = 64,["73"] = 64,["74"] = 65,["76"] = 68,["77"] = 68,["78"] = 56,["79"] = 6,["80"] = 71,["81"] = 72,["82"] = 73,["83"] = 71,["84"] = 75,["85"] = 76,["86"] = 71,["87"] = 78,["88"] = 79,["89"] = 71,["90"] = 6,["91"] = 82,["92"] = 83,["93"] = 84,["94"] = 82,["95"] = 86,["96"] = 87,["97"] = 82,["98"] = 89,["99"] = 90,["100"] = 91,["102"] = 94,["103"] = 95,["105"] = 98,["106"] = 98,["107"] = 99,["109"] = 102,["110"] = 82,["111"] = 6,["112"] = 105,["113"] = 106,["114"] = 107,["115"] = 105,["116"] = 109,["117"] = 110,["118"] = 110,["119"] = 105,["120"] = 112,["121"] = 113,["122"] = 113,["123"] = 114,["125"] = 116,["126"] = 116,["127"] = 105,["128"] = 6,["129"] = 119,["130"] = 120,["131"] = 121,["132"] = 122,["134"] = 125,["135"] = 126,["137"] = 129,["138"] = 119,["139"] = 131,["140"] = 132,["141"] = 133,["143"] = 136,["144"] = 137,["146"] = 139,["147"] = 119,["148"] = 141,["149"] = 142,["150"] = 143,["152"] = 146,["153"] = 147,["155"] = 150,["156"] = 152,["157"] = 153,["159"] = 156,["160"] = 119,["161"] = 6,["162"] = 159,["163"] = 160,["164"] = 161,["165"] = 162,["166"] = 159,["167"] = 164,["168"] = 165,["169"] = 166,["170"] = 166,["171"] = 159,["172"] = 168,["173"] = 169,["174"] = 170,["175"] = 170,["176"] = 171,["178"] = 173,["179"] = 173,["180"] = 159,["181"] = 6,["182"] = 176,["183"] = 177,["184"] = 178,["185"] = 176,["186"] = 180,["187"] = 181,["188"] = 182,["189"] = 183,["190"] = 184,["191"] = 184,["192"] = 185,["193"] = 186,["194"] = 186,["196"] = 188,["197"] = 188,["199"] = 176,["200"] = 191,["201"] = 192,["202"] = 193,["204"] = 195,["205"] = 176,["206"] = 6,["207"] = 6,["208"] = 200,["209"] = 202,["210"] = 202,["211"] = 202,["212"] = 202,["213"] = 202,["214"] = 202,["215"] = 202,["216"] = 202,["217"] = 202,["218"] = 202,["219"] = 202,["220"] = 202,["221"] = 202,["222"] = 202,["223"] = 202,["224"] = 202,["225"] = 202,["226"] = 202,["227"] = 202,["228"] = 202,["229"] = 202,["230"] = 202,["231"] = 202,["232"] = 202,["233"] = 202,["234"] = 202,["235"] = 202,["236"] = 202,["237"] = 202,["238"] = 202,["239"] = 202,["240"] = 202,["241"] = 202});
local ____exports = {}
local Easing
--- The Ease class provides a collection of easing functions for use with tween.js.
Easing = {
    Linear = {None = function(self, amount)
        return amount
    end},
    Quadratic = {
        In = function(self, amount)
            return amount * amount
        end,
        Out = function(self, amount)
            return amount * (2 - amount)
        end,
        InOut = function(self, amount)
            amount = amount * 2
            if amount < 1 then
                return 0.5 * amount * amount
            end
            local ____temp_0 = -0.5
            amount = amount - 1
            return ____temp_0 * (amount * (amount - 2) - 1)
        end
    },
    Cubic = {
        In = function(self, amount)
            return amount * amount * amount
        end,
        Out = function(self, amount)
            amount = amount - 1
            return amount * amount * amount + 1
        end,
        InOut = function(self, amount)
            amount = amount * 2
            if amount < 1 then
                return 0.5 * amount * amount * amount
            end
            amount = amount - 2
            return 0.5 * (amount * amount * amount + 2)
        end
    },
    Quartic = {
        In = function(self, amount)
            return amount * amount * amount * amount
        end,
        Out = function(self, amount)
            amount = amount - 1
            return 1 - amount * amount * amount * amount
        end,
        InOut = function(self, amount)
            amount = amount * 2
            if amount < 1 then
                return 0.5 * amount * amount * amount * amount
            end
            local ____temp_1 = -0.5
            amount = amount - 2
            return ____temp_1 * (amount * amount * amount * amount - 2)
        end
    },
    Quintic = {
        In = function(self, amount)
            return amount * amount * amount * amount * amount
        end,
        Out = function(self, amount)
            amount = amount - 1
            return amount * amount * amount * amount * amount + 1
        end,
        InOut = function(self, amount)
            amount = amount * 2
            if amount < 1 then
                return 0.5 * amount * amount * amount * amount * amount
            end
            amount = amount - 2
            return 0.5 * (amount * amount * amount * amount * amount + 2)
        end
    },
    Sinusoidal = {
        In = function(self, amount)
            return 1 - math.cos(amount * math.pi / 2)
        end,
        Out = function(self, amount)
            return math.sin(amount * math.pi / 2)
        end,
        InOut = function(self, amount)
            return 0.5 * (1 - math.cos(math.pi * amount))
        end
    },
    Exponential = {
        In = function(self, amount)
            return amount == 0 and 0 or 1024 ^ (amount - 1)
        end,
        Out = function(self, amount)
            return amount == 1 and 1 or 1 - 2 ^ (-10 * amount)
        end,
        InOut = function(self, amount)
            if amount == 0 then
                return 0
            end
            if amount == 1 then
                return 1
            end
            amount = amount * 2
            if amount < 1 then
                return 0.5 * 1024 ^ (amount - 1)
            end
            return 0.5 * (-2 ^ (-10 * (amount - 1)) + 2)
        end
    },
    Circular = {
        In = function(self, amount)
            return 1 - math.sqrt(1 - amount * amount)
        end,
        Out = function(self, amount)
            amount = amount - 1
            return math.sqrt(1 - amount * amount)
        end,
        InOut = function(self, amount)
            amount = amount * 2
            if amount < 1 then
                return -0.5 * (math.sqrt(1 - amount * amount) - 1)
            end
            amount = amount - 2
            return 0.5 * (math.sqrt(1 - amount * amount) + 1)
        end
    },
    Elastic = {
        In = function(self, amount)
            if amount == 0 then
                return 0
            end
            if amount == 1 then
                return 1
            end
            return -2 ^ (10 * (amount - 1)) * math.sin((amount - 1.1) * 5 * math.pi)
        end,
        Out = function(self, amount)
            if amount == 0 then
                return 0
            end
            if amount == 1 then
                return 1
            end
            return 2 ^ (-10 * amount) * math.sin((amount - 0.1) * 5 * math.pi) + 1
        end,
        InOut = function(self, amount)
            if amount == 0 then
                return 0
            end
            if amount == 1 then
                return 1
            end
            amount = amount * 2
            if amount < 1 then
                return -0.5 * 2 ^ (10 * (amount - 1)) * math.sin((amount - 1.1) * 5 * math.pi)
            end
            return 0.5 * 2 ^ (-10 * (amount - 1)) * math.sin((amount - 1.1) * 5 * math.pi) + 1
        end
    },
    Back = {
        In = function(self, amount)
            local s = 1.70158
            return amount * amount * ((s + 1) * amount - s)
        end,
        Out = function(self, amount)
            local s = 1.70158
            amount = amount - 1
            return amount * amount * ((s + 1) * amount + s) + 1
        end,
        InOut = function(self, amount)
            local s = 1.70158 * 1.525
            amount = amount * 2
            if amount < 1 then
                return 0.5 * (amount * amount * ((s + 1) * amount - s))
            end
            amount = amount - 2
            return 0.5 * (amount * amount * ((s + 1) * amount + s) + 2)
        end
    },
    Bounce = {
        In = function(self, amount)
            return 1 - Easing.Bounce:Out(1 - amount)
        end,
        Out = function(self, amount)
            if amount < 1 / 2.75 then
                return 7.5625 * amount * amount
            elseif amount < 2 / 2.75 then
                amount = amount - 1.5 / 2.75
                return 7.5625 * amount * amount + 0.75
            elseif amount < 2.5 / 2.75 then
                amount = amount - 2.25 / 2.75
                return 7.5625 * amount * amount + 0.9375
            else
                amount = amount - 2.625 / 2.75
                return 7.5625 * amount * amount + 0.984375
            end
        end,
        InOut = function(self, amount)
            if amount < 0.5 then
                return Easing.Bounce:In(amount * 2) * 0.5
            end
            return Easing.Bounce:Out(amount * 2 - 1) * 0.5 + 0.5
        end
    }
}
____exports.default = Easing
____exports.EasingChinese = {
    ["线性"] = Easing.Linear.None,
    ["二次方进"] = Easing.Quadratic.In,
    ["二次方出"] = Easing.Quadratic.Out,
    ["二次方进出"] = Easing.Quadratic.InOut,
    ["三次方进"] = Easing.Cubic.In,
    ["三次方出"] = Easing.Cubic.Out,
    ["三次方进出"] = Easing.Cubic.InOut,
    ["四次方进"] = Easing.Quartic.In,
    ["四次方出"] = Easing.Quartic.Out,
    ["四次方进出"] = Easing.Quartic.InOut,
    ["五次方进"] = Easing.Quintic.In,
    ["五次方出"] = Easing.Quintic.Out,
    ["五次方进出"] = Easing.Quintic.InOut,
    ["正弦进"] = Easing.Sinusoidal.In,
    ["正弦出"] = Easing.Sinusoidal.Out,
    ["正弦进出"] = Easing.Sinusoidal.InOut,
    ["指数进"] = Easing.Exponential.In,
    ["指数出"] = Easing.Exponential.Out,
    ["指数进出"] = Easing.Exponential.InOut,
    ["圆进"] = Easing.Circular.In,
    ["圆出"] = Easing.Circular.Out,
    ["圆进出"] = Easing.Circular.InOut,
    ["弹簧进"] = Easing.Elastic.In,
    ["弹簧出"] = Easing.Elastic.Out,
    ["弹簧进出"] = Easing.Elastic.InOut,
    ["后退进"] = Easing.Back.In,
    ["后退出"] = Easing.Back.Out,
    ["后退进出"] = Easing.Back.InOut,
    ["反弹进"] = Easing.Bounce.In,
    ["反弹出"] = Easing.Bounce.Out,
    ["反弹进出"] = Easing.Bounce.InOut
}
return ____exports
