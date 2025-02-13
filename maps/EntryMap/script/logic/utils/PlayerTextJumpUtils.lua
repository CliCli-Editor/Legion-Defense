local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 4,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 4,["22"] = 4,["23"] = 4,["24"] = 5,["25"] = 5,["26"] = 7,["27"] = 9,["28"] = 11,["29"] = 12,["30"] = 13,["31"] = 14,["32"] = 14,["33"] = 15,["34"] = 14,["35"] = 16,["36"] = 18,["37"] = 19,["38"] = 20,["39"] = 21,["41"] = 23,["44"] = 14,["45"] = 14,["46"] = 14,["47"] = 11,["48"] = 29,["49"] = 30,["50"] = 31,["51"] = 32,["52"] = 33,["53"] = 35,["54"] = 37,["55"] = 38,["56"] = 40,["57"] = 42,["58"] = 43,["59"] = 44,["62"] = 55,["65"] = 48,["66"] = 49,["67"] = 50,["68"] = 51,["69"] = 50,["76"] = 58,["77"] = 59,["79"] = 7});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____SyncCounter = include("framework.data.SyncCounter")
local syncData = ____SyncCounter.syncData
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
local ____Property = include("logic.models.Property")
local _____57FA_7840_8840_91CF_4E0A_9650 = ____Property["基础血量上限"]
local _____5927_62DB_4F24_5BB3_589E_52A0 = ____Property["大招伤害增加"]
local _____6062_590D_7CFB_6570 = ____Property["恢复系数"]
local _____653B_51FB = ____Property["攻击"]
local _____653B_51FB_901F_5EA6 = ____Property["攻击速度"]
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____6BCF_79D2_56DE_84DD = ____Property["每秒回蓝"]
local _____6BD2_7CFB_6570 = ____Property["毒系数"]
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local _____6CD5_672F_9632_5FA1 = ____Property["法术防御"]
local _____7269_7406_9632_5FA1 = ____Property["物理防御"]
local _____95EA_907F_7387 = ____Property["闪避率"]
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
function ____exports.textJump(self, playerId, callback)
    local watchList = {}
    local function watchAttrChange(____, ____type)
        local unitData = datas.players[playerId]:getSingle(UnitData)
        local entity = unitData.entity
        watchList[#watchList + 1] = vue.watch(
            function()
                return entity:p(____type)
            end,
            function(____, newVal, oldVal)
                if oldVal ~= nil and newVal > oldVal then
                    local diff = newVal - oldVal
                    if syncData.inSync > 0 then
                        effectController:showAttrUpEffect(playerId, ____type, diff)
                    else
                        effectController.showAttrUpEffect:execute(playerId, ____type, diff)
                    end
                end
            end,
            {flush = "sync"}
        )
    end
    watchAttrChange(nil, _____57FA_7840_8840_91CF_4E0A_9650)
    watchAttrChange(nil, _____653B_51FB)
    watchAttrChange(nil, _____66B4_51FB_7387)
    watchAttrChange(nil, _____653B_51FB_901F_5EA6)
    watchAttrChange(nil, _____95EA_907F_7387)
    watchAttrChange(nil, _____6BCF_79D2_56DE_84DD)
    watchAttrChange(nil, _____6BD2_7CFB_6570)
    watchAttrChange(nil, _____6062_590D_7CFB_6570)
    watchAttrChange(nil, _____5927_62DB_4F24_5BB3_589E_52A0)
    watchAttrChange(nil, _____6CD5_672F_653B_51FB)
    watchAttrChange(nil, _____7269_7406_9632_5FA1)
    watchAttrChange(nil, _____6CD5_672F_9632_5FA1)
    do
        local function ____catch(e)
            console:error(e)
        end
        local ____try, ____hasReturned = pcall(function()
            local r = callback(nil)
            if r ~= nil and type(r) == "table" and r.catch ~= nil then
                r:catch(function(____, e)
                    console:error(e)
                end)
            end
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
    for ____, w in ipairs(watchList) do
        w(nil)
    end
end
return ____exports
