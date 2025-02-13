local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 13,["24"] = 13,["25"] = 13,["26"] = 13,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 13,["41"] = 13,["42"] = 13,["43"] = 13,["44"] = 13,["45"] = 13,["46"] = 13,["47"] = 13,["48"] = 13,["49"] = 13,["50"] = 13,["51"] = 13,["52"] = 13,["53"] = 13,["54"] = 13,["55"] = 13,["56"] = 13,["57"] = 13,["58"] = 13,["59"] = 13,["60"] = 13,["61"] = 13,["62"] = 13,["63"] = 15,["64"] = 15,["65"] = 15,["67"] = 20,["68"] = 25,["69"] = 30,["70"] = 35,["71"] = 40,["72"] = 45,["73"] = 50,["74"] = 55,["75"] = 60,["76"] = 65,["77"] = 70,["78"] = 75,["79"] = 80,["80"] = 85,["81"] = 90,["82"] = 95,["83"] = 100,["84"] = 105,["85"] = 110,["86"] = 115,["87"] = 120,["88"] = 125,["89"] = 130,["90"] = 135,["91"] = 140,["92"] = 145,["93"] = 150,["94"] = 155,["95"] = 160,["96"] = 165,["97"] = 170,["98"] = 175,["99"] = 180,["100"] = 185,["101"] = 190,["102"] = 195,["103"] = 200,["104"] = 205,["105"] = 210,["106"] = 215,["107"] = 220,["108"] = 225,["109"] = 230,["110"] = 235,["111"] = 240,["112"] = 245,["113"] = 250,["114"] = 255,["115"] = 260,["116"] = 265,["117"] = 270,["118"] = 275,["119"] = 280,["120"] = 285,["121"] = 15,["122"] = 289,["123"] = 291,["124"] = 293,["125"] = 294,["126"] = 294,["127"] = 294,["128"] = 294,["129"] = 294,["130"] = 295,["132"] = 296,["133"] = 296,["134"] = 297,["135"] = 298,["136"] = 299,["137"] = 300,["139"] = 303,["140"] = 296,["143"] = 293});
local ____exports = {}
local fields = {
    "playerPoints",
    "玩家出怪点",
    "玩家警戒区域",
    "monsterRoads",
    "kingPoints",
    "kingRoles",
    "kofTeam",
    "kofVS",
    "玩家1农民点位",
    "玩家2农民点位",
    "玩家3农民点位",
    "玩家4农民点位",
    "玩家5农民点位",
    "玩家6农民点位",
    "玩家7农民点位",
    "玩家8农民点位",
    "玩家1佣兵据点",
    "玩家2佣兵据点",
    "玩家3佣兵据点",
    "玩家4佣兵据点",
    "玩家5佣兵据点",
    "玩家6佣兵据点",
    "玩家7佣兵据点",
    "玩家8佣兵据点",
    "A国王佣兵ID",
    "B国王佣兵ID",
    "A国王对应英雄点",
    "B国王对应英雄点",
    "A国王对应水晶坐标",
    "B国王对应水晶坐标",
    "A国王对应水晶形象",
    "B国王对应水晶形象",
    "国王区域",
    "小宠物出生点",
    "Kof小宠物区域",
    "玩家佣兵据点",
    "兔羊大战怪物出生点A",
    "兔羊大战怪物出生点B",
    "兔羊大战英雄出生区域A",
    "兔羊大战英雄出生区域B",
    "兔羊大战镜头区域",
    "兔羊大战宠物方形区域",
    "刺客出生区域",
    "刺客路径",
    "终极大战区域",
    "终极大战左边阵营",
    "终极大战右边阵营",
    "终极大战玩家坐标",
    "终极大战小宠物区域",
    "终极大战国王坐标",
    "终极大战迷雾",
    "大祝福玩家点位列表",
    "大祝福选择区域",
    "大祝福镜头选择"
}
____exports.MapConfig = __TS__Class()
local MapConfig = ____exports.MapConfig
MapConfig.name = "MapConfig"
function MapConfig.prototype.____constructor(self)
    self.playerPoints = {}
    self["玩家出怪点"] = nil
    self["玩家警戒区域"] = {}
    self.monsterRoads = nil
    self.kingPoints = {}
    self.kingRoles = {}
    self.kofTeam = {}
    self.kofVS = {}
    self["玩家1农民点位"] = {}
    self["玩家2农民点位"] = {}
    self["玩家3农民点位"] = {}
    self["玩家4农民点位"] = {}
    self["玩家5农民点位"] = {}
    self["玩家6农民点位"] = {}
    self["玩家7农民点位"] = {}
    self["玩家8农民点位"] = {}
    self["玩家1佣兵据点"] = 0
    self["玩家2佣兵据点"] = 0
    self["玩家3佣兵据点"] = 0
    self["玩家4佣兵据点"] = 0
    self["玩家5佣兵据点"] = 0
    self["玩家6佣兵据点"] = 0
    self["玩家7佣兵据点"] = 0
    self["玩家8佣兵据点"] = 0
    self["A国王佣兵ID"] = {}
    self["B国王佣兵ID"] = {}
    self["A国王对应英雄点"] = {}
    self["B国王对应英雄点"] = {}
    self["A国王对应水晶坐标"] = {}
    self["B国王对应水晶坐标"] = {}
    self["A国王对应水晶形象"] = {}
    self["B国王对应水晶形象"] = {}
    self["国王区域"] = {}
    self["小宠物出生点"] = {}
    self["Kof小宠物区域"] = {}
    self["玩家佣兵据点"] = {}
    self["兔羊大战怪物出生点A"] = {}
    self["兔羊大战怪物出生点B"] = {}
    self["兔羊大战英雄出生区域A"] = 0
    self["兔羊大战英雄出生区域B"] = 0
    self["兔羊大战镜头区域"] = 0
    self["兔羊大战宠物方形区域"] = 0
    self["刺客出生区域"] = {}
    self["刺客路径"] = {}
    self["终极大战区域"] = 0
    self["终极大战左边阵营"] = 0
    self["终极大战右边阵营"] = 0
    self["终极大战玩家坐标"] = {}
    self["终极大战小宠物区域"] = {}
    self["终极大战国王坐标"] = {}
    self["终极大战迷雾"] = {}
    self["大祝福玩家点位列表"] = {}
    self["大祝福选择区域"] = {}
    self["大祝福镜头选择"] = 0
end
local encryptModelData = "am3w1p+6GW5mbcfc4sSDbQgBhLMxYV8ee6bvQyhCnBw5ZphvMufYX/tmfd93LmpDBAHIYqEUDnh58QfhO4Hz8gmbSI0lsG09svqZyLtWZ609b2tPn5FEBP8M6VotO9+jOr5QIFRUtfMhUNTPjZcxxQgtutbpKwJlxIfuhYwA3S1YkW8nigHIos8u86kah8lamvNjoh+KO49CMJkwB19fH1ky/6e0qUKxrhdy6eb24DWYAAht/MZn9bmaT/YgvjDTN42NFqR+NRi9mHnY9NMCK7zKXKlUWveMVFRzD6OG49bfAmDkBB+BiRdR35BHbB7BJQrfA6tgq2GC2M4rLr6nausart4QnP0HpJYC/XjTPFM3cCrNth89yl0+McuPkikubEmEsfVbV/4LudQNU6ypoS6Bj531HZ7J6ExYiQIvgTAAmZj4X802AuPp1Ntyv7mHHqqCvFk10BTCXrBeTUEaEjvR/j9WeA4tcBUnnQkJ45eaGfN0rxFYnuClBPUDdG5oPEF+1o8P0tFImTVkJ6zThvRY4bCXT95BVlyn9LtDkozKvBFC9nDbKshQI/j+q5N+gIQKUiGDWOccrtvCsEufVOhlurrmuEy6S2izO2mMCtmGmaSfdWKvGxgyq0t+f//4GYaVfbDt9u2UI5DaBZIC1egnn5G7S+6R6LkV8/mU9tFiQOGDu3pu0XzBwR5huYbikTBPgcKigX2a9IzZHFV/fmouFIuin8l5uwxa72b+Mi9vIwoQ/jHQVEpaz/GS2CJjuJU13FQiRj5CAmF/+eNOEKojymv/AgjMhpFety/J1fv9x35J11GuTTBGxkl6kfXG0i0LrFq1tznEmgFTDrNM6eF4yPb68mDTqX/6oXM6XA3Bz2aAfaUoGjC94f4acds1WoDWwtOEwe5j6x9QqinrqbqmVFAlz4Zt05KCmPTisLtZ5+lWVkObBSmH4JCABy1c9AKBWUUEGv/ymV8YWIYo0mtg/J/kNhmYwIndHZZWYO1hRc+Hh1SpFsGFMYinkCuD4bqRbRyc+tmycTVVW1LVq9X4CdhuGkEanr3hEqNEyoPc6g1V+NRBGIXhfmbqlHKTnGUZlwXcv+jIgwW8auwhHDW31Ixt4nYsGY2U7tPOKZYCHO8oXfeQEWMUHTvEZLXstLzY4KuR70skYJz/ieQqk+zLhGvVJfnF49rao7ohuRVvjeVrF3v0voSh5EOKuQE1Z9bhFvL+bPEb5glguw6EHGDGyztGrKWu72rEkutoO6mDnDDWviwXpbAejc9NzdEoEEgDpEClKev+rnqI/XDlXSASjsZ4advb9Zsu47bku+bOdGcGBaTGCpQUytClF4rNe8CEXfwYgYt8SBv+2K05rS3RXaz3n0rXaodEcVkwcfOlM0uvp0xJYYOjuS1p3iA7rWjtUlUWq2pcIw8CnQAaQJdDVBEniZjMaAuQ7Vtms3o6/hJfSoK8p6esCFQKU6wq9kmCuoo75LF5VWWfUvrhsqkjZzWWP6kHS5hbvNeiLAsKkVl7MQB6IE8h2MQvZyImMOG1DV/TuI1dxEJ6Zy+06Fj6OoTBHq5fNnvEKdp2/h4="
____exports.mapConfig = __TS__New(____exports.MapConfig)
function ____exports.MapConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "mapiWu%C6F0WV&UcD@0#v^RmZz)KKV~1",
        string.sub("map&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    local record = modelData[1]
    do
        local i = 0
        while i < #fields do
            local key = fields[i + 1]
            local value = record[i + 1]
            if value == "%null%" then
                value = nil
            end
            ____exports.mapConfig[key] = value
            i = i + 1
        end
    end
end
return ____exports
