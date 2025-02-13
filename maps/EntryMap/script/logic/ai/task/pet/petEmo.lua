local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["13"] = 5,["14"] = 5,["15"] = 8,["17"] = 13,["18"] = 14,["19"] = 14,["20"] = 14,["21"] = 15,["22"] = 15,["23"] = 16,["24"] = 18,["25"] = 19,["27"] = 22,["28"] = 24,["29"] = 27,["30"] = 14,["31"] = 14,["32"] = 13});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____5C1D_8BD5_6267_884C = ____BehaveTree["尝试执行"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____PetController = include("logic.controllers.PetController")
local petController = ____PetController.petController
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local emojiList = {"1", "2", "3", "4"}
--- 小鳄鱼表情
function ____exports.petEmo(self, params)
    return _____5C1D_8BD5_6267_884C(
        nil,
        function()
            local ____opt_0 = datas.players[self.playerId]:getSingle(InGameArchiveData)
            local petData = ____opt_0 and ____opt_0.petInfo
            local id = petData.cur_emoji[random:randomList(emojiList)]
            if id == nil then
                return false
            end
            petController:playEmo(self.playerId, id)
            self:log(function() return "小宠物发表情" end)
            return true
        end
    )
end
return ____exports
