local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 15,["26"] = 15,["27"] = 17,["28"] = 17,["29"] = 17,["31"] = 22,["32"] = 27,["33"] = 32,["34"] = 37,["35"] = 39,["36"] = 57,["37"] = 59,["38"] = 77,["39"] = 79,["40"] = 97,["41"] = 99,["42"] = 117,["43"] = 122,["44"] = 127,["45"] = 129,["46"] = 147,["47"] = 149,["48"] = 167,["49"] = 169,["50"] = 187,["51"] = 189,["52"] = 207,["53"] = 17,["58"] = 44,["59"] = 45,["60"] = 46,["62"] = 48,["63"] = 48,["64"] = 48,["65"] = 48,["68"] = 51,["76"] = 64,["77"] = 65,["78"] = 66,["80"] = 68,["81"] = 68,["82"] = 68,["83"] = 68,["86"] = 71,["94"] = 84,["95"] = 85,["96"] = 86,["98"] = 88,["99"] = 88,["100"] = 88,["101"] = 88,["104"] = 91,["112"] = 104,["113"] = 105,["114"] = 106,["116"] = 108,["117"] = 108,["118"] = 108,["119"] = 108,["122"] = 111,["130"] = 134,["131"] = 135,["132"] = 136,["134"] = 138,["135"] = 138,["136"] = 138,["137"] = 138,["140"] = 141,["148"] = 154,["149"] = 155,["150"] = 156,["152"] = 158,["153"] = 158,["154"] = 158,["155"] = 158,["158"] = 161,["166"] = 174,["167"] = 175,["168"] = 176,["170"] = 178,["171"] = 178,["172"] = 178,["173"] = 178,["176"] = 181,["184"] = 194,["185"] = 195,["186"] = 196,["188"] = 198,["189"] = 198,["190"] = 198,["191"] = 198,["194"] = 201,["198"] = 211,["199"] = 212,["200"] = 213,["201"] = 229,["202"] = 231,["203"] = 232,["204"] = 232,["205"] = 232,["206"] = 232,["207"] = 232,["208"] = 233,["209"] = 234,["211"] = 235,["212"] = 235,["213"] = 236,["214"] = 237,["215"] = 238,["216"] = 239,["218"] = 242,["219"] = 243,["221"] = 245,["223"] = 235,["227"] = 250,["228"] = 252,["230"] = 231});
local ____exports = {}
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local fields = {
    "id",
    "name",
    "ourMistake",
    "_ourHeroBuff",
    "_ourKingBuff",
    "_ourTowerBuff",
    "_ourMercenaryBuff",
    "ourReward",
    "enemyMistake",
    "_enemyHeroBuff",
    "_enemyKingBuff",
    "_enemyTowerBuff",
    "_enemyMercenaryBuff",
    "enemyReward"
}
____exports.RobotLevelConfig = __TS__Class()
local RobotLevelConfig = ____exports.RobotLevelConfig
RobotLevelConfig.name = "RobotLevelConfig"
function RobotLevelConfig.prototype.____constructor(self)
    self.id = 0
    self.name = ""
    self.ourMistake = 0
    self._ourHeroBuff = {}
    self._fkourHeroBuff = nil
    self._ourKingBuff = {}
    self._fkourKingBuff = nil
    self._ourTowerBuff = {}
    self._fkourTowerBuff = nil
    self._ourMercenaryBuff = {}
    self._fkourMercenaryBuff = nil
    self.ourReward = {}
    self.enemyMistake = 0
    self._enemyHeroBuff = {}
    self._fkenemyHeroBuff = nil
    self._enemyKingBuff = {}
    self._fkenemyKingBuff = nil
    self._enemyTowerBuff = {}
    self._fkenemyTowerBuff = nil
    self._enemyMercenaryBuff = {}
    self._fkenemyMercenaryBuff = nil
    self.enemyReward = {}
end
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "ourHeroBuff",
    {get = function(self)
        if self._fkourHeroBuff == nil then
            if not self._ourHeroBuff then
                self._fkourHeroBuff = {}
            else
                self._fkourHeroBuff = __TS__ArrayMap(
                    self._ourHeroBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkourHeroBuff
    end},
    true
)
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "ourKingBuff",
    {get = function(self)
        if self._fkourKingBuff == nil then
            if not self._ourKingBuff then
                self._fkourKingBuff = {}
            else
                self._fkourKingBuff = __TS__ArrayMap(
                    self._ourKingBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkourKingBuff
    end},
    true
)
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "ourTowerBuff",
    {get = function(self)
        if self._fkourTowerBuff == nil then
            if not self._ourTowerBuff then
                self._fkourTowerBuff = {}
            else
                self._fkourTowerBuff = __TS__ArrayMap(
                    self._ourTowerBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkourTowerBuff
    end},
    true
)
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "ourMercenaryBuff",
    {get = function(self)
        if self._fkourMercenaryBuff == nil then
            if not self._ourMercenaryBuff then
                self._fkourMercenaryBuff = {}
            else
                self._fkourMercenaryBuff = __TS__ArrayMap(
                    self._ourMercenaryBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkourMercenaryBuff
    end},
    true
)
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "enemyHeroBuff",
    {get = function(self)
        if self._fkenemyHeroBuff == nil then
            if not self._enemyHeroBuff then
                self._fkenemyHeroBuff = {}
            else
                self._fkenemyHeroBuff = __TS__ArrayMap(
                    self._enemyHeroBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkenemyHeroBuff
    end},
    true
)
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "enemyKingBuff",
    {get = function(self)
        if self._fkenemyKingBuff == nil then
            if not self._enemyKingBuff then
                self._fkenemyKingBuff = {}
            else
                self._fkenemyKingBuff = __TS__ArrayMap(
                    self._enemyKingBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkenemyKingBuff
    end},
    true
)
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "enemyTowerBuff",
    {get = function(self)
        if self._fkenemyTowerBuff == nil then
            if not self._enemyTowerBuff then
                self._fkenemyTowerBuff = {}
            else
                self._fkenemyTowerBuff = __TS__ArrayMap(
                    self._enemyTowerBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkenemyTowerBuff
    end},
    true
)
__TS__SetDescriptor(
    RobotLevelConfig.prototype,
    "enemyMercenaryBuff",
    {get = function(self)
        if self._fkenemyMercenaryBuff == nil then
            if not self._enemyMercenaryBuff then
                self._fkenemyMercenaryBuff = {}
            else
                self._fkenemyMercenaryBuff = __TS__ArrayMap(
                    self._enemyMercenaryBuff,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkenemyMercenaryBuff
    end},
    true
)
____exports.robotLevelConfigList = {}
____exports.robotLevelConfigMap = {}
____exports.map = ____exports.robotLevelConfigMap
local encryptModelData = "hZUJwYqvvP/5WpTTZ8rr/dwnYazPs1+af/RUqtVjRe5BhyKxzlt4S6OfqclQvnCB4uaMIj1EPdPxHTTC7GDrmTP0Vl65B36QkQNADXmFbzOL1DcvUkxFGn7MFX5MZfcZe4PpZ3EH46sZ8Mzl3+GV3+9iZGSN+2enNNsJw9qjviOAoE9nntkT+biEoi4fNBYxnrGvTY3fUMMJ/1JLPUAUQVXWxjc5MvesHK73op3O7HTE0ZyprX1H2bHa+wNE4Tls+2GFJy6BknDwfSM1y3ttu2Y6SuFqnXbH+UIej0UYkiUvcPi5kWdshSpvBqv49w6vQx35CcbrqO41U/Uo7xhayB4LCDMTsjCmVCDe7lkr57KRVwSDiCtxcL/5jg8XD8p91IhrtrMInw4numaXmYehCxz4/4NbEoe9xiz7hGr0HuChKlA6kC+lQCQvhPkzHDqHjdcRm9X+thUbCW0P/VHReECgWjFNX0g8zSBHFJKp5/ciF/Af/PYFtOmwBvXFPvC0oJBOs23p3vtLWzdBFknq+unEcSDe5iV5rr5OfkBEeb6rrJk6HyLZOSqJxF/dPDmbe/URqwa/73K5wdePfNMqTtHH0nMHaNPIzdCngrGguDyCRp6l8b8wwaaZD4k4vKZjsAJ4WlhNdgn6XYVUraK+88pbmPsGT+dBmk3YcSV8zsHlatAFiSox/mFMXJBjS9ojzM1t1duUfNlyUYpx6Wd6CwD+VF5K2cKjy0co6z1f/eo="
function ____exports.RobotLevelConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "robotleveliWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("robotlevel&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RobotLevelConfig)
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
        local ____exports_robotLevelConfigList_0 = ____exports.robotLevelConfigList
        ____exports_robotLevelConfigList_0[#____exports_robotLevelConfigList_0 + 1] = obj
        ____exports.robotLevelConfigMap[obj.id] = obj
    end
end
return ____exports
