local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 2,["7"] = 2,["8"] = 3,["9"] = 3,["10"] = 4,["11"] = 4,["12"] = 5,["13"] = 5,["14"] = 6,["15"] = 6,["16"] = 9,["17"] = 9,["18"] = 10,["19"] = 10,["20"] = 11,["21"] = 11,["22"] = 12,["23"] = 12,["24"] = 13,["25"] = 13,["26"] = 15,["27"] = 15,["28"] = 16,["29"] = 16,["30"] = 17,["31"] = 17,["32"] = 19,["33"] = 19,["34"] = 22,["35"] = 23,["36"] = 24,["37"] = 25,["38"] = 26,["39"] = 27,["40"] = 29,["41"] = 30,["42"] = 31,["43"] = 32,["44"] = 33,["45"] = 35,["46"] = 35,["47"] = 35,["48"] = 35,["49"] = 35,["50"] = 35,["51"] = 35,["52"] = 35,["53"] = 35,["54"] = 35,["55"] = 40,["56"] = 41,["57"] = 42,["58"] = 43,["60"] = 45,["61"] = 40,["62"] = 48,["63"] = 49,["64"] = 49,["65"] = 50,["66"] = 50,["67"] = 51,["68"] = 51,["69"] = 52,["70"] = 52,["71"] = 53,["72"] = 53,["73"] = 55,["74"] = 55,["75"] = 56,["76"] = 56,["77"] = 57,["78"] = 57,["79"] = 58,["80"] = 58,["81"] = 59,["82"] = 59,["83"] = 61,["84"] = 61,["85"] = 63,["86"] = 63,["87"] = 64,["88"] = 64,["89"] = 66,["90"] = 66,["91"] = 67,["92"] = 67,["93"] = 72,["94"] = 73,["95"] = 74,["96"] = 75,["97"] = 76,["98"] = 77,["99"] = 78,["100"] = 79,["101"] = 80,["102"] = 81,["103"] = 82,["104"] = 84,["105"] = 85,["106"] = 86,["107"] = 87,["108"] = 88,["109"] = 89,["110"] = 90,["111"] = 91,["112"] = 92,["113"] = 93,["114"] = 94,["115"] = 97,["116"] = 98,["117"] = 99,["118"] = 100,["119"] = 101,["120"] = 102,["121"] = 103,["122"] = 104,["123"] = 105,["124"] = 106,["125"] = 107,["126"] = 110,["127"] = 111,["128"] = 112,["129"] = 113,["130"] = 114,["131"] = 115,["132"] = 116,["133"] = 117,["134"] = 118,["135"] = 119,["136"] = 120,["137"] = 121,["138"] = 122,["139"] = 123});
local ____exports = {}
____exports.PlayerId = PlayerId or ({})
____exports.PlayerId.LEFT_PLAYER_1 = 1
____exports.PlayerId[____exports.PlayerId.LEFT_PLAYER_1] = "LEFT_PLAYER_1"
____exports.PlayerId.LEFT_PLAYER_2 = 2
____exports.PlayerId[____exports.PlayerId.LEFT_PLAYER_2] = "LEFT_PLAYER_2"
____exports.PlayerId.LEFT_PLAYER_3 = 3
____exports.PlayerId[____exports.PlayerId.LEFT_PLAYER_3] = "LEFT_PLAYER_3"
____exports.PlayerId.LEFT_PLAYER_4 = 4
____exports.PlayerId[____exports.PlayerId.LEFT_PLAYER_4] = "LEFT_PLAYER_4"
____exports.PlayerId.LEFT_KING = 9
____exports.PlayerId[____exports.PlayerId.LEFT_KING] = "LEFT_KING"
____exports.PlayerId.RIGHT_PLAYER_1 = 5
____exports.PlayerId[____exports.PlayerId.RIGHT_PLAYER_1] = "RIGHT_PLAYER_1"
____exports.PlayerId.RIGHT_PLAYER_2 = 6
____exports.PlayerId[____exports.PlayerId.RIGHT_PLAYER_2] = "RIGHT_PLAYER_2"
____exports.PlayerId.RIGHT_PLAYER_3 = 7
____exports.PlayerId[____exports.PlayerId.RIGHT_PLAYER_3] = "RIGHT_PLAYER_3"
____exports.PlayerId.RIGHT_PLAYER_4 = 8
____exports.PlayerId[____exports.PlayerId.RIGHT_PLAYER_4] = "RIGHT_PLAYER_4"
____exports.PlayerId.RIGHT_KING = 10
____exports.PlayerId[____exports.PlayerId.RIGHT_KING] = "RIGHT_KING"
____exports.PlayerId.JUDGE = 11
____exports.PlayerId[____exports.PlayerId.JUDGE] = "JUDGE"
____exports.PlayerId.NEUTRAL_AND_HOSTILE = 31
____exports.PlayerId[____exports.PlayerId.NEUTRAL_AND_HOSTILE] = "NEUTRAL_AND_HOSTILE"
____exports.PlayerId.NEUTRAL_AND_FRIENDLY = 32
____exports.PlayerId[____exports.PlayerId.NEUTRAL_AND_FRIENDLY] = "NEUTRAL_AND_FRIENDLY"
____exports.PlayerId.OBSERVER = 33
____exports.PlayerId[____exports.PlayerId.OBSERVER] = "OBSERVER"
____exports.factions = {}
____exports.factions[____exports.PlayerId.LEFT_PLAYER_1] = -1
____exports.factions[____exports.PlayerId.LEFT_PLAYER_2] = -1
____exports.factions[____exports.PlayerId.LEFT_PLAYER_3] = -1
____exports.factions[____exports.PlayerId.LEFT_PLAYER_4] = -1
____exports.factions[____exports.PlayerId.LEFT_KING] = -1
____exports.factions[____exports.PlayerId.RIGHT_PLAYER_1] = 1
____exports.factions[____exports.PlayerId.RIGHT_PLAYER_2] = 1
____exports.factions[____exports.PlayerId.RIGHT_PLAYER_3] = 1
____exports.factions[____exports.PlayerId.RIGHT_PLAYER_4] = 1
____exports.factions[____exports.PlayerId.RIGHT_KING] = 1
____exports.playerIdList = {
    ____exports.PlayerId.LEFT_PLAYER_1,
    ____exports.PlayerId.LEFT_PLAYER_2,
    ____exports.PlayerId.LEFT_PLAYER_3,
    ____exports.PlayerId.LEFT_PLAYER_4,
    ____exports.PlayerId.RIGHT_PLAYER_1,
    ____exports.PlayerId.RIGHT_PLAYER_2,
    ____exports.PlayerId.RIGHT_PLAYER_3,
    ____exports.PlayerId.RIGHT_PLAYER_4
}
function ____exports.getFactions(self, id)
    local v = ____exports.factions[id]
    if v == nil then
        return 0
    end
    return v
end
____exports.BattleGroundId = BattleGroundId or ({})
____exports.BattleGroundId.LEFT_1 = 1
____exports.BattleGroundId[____exports.BattleGroundId.LEFT_1] = "LEFT_1"
____exports.BattleGroundId.LEFT_2 = 2
____exports.BattleGroundId[____exports.BattleGroundId.LEFT_2] = "LEFT_2"
____exports.BattleGroundId.LEFT_3 = 3
____exports.BattleGroundId[____exports.BattleGroundId.LEFT_3] = "LEFT_3"
____exports.BattleGroundId.LEFT_4 = 4
____exports.BattleGroundId[____exports.BattleGroundId.LEFT_4] = "LEFT_4"
____exports.BattleGroundId.LEFT_KING = 9
____exports.BattleGroundId[____exports.BattleGroundId.LEFT_KING] = "LEFT_KING"
____exports.BattleGroundId.RIGHT_1 = 5
____exports.BattleGroundId[____exports.BattleGroundId.RIGHT_1] = "RIGHT_1"
____exports.BattleGroundId.RIGHT_2 = 6
____exports.BattleGroundId[____exports.BattleGroundId.RIGHT_2] = "RIGHT_2"
____exports.BattleGroundId.RIGHT_3 = 7
____exports.BattleGroundId[____exports.BattleGroundId.RIGHT_3] = "RIGHT_3"
____exports.BattleGroundId.RIGHT_4 = 8
____exports.BattleGroundId[____exports.BattleGroundId.RIGHT_4] = "RIGHT_4"
____exports.BattleGroundId.RIGHT_KING = 10
____exports.BattleGroundId[____exports.BattleGroundId.RIGHT_KING] = "RIGHT_KING"
____exports.BattleGroundId.KOF = 20
____exports.BattleGroundId[____exports.BattleGroundId.KOF] = "KOF"
____exports.BattleGroundId.LEFT_RABBIT_VS_SHEEP = 31
____exports.BattleGroundId[____exports.BattleGroundId.LEFT_RABBIT_VS_SHEEP] = "LEFT_RABBIT_VS_SHEEP"
____exports.BattleGroundId.RIGHT_RABBIT_VS_SHEEP = 32
____exports.BattleGroundId[____exports.BattleGroundId.RIGHT_RABBIT_VS_SHEEP] = "RIGHT_RABBIT_VS_SHEEP"
____exports.BattleGroundId.THREE_VS_THREE = 40
____exports.BattleGroundId[____exports.BattleGroundId.THREE_VS_THREE] = "THREE_VS_THREE"
____exports.BattleGroundId.LAST_BATTLE = 50
____exports.BattleGroundId[____exports.BattleGroundId.LAST_BATTLE] = "LAST_BATTLE"
____exports.player2battleGround = {}
____exports.player2battleGround[____exports.PlayerId.LEFT_PLAYER_1] = ____exports.BattleGroundId.LEFT_1
____exports.player2battleGround[____exports.PlayerId.LEFT_PLAYER_2] = ____exports.BattleGroundId.LEFT_2
____exports.player2battleGround[____exports.PlayerId.LEFT_PLAYER_3] = ____exports.BattleGroundId.LEFT_3
____exports.player2battleGround[____exports.PlayerId.LEFT_PLAYER_4] = ____exports.BattleGroundId.LEFT_4
____exports.player2battleGround[____exports.PlayerId.LEFT_KING] = ____exports.BattleGroundId.LEFT_KING
____exports.player2battleGround[____exports.PlayerId.RIGHT_PLAYER_1] = ____exports.BattleGroundId.RIGHT_1
____exports.player2battleGround[____exports.PlayerId.RIGHT_PLAYER_2] = ____exports.BattleGroundId.RIGHT_2
____exports.player2battleGround[____exports.PlayerId.RIGHT_PLAYER_3] = ____exports.BattleGroundId.RIGHT_3
____exports.player2battleGround[____exports.PlayerId.RIGHT_PLAYER_4] = ____exports.BattleGroundId.RIGHT_4
____exports.player2battleGround[____exports.PlayerId.RIGHT_KING] = ____exports.BattleGroundId.RIGHT_KING
____exports.battleGround2player = {}
____exports.battleGround2player[____exports.BattleGroundId.LEFT_1] = ____exports.PlayerId.LEFT_PLAYER_1
____exports.battleGround2player[____exports.BattleGroundId.LEFT_2] = ____exports.PlayerId.LEFT_PLAYER_2
____exports.battleGround2player[____exports.BattleGroundId.LEFT_3] = ____exports.PlayerId.LEFT_PLAYER_3
____exports.battleGround2player[____exports.BattleGroundId.LEFT_4] = ____exports.PlayerId.LEFT_PLAYER_4
____exports.battleGround2player[____exports.BattleGroundId.LEFT_KING] = ____exports.PlayerId.LEFT_KING
____exports.battleGround2player[____exports.BattleGroundId.RIGHT_1] = ____exports.PlayerId.RIGHT_PLAYER_1
____exports.battleGround2player[____exports.BattleGroundId.RIGHT_2] = ____exports.PlayerId.RIGHT_PLAYER_2
____exports.battleGround2player[____exports.BattleGroundId.RIGHT_3] = ____exports.PlayerId.RIGHT_PLAYER_3
____exports.battleGround2player[____exports.BattleGroundId.RIGHT_4] = ____exports.PlayerId.RIGHT_PLAYER_4
____exports.battleGround2player[____exports.BattleGroundId.RIGHT_KING] = ____exports.PlayerId.RIGHT_KING
____exports.player2King = {}
____exports.player2King[____exports.PlayerId.LEFT_PLAYER_1] = ____exports.BattleGroundId.LEFT_KING
____exports.player2King[____exports.PlayerId.LEFT_PLAYER_2] = ____exports.BattleGroundId.LEFT_KING
____exports.player2King[____exports.PlayerId.LEFT_PLAYER_3] = ____exports.BattleGroundId.LEFT_KING
____exports.player2King[____exports.PlayerId.LEFT_PLAYER_4] = ____exports.BattleGroundId.LEFT_KING
____exports.player2King[____exports.PlayerId.LEFT_KING] = ____exports.BattleGroundId.LEFT_KING
____exports.player2King[____exports.PlayerId.RIGHT_PLAYER_1] = ____exports.BattleGroundId.RIGHT_KING
____exports.player2King[____exports.PlayerId.RIGHT_PLAYER_2] = ____exports.BattleGroundId.RIGHT_KING
____exports.player2King[____exports.PlayerId.RIGHT_PLAYER_3] = ____exports.BattleGroundId.RIGHT_KING
____exports.player2King[____exports.PlayerId.RIGHT_PLAYER_4] = ____exports.BattleGroundId.RIGHT_KING
____exports.player2King[____exports.PlayerId.RIGHT_KING] = ____exports.BattleGroundId.RIGHT_KING
____exports.player2Color = {}
____exports.player2Color[____exports.PlayerId.LEFT_PLAYER_1] = "red"
____exports.player2Color[____exports.PlayerId.LEFT_PLAYER_2] = "red"
____exports.player2Color[____exports.PlayerId.LEFT_PLAYER_3] = "red"
____exports.player2Color[____exports.PlayerId.LEFT_PLAYER_4] = "red"
____exports.player2Color[____exports.PlayerId.LEFT_KING] = "red"
____exports.player2Color[____exports.PlayerId.RIGHT_PLAYER_1] = "blue"
____exports.player2Color[____exports.PlayerId.RIGHT_PLAYER_2] = "blue"
____exports.player2Color[____exports.PlayerId.RIGHT_PLAYER_3] = "blue"
____exports.player2Color[____exports.PlayerId.RIGHT_PLAYER_4] = "blue"
____exports.player2Color[____exports.PlayerId.RIGHT_KING] = "blue"
____exports.player2Color[____exports.PlayerId.NEUTRAL_AND_FRIENDLY] = "green"
____exports.player2Color[____exports.PlayerId.NEUTRAL_AND_HOSTILE] = "yellow"
____exports.player2Color[____exports.PlayerId.JUDGE] = "orange"
return ____exports
