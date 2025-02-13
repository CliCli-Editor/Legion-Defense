local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayFlat = ____lualib.__TS__ArrayFlat
local __TS__ArrayConcat = ____lualib.__TS__ArrayConcat
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 9,["30"] = 9,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 13,["36"] = 13,["37"] = 13,["39"] = 15,["40"] = 13,["41"] = 20,["42"] = 21,["43"] = 22,["45"] = 24,["46"] = 24,["47"] = 25,["48"] = 26,["49"] = 27,["50"] = 28,["51"] = 28,["52"] = 28,["53"] = 28,["54"] = 29,["55"] = 29,["56"] = 28,["57"] = 28,["58"] = 31,["59"] = 31,["60"] = 31,["61"] = 31,["62"] = 32,["63"] = 33,["64"] = 33,["65"] = 33,["66"] = 33,["67"] = 34,["68"] = 35,["70"] = 31,["71"] = 31,["72"] = 24,["75"] = 20,["76"] = 41,["77"] = 42,["78"] = 43,["79"] = 41,["80"] = 49,["81"] = 50,["82"] = 51,["84"] = 53,["85"] = 54,["86"] = 56,["87"] = 56,["88"] = 56,["89"] = 56,["90"] = 56,["91"] = 56,["92"] = 56,["93"] = 56,["94"] = 56,["95"] = 56,["96"] = 56,["97"] = 56,["98"] = 59,["99"] = 60,["100"] = 61,["101"] = 62,["102"] = 62,["103"] = 62,["104"] = 62,["105"] = 62,["107"] = 64,["108"] = 65,["109"] = 66,["110"] = 67,["111"] = 67,["112"] = 67,["113"] = 67,["114"] = 67,["115"] = 67,["116"] = 67,["117"] = 67,["118"] = 67,["119"] = 67,["120"] = 67,["122"] = 70,["123"] = 71,["124"] = 72,["126"] = 49,["127"] = 77,["128"] = 78,["129"] = 80,["131"] = 80,["132"] = 80,["133"] = 80,["134"] = 80,["135"] = 80,["136"] = 80,["137"] = 80,["138"] = 80,["139"] = 80,["140"] = 80,["142"] = 80,["143"] = 82,["144"] = 83,["145"] = 84,["146"] = 86,["147"] = 87,["148"] = 87,["149"] = 87,["150"] = 87,["151"] = 88,["153"] = 89,["154"] = 89,["155"] = 91,["156"] = 92,["158"] = 94,["159"] = 89,["162"] = 98,["163"] = 99,["164"] = 102,["165"] = 102,["166"] = 102,["167"] = 102,["168"] = 103,["169"] = 104,["171"] = 106,["172"] = 107,["173"] = 108,["174"] = 109,["175"] = 111,["176"] = 112,["177"] = 113,["178"] = 114,["180"] = 116,["182"] = 102,["183"] = 102,["184"] = 121,["186"] = 123,["187"] = 127,["188"] = 128,["189"] = 129,["190"] = 130,["191"] = 131,["192"] = 133,["194"] = 135,["196"] = 137,["198"] = 143,["199"] = 143,["200"] = 143,["201"] = 145,["202"] = 146,["203"] = 147,["204"] = 147,["205"] = 147,["206"] = 147,["207"] = 147,["208"] = 147,["209"] = 148,["210"] = 149,["211"] = 150,["212"] = 150,["213"] = 150,["214"] = 150,["215"] = 150,["216"] = 150,["217"] = 150,["218"] = 150,["219"] = 150,["220"] = 150,["221"] = 151,["222"] = 151,["223"] = 151,["224"] = 152,["225"] = 151,["226"] = 151,["227"] = 147,["228"] = 147,["230"] = 156,["231"] = 156,["232"] = 156,["233"] = 157,["234"] = 158,["235"] = 159,["236"] = 160,["238"] = 156,["239"] = 156,["240"] = 143,["241"] = 143,["242"] = 77,["243"] = 168});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____BigBlessConfig = include("logic.configs.BigBlessConfig")
local bigBlessConfigList = ____BigBlessConfig.bigBlessConfigList
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameStatus = ____GameData.GameStatus
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____EffectUtils = include("logic.utils.EffectUtils")
local EffectUtils = ____EffectUtils.EffectUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
____exports.BigBlessController = __TS__Class()
local BigBlessController = ____exports.BigBlessController
BigBlessController.name = "BigBlessController"
function BigBlessController.prototype.____constructor(self)
    self.eventList = {}
end
function BigBlessController.prototype.init(self)
    local bigBlessData = writeableDatas.global:getOrCreateSingle(BigBlessData)
    bigBlessData.canSelList = random:randomListNum(bigBlessConfigList, 3)
    do
        local i = 0
        while i < 3 do
            local index = i
            local areaId = mapConfig["大祝福选择区域"][index + 1]
            local area = y3.area.get_circle_by_res_id(areaId)
            local ____self_eventList_1 = self.eventList
            ____self_eventList_1[#____self_eventList_1 + 1] = area:event(
                "区域-进入",
                function(tr, data)
                    local ____bigBlessData_voteList_index_0 = bigBlessData.voteList[index + 1]
                    ____bigBlessData_voteList_index_0[#____bigBlessData_voteList_index_0 + 1] = data.unit:get_owner_player().id
                end
            )
            local ____self_eventList_2 = self.eventList
            ____self_eventList_2[#____self_eventList_2 + 1] = area:event(
                "区域-离开",
                function(tr, data)
                    local list = bigBlessData.voteList[index + 1]
                    local pos = __TS__ArrayIndexOf(
                        list,
                        data.unit:get_owner_player().id
                    )
                    if pos ~= -1 then
                        __TS__ArraySplice(list, pos, 1)
                    end
                end
            )
            i = i + 1
        end
    end
end
function BigBlessController.prototype.sendToPos(self, playerId, pos)
    local center = y3.area.get_circle_by_res_id(mapConfig["大祝福选择区域"][pos + 1]):get_center_point()
    petController:blink(playerId, center)
end
function BigBlessController.prototype.endSel(self)
    for ____, e in ipairs(self.eventList) do
        e:remove()
    end
    self.eventList = {}
    local bigBlessData = writeableDatas.global:getOrCreateSingle(BigBlessData)
    local sel = random:randomWeight(
        __TS__ArrayFilter(
            __TS__ArrayMap(
                bigBlessData.voteList,
                function(____, data, index)
                    return {data = data, index = index}
                end
            ),
            function(____, a) return #a.data > 0 end
        ),
        function(____, a) return #a.data end
    )
    if sel == nil then
        bigBlessData.bigBless = random:randomList(bigBlessData.canSelList)
        bigBlessData.bigBlessIndex = __TS__ArrayIndexOf(bigBlessData.canSelList, bigBlessData.bigBless)
        local ____console_log_8 = console.log
        local ____opt_3 = bigBlessData.bigBless
        local ____temp_7 = ____opt_3 and ____opt_3.id
        local ____opt_5 = bigBlessData.bigBless
        ____console_log_8(console, "投票结果：没有任何人投票，随机选择一个", ____temp_7, ____opt_5 and ____opt_5.name)
    else
        bigBlessData.bigBless = bigBlessData.canSelList[sel.index + 1]
        bigBlessData.bigBlessIndex = sel.index
        bigBlessData.voteWinOut = sel.data
        local ____console_log_14 = console.log
        local ____opt_9 = bigBlessData.bigBless
        local ____temp_13 = ____opt_9 and ____opt_9.id
        local ____opt_11 = bigBlessData.bigBless
        ____console_log_14(
            console,
            "投票结果：",
            ____temp_13,
            ____opt_11 and ____opt_11.name,
            table.concat(bigBlessData.voteWinOut, ",")
        )
    end
    for ____, playerId in ipairs(playerIdList) do
        local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
        petData.y3Unit:stop()
    end
end
function BigBlessController.prototype.playEndAnim(self)
    local bigBlessData = writeableDatas.global:getOrCreateSingle(BigBlessData)
    local ____opt_15 = bigBlessData and bigBlessData.voteList
    if ____opt_15 ~= nil then
        local ____opt_16 = bigBlessData and bigBlessData.voteList
        ____opt_15 = __TS__ArrayFilter(
            ____opt_16 and __TS__ArrayMap(
                bigBlessData and bigBlessData.voteList,
                function(____, data, index)
                    return {data = data, index = index}
                end
            ),
            function(____, a) return #a.data > 0 end
        )
    end
    local posList = ____opt_15
    local previousPetData = nil
    local waitTime = 0
    if posList ~= nil and #posList > 1 then
        local animList = {}
        local originList = __TS__ArrayFlat(__TS__ArrayMap(
            posList,
            function(____, a) return a.data end
        ))
        local list = __TS__ArrayConcat(originList)
        do
            local i = 0
            while i < 20 do
                if #list == 0 then
                    list = __TS__ArrayConcat(originList)
                end
                animList[#animList + 1] = random:randomPop(list)
                i = i + 1
            end
        end
        local endPos = bigBlessData.voteList[bigBlessData.bigBlessIndex + 1]
        animList[#animList + 1] = random:randomList(endPos)
        y3.ltimer.loop_count(
            0.2,
            #animList,
            function(timer, count)
                if previousPetData ~= nil then
                    previousPetData.selBigBlessArrow = false
                end
                local playerId = animList[count]
                local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
                petData.selBigBlessArrow = true
                previousPetData = petData
                if __TS__ArrayIndexOf(bigBlessData.voteList[1], playerId) ~= -1 then
                    bigBlessData.bigBlessIndexAnim = 0
                elseif __TS__ArrayIndexOf(bigBlessData.voteList[2], playerId) ~= -1 then
                    bigBlessData.bigBlessIndexAnim = 1
                else
                    bigBlessData.bigBlessIndexAnim = 2
                end
            end
        )
        waitTime = #animList * 0.2
    else
        if posList ~= nil and #posList == 1 then
            local endPos = bigBlessData.voteList[bigBlessData.bigBlessIndex + 1]
            local playerId = random:randomList(endPos)
            local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
            petData.selBigBlessArrow = true
            previousPetData = petData
            waitTime = 1
        else
            waitTime = 0.5
        end
        bigBlessData.bigBlessIndexAnim = bigBlessData.bigBlessIndex
    end
    y3.ltimer.wait(
        waitTime,
        function()
            local i = 0
            for ____, playerId in ipairs(playerIdList) do
                local ____y3_ltimer_wait_26 = y3.ltimer.wait
                local ____i_25 = i
                i = ____i_25 + 1
                ____y3_ltimer_wait_26(
                    0.2 * ____i_25 + 0.3 * random:random(),
                    function()
                        local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
                        local pos = petData.y3Unit:get_point()
                        EffectUtils:add(
                            134261147,
                            pos,
                            90,
                            1.5,
                            2,
                            0,
                            "",
                            0
                        )
                        y3.ltimer.wait(
                            1,
                            function()
                                petController:backToOriginByPlayerId(playerId, false)
                            end
                        )
                    end
                )
            end
            y3.ltimer.wait(
                0.2 * #playerIdList + 2,
                function()
                    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
                    gameData.gameStatus = GameStatus["选人阶段"]
                    if previousPetData ~= nil then
                        previousPetData.selBigBlessArrow = false
                    end
                end
            )
        end
    )
end
____exports.bigBlessController = make(nil, ____exports.BigBlessController)
return ____exports
