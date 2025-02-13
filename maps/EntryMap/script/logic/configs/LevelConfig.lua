local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 13,["24"] = 13,["25"] = 13,["26"] = 13,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 13,["35"] = 13,["36"] = 13,["37"] = 13,["38"] = 13,["39"] = 13,["40"] = 15,["41"] = 15,["42"] = 15,["44"] = 20,["45"] = 32,["46"] = 37,["47"] = 42,["48"] = 48,["49"] = 54,["50"] = 59,["51"] = 65,["52"] = 70,["53"] = 75,["54"] = 82,["55"] = 88,["56"] = 93,["57"] = 98,["58"] = 103,["59"] = 108,["60"] = 114,["61"] = 139,["62"] = 144,["63"] = 149,["64"] = 154,["65"] = 159,["66"] = 164,["67"] = 169,["68"] = 174,["69"] = 179,["70"] = 184,["71"] = 189,["72"] = 194,["73"] = 199,["74"] = 204,["75"] = 15,["76"] = 208,["77"] = 209,["78"] = 210,["79"] = 246,["80"] = 248,["81"] = 249,["82"] = 249,["83"] = 249,["84"] = 249,["85"] = 249,["86"] = 250,["87"] = 251,["89"] = 252,["90"] = 252,["91"] = 253,["92"] = 254,["93"] = 255,["94"] = 256,["96"] = 259,["97"] = 260,["99"] = 262,["101"] = 252,["105"] = 267,["106"] = 269,["108"] = 248});
local ____exports = {}
local fields = {
    "id",
    "type",
    "monsterEffect",
    "monsterLevel",
    "perpareTime",
    "value",
    "progress",
    "goldReward",
    "defGold",
    "atkGold",
    "trigger",
    "equipGroupId",
    "blessGroupId",
    "hpChange",
    "attackChange",
    "coinLossRatio",
    "dividendRatio",
    "banEvent",
    "towerBoom",
    "win3v3",
    "lose3v3",
    "win2v2",
    "lose2v2",
    "win1v1",
    "lose1v1",
    "steamwin3v3",
    "steamlose3v3",
    "steamwin2v2",
    "steamlose2v2",
    "steamwin1v1",
    "steamlose1v1"
}
____exports.LevelConfig = __TS__Class()
local LevelConfig = ____exports.LevelConfig
LevelConfig.name = "LevelConfig"
function LevelConfig.prototype.____constructor(self)
    self.id = 0
    self.type = 0
    self.monsterEffect = {}
    self.monsterLevel = 0
    self.perpareTime = 0
    self.value = {}
    self.progress = {}
    self.goldReward = 0
    self.defGold = {}
    self.atkGold = {}
    self.trigger = 0
    self.equipGroupId = {}
    self.blessGroupId = {}
    self.hpChange = 0
    self.attackChange = 0
    self.coinLossRatio = 0
    self.dividendRatio = {}
    self.banEvent = false
    self.towerBoom = 0
    self.win3v3 = 0
    self.lose3v3 = 0
    self.win2v2 = 0
    self.lose2v2 = 0
    self.win1v1 = 0
    self.lose1v1 = 0
    self.steamwin3v3 = 0
    self.steamlose3v3 = 0
    self.steamwin2v2 = 0
    self.steamlose2v2 = 0
    self.steamwin1v1 = 0
    self.steamlose1v1 = 0
end
____exports.levelConfigList = {}
____exports.levelConfigMap = {}
____exports.map = ____exports.levelConfigMap
local encryptModelData = "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"
function ____exports.LevelConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "leveliWu%C6F0WV&UcD@0#v^RmZz)KKV",
        string.sub("level&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.LevelConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                if type(value) == "string" and obj[key].value ~= nil then
                    obj[key].value = value
                else
                    obj[key] = value
                end
                i = i + 1
            end
        end
        local ____exports_levelConfigList_0 = ____exports.levelConfigList
        ____exports_levelConfigList_0[#____exports_levelConfigList_0 + 1] = obj
        ____exports.levelConfigMap[obj.id] = obj
    end
end
return ____exports
