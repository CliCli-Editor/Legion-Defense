---@enum(key, partial) y3.Const.FloatTextType
local fonts = {
    ["英文属性"] = "1005885716",
    ["护盾"] = "1082621725",
    ["属性"] = "1190323031",
    ["毒"] = "1319947408",
}

y3.util.tableMerge(y3.const.FloatTextType or {}, fonts)
