local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__Promise = ____lualib.__TS__Promise
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 7,["24"] = 7,["25"] = 8,["26"] = 8,["27"] = 9,["28"] = 9,["29"] = 10,["30"] = 10,["31"] = 11,["32"] = 11,["33"] = 12,["34"] = 12,["35"] = 13,["36"] = 13,["37"] = 14,["38"] = 14,["39"] = 15,["40"] = 15,["41"] = 16,["42"] = 16,["43"] = 17,["44"] = 17,["45"] = 18,["46"] = 18,["47"] = 19,["48"] = 19,["49"] = 20,["50"] = 20,["51"] = 21,["52"] = 21,["53"] = 22,["54"] = 22,["55"] = 23,["56"] = 23,["57"] = 24,["58"] = 24,["59"] = 25,["60"] = 25,["61"] = 26,["62"] = 26,["63"] = 27,["64"] = 27,["66"] = 33,["67"] = 33,["68"] = 33,["70"] = 132,["71"] = 134,["72"] = 194,["73"] = 210,["74"] = 33,["75"] = 136,["77"] = 137,["80"] = 140,["81"] = 141,["82"] = 144,["83"] = 150,["84"] = 152,["85"] = 153,["86"] = 154,["87"] = 155,["88"] = 156,["89"] = 157,["90"] = 158,["91"] = 158,["92"] = 158,["93"] = 158,["94"] = 158,["95"] = 159,["96"] = 160,["97"] = 160,["98"] = 160,["99"] = 160,["100"] = 160,["101"] = 161,["102"] = 162,["103"] = 163,["104"] = 164,["105"] = 165,["106"] = 166,["107"] = 167,["108"] = 168,["109"] = 169,["110"] = 170,["111"] = 172,["112"] = 173,["113"] = 175,["114"] = 175,["115"] = 176,["116"] = 179,["118"] = 136,["119"] = 182,["122"] = 189,["125"] = 184,["126"] = 185,["127"] = 185,["128"] = 186,["129"] = 187,["135"] = 183,["138"] = 191,["139"] = 182,["140"] = 195,["141"] = 196,["144"] = 197,["147"] = 206,["151"] = 201,["152"] = 201,["153"] = 202,["154"] = 203,["155"] = 201,["163"] = 195,["164"] = 211,["165"] = 212,["168"] = 213,["171"] = 225,["175"] = 216,["176"] = 216,["177"] = 217,["178"] = 218,["179"] = 216,["182"] = 221,["183"] = 223,["189"] = 211,["190"] = 229,["193"] = 236,["197"] = 231,["198"] = 231,["199"] = 232,["200"] = 233,["201"] = 231,["209"] = 229,["210"] = 239,["213"] = 246,["217"] = 241,["218"] = 241,["219"] = 242,["220"] = 243,["221"] = 241,["229"] = 239,["230"] = 253,["233"] = 255,["235"] = 256,["236"] = 256,["237"] = 257,["238"] = 258,["239"] = 256,["242"] = 260,["243"] = 261,["246"] = 254,["249"] = 264,["251"] = 254,["253"] = 253,["254"] = 268,["255"] = 268,["256"] = 272,["257"] = 272,["258"] = 277,["260"] = 281,["261"] = 281,["262"] = 282,["263"] = 283,["264"] = 281,["267"] = 277,["272"] = 288,["280"] = 291,["288"] = 294,["296"] = 297,["304"] = 300,["312"] = 303,["316"] = 308});
local ____exports = {}
local ____ArchiveManager = include("framework.storage.ArchiveManager")
local archiveManager = ____ArchiveManager.archiveManager
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
local ____ArchiveAchieveInfo = include("logic.archive.ArchiveAchieveInfo")
local ArchiveAchieveInfo = ____ArchiveAchieveInfo.ArchiveAchieveInfo
local ____ArchiveCheatCount = include("logic.archive.ArchiveCheatCount")
local ArchiveCheatCount = ____ArchiveCheatCount.ArchiveCheatCount
local ____ArchiveExpRankInfo = include("logic.archive.ArchiveExpRankInfo")
local ArchiveExpRankInfo = ____ArchiveExpRankInfo.ArchiveExpRankInfo
local ____ArchiveMercenaryInfo = include("logic.archive.ArchiveMercenaryInfo")
local ArchiveMercenaryInfo = ____ArchiveMercenaryInfo.ArchiveMercenaryInfo
local ____ArchiveOtherInfo = include("logic.archive.ArchiveOtherInfo")
local ArchiveOtherInfo = ____ArchiveOtherInfo.ArchiveOtherInfo
local ____ArchivePetInfo = include("logic.archive.ArchivePetInfo")
local ArchivePetInfo = ____ArchivePetInfo.ArchivePetInfo
local ____ArchivePlayerInfo = include("logic.archive.ArchivePlayerInfo")
local ArchivePlayerInfo = ____ArchivePlayerInfo.ArchivePlayerInfo
local ____ArchiveShopInfo = include("logic.archive.ArchiveShopInfo")
local ArchiveShopInfo = ____ArchiveShopInfo.ArchiveShopInfo
local ____ArchiveStatInfo = include("logic.archive.ArchiveStatInfo")
local ArchiveStatInfo = ____ArchiveStatInfo.ArchiveStatInfo
local ____ArchiveVersion = include("logic.archive.ArchiveVersion")
local ArchiveVersion = ____ArchiveVersion.ArchiveVersion
local ____ArchiveMatchRank1 = include("logic.archive.match.ArchiveMatchRank1")
local ArchiveMatchRank1 = ____ArchiveMatchRank1.ArchiveMatchRank1
local ____ArchiveMatchRank2 = include("logic.archive.match.ArchiveMatchRank2")
local ArchiveMatchRank2 = ____ArchiveMatchRank2.ArchiveMatchRank2
local ____ArchiveMatchRank3 = include("logic.archive.match.ArchiveMatchRank3")
local ArchiveMatchRank3 = ____ArchiveMatchRank3.ArchiveMatchRank3
local ____ArchiveMatchRankTotal = include("logic.archive.match.ArchiveMatchRankTotal")
local ArchiveMatchRankTotal = ____ArchiveMatchRankTotal.ArchiveMatchRankTotal
local ____ArchiveVipInfo = include("logic.archive.ArchiveVipInfo")
local ArchiveVipInfo = ____ArchiveVipInfo.ArchiveVipInfo
local ____ArchiveKKShopData = include("logic.archive.ArchiveKKShopData")
local ArchiveKKShopData = ____ArchiveKKShopData.ArchiveKKShopData
local ____ArchiveScoreRankInfo = include("logic.archive.ArchiveScoreRankInfo")
local ArchiveScoreRankInfo = ____ArchiveScoreRankInfo.ArchiveScoreRankInfo
local ____ArchiveGoldRank = include("logic.archive.rank.ArchiveGoldRank")
local ArchiveGoldRank = ____ArchiveGoldRank.ArchiveGoldRank
local ____ArchiveDiamondRank = include("logic.archive.rank.ArchiveDiamondRank")
local ArchiveDiamondRank = ____ArchiveDiamondRank.ArchiveDiamondRank
local ____ArchiveLadderTournamentRank1 = include("logic.archive.ladderTournament.ArchiveLadderTournamentRank1")
local ArchiveLadderTournamentRank1 = ____ArchiveLadderTournamentRank1.ArchiveLadderTournamentRank1
local ____ArchiveLadderTournamentRank2 = include("logic.archive.ladderTournament.ArchiveLadderTournamentRank2")
local ArchiveLadderTournamentRank2 = ____ArchiveLadderTournamentRank2.ArchiveLadderTournamentRank2
local ____ArchiveLadderTournamentRank3 = include("logic.archive.ladderTournament.ArchiveLadderTournamentRank3")
local ArchiveLadderTournamentRank3 = ____ArchiveLadderTournamentRank3.ArchiveLadderTournamentRank3
local ____ArchiveDecorationRank = include("logic.archive.rank.ArchiveDecorationRank")
local ArchiveDecorationRank = ____ArchiveDecorationRank.ArchiveDecorationRank
local ____ArchiveSteamData = include("logic.archive.ArchiveSteamData")
local ArchiveSteamData = ____ArchiveSteamData.ArchiveSteamData
--- 存档类命名规则，必须以Archive开头。如 ArchiveXxxxxx
____exports.Archive = __TS__Class()
local Archive = ____exports.Archive
Archive.name = "Archive"
function Archive.prototype.____constructor(self)
    self.archives = {}
    self.isInit = false
    self.isStart = false
    self.isEnd = false
end
function Archive.prototype.init(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if self.isInit == true then
            return ____awaiter_resolve(nil)
        end
        self.isInit = true
        archiveManager:init()
        localRandom:setSeed(math.floor(__TS__New(Date):getTime() / LOCAL.PLAYER_ID))
        self.version = self:register(ArchiveVersion)
        self.playerInfo = self:register(ArchivePlayerInfo)
        self.statInfo = self:register(ArchiveStatInfo)
        self.cheatCount = self:register(ArchiveCheatCount)
        self.otherInfo = self:register(ArchiveOtherInfo)
        self.shopInfo = self:register(ArchiveShopInfo)
        self.expRankInfo = self:register(ArchiveExpRankInfo)
        self.matchRankInfo = {
            self:register(ArchiveMatchRank1),
            self:register(ArchiveMatchRank2),
            self:register(ArchiveMatchRank3)
        }
        self.matchRankTotalInfo = self:register(ArchiveMatchRankTotal)
        self.ladderTournamentRankInfo = {
            self:register(ArchiveLadderTournamentRank1),
            self:register(ArchiveLadderTournamentRank2),
            self:register(ArchiveLadderTournamentRank3)
        }
        self.petInfo = self:register(ArchivePetInfo)
        self.mercenaryInfo = self:register(ArchiveMercenaryInfo)
        self.achieveInfo = self:register(ArchiveAchieveInfo)
        self.vipInfo = self:register(ArchiveVipInfo)
        self.kkShop = self:register(ArchiveKKShopData)
        self.scoreRankInfo = self:register(ArchiveScoreRankInfo)
        self.goldRank = self:register(ArchiveGoldRank)
        self.diamondRank = self:register(ArchiveDiamondRank)
        self.decorationRank = self:register(ArchiveDecorationRank)
        self.steamData = self:register(ArchiveSteamData)
        self:startGame()
        self.version:setVersion("0.0.3")
        local ____require_result_0 = include("logic.archive.manager.KKShopManager")
        local kkShopManager = ____require_result_0.kkShopManager
        kkShopManager:refreshKKShopItems()
        __TS__Await(self:sync())
    end)
end
function Archive.prototype.register(self, clz)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            local clazz = __TS__New(clz)
            local ____self_archives_1 = self.archives
            ____self_archives_1[#____self_archives_1 + 1] = clazz
            clazz:init()
            return true, clazz
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
    return nil
end
function Archive.prototype.startGame(self)
    if self.isStart then
        return
    end
    self.isStart = true
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            do
                local index = 0
                while index < #self.archives do
                    local element = self.archives[index + 1]
                    element:startGame()
                    index = index + 1
                end
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function Archive.prototype.endGame(self)
    if self.isEnd then
        return
    end
    self.isEnd = true
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            do
                local index = 0
                while index < #self.archives do
                    local element = self.archives[index + 1]
                    element:endGame()
                    index = index + 1
                end
            end
            self:afterEndGame()
            self:sync()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function Archive.prototype.afterEndGame(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            do
                local index = 0
                while index < #self.archives do
                    local element = self.archives[index + 1]
                    element:afterEndGame()
                    index = index + 1
                end
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function Archive.prototype.clear(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            do
                local index = 0
                while index < #self.archives do
                    local element = self.archives[index + 1]
                    element:clear()
                    index = index + 1
                end
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function Archive.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            local promise = {}
            do
                local index = 0
                while index < #self.archives do
                    local element = self.archives[index + 1]
                    promise[#promise + 1] = element:sync()
                    index = index + 1
                end
            end
            for ____, ppp in ipairs(promise) do
                __TS__Await(ppp)
            end
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, ____error)
                console:error(____error)
            end
        ))
    end)
end
function Archive.prototype.win(self)
end
function Archive.prototype.lose(self)
end
function Archive.prototype.escape(self)
    do
        local index = 0
        while index < #self.archives do
            local element = self.archives[index + 1]
            element:escape()
            index = index + 1
        end
    end
end
__TS__SetDescriptor(
    Archive.prototype,
    "petData",
    {get = function(self)
        return self.petInfo.data
    end},
    true
)
__TS__SetDescriptor(
    Archive.prototype,
    "playerData",
    {get = function(self)
        return self.playerInfo.data
    end},
    true
)
__TS__SetDescriptor(
    Archive.prototype,
    "statData",
    {get = function(self)
        return self.statInfo.data
    end},
    true
)
__TS__SetDescriptor(
    Archive.prototype,
    "achieveData",
    {get = function(self)
        return self.achieveInfo.data
    end},
    true
)
__TS__SetDescriptor(
    Archive.prototype,
    "shopData",
    {get = function(self)
        return self.shopInfo.data
    end},
    true
)
__TS__SetDescriptor(
    Archive.prototype,
    "mercenaryData",
    {get = function(self)
        return self.mercenaryInfo.data
    end},
    true
)
____exports.archive = __TS__New(____exports.Archive)
return ____exports
