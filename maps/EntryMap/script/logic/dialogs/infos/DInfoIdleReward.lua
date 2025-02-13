local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["25"] = 7,["26"] = 8,["27"] = 18,["28"] = 7,["29"] = 20,["30"] = 21,["31"] = 22,["32"] = 21,["33"] = 20,["34"] = 26,["36"] = 28,["37"] = 29,["38"] = 29,["39"] = 29,["40"] = 29,["41"] = 30,["42"] = 30,["44"] = 31,["45"] = 32,["46"] = 33,["47"] = 33,["48"] = 33,["49"] = 33,["50"] = 29,["51"] = 29,["52"] = 36,["53"] = 36,["54"] = 36,["55"] = 36,["56"] = 37,["57"] = 38,["58"] = 39,["59"] = 40,["60"] = 41,["62"] = 43,["64"] = 36,["65"] = 36,["66"] = 47,["67"] = 47,["68"] = 47,["69"] = 47,["70"] = 48,["71"] = 48,["72"] = 48,["73"] = 48,["74"] = 49,["75"] = 47,["76"] = 47,["77"] = 52,["78"] = 52,["79"] = 52,["80"] = 52,["81"] = 53,["82"] = 54,["83"] = 55,["84"] = 56,["85"] = 57,["87"] = 59,["89"] = 52,["90"] = 52,["91"] = 64,["92"] = 64,["93"] = 64,["94"] = 64,["95"] = 65,["96"] = 66,["97"] = 67,["98"] = 64,["99"] = 64,["101"] = 26});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindPos = ____bind.bindPos
local bindText = ____bind.bindText
local ____DateUtils = include("framework.utils.DateUtils")
local dateUtils = ____DateUtils.dateUtils
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____IdleRewardManager = include("logic.archive.manager.IdleRewardManager")
local idleRewardManager = ____IdleRewardManager.idleRewardManager
____exports.DInfoIdleReward = __TS__Class()
local DInfoIdleReward = ____exports.DInfoIdleReward
DInfoIdleReward.name = "DInfoIdleReward"
__TS__ClassExtends(DInfoIdleReward, Dialog)
function DInfoIdleReward.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DInfoIdleReward.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DInfoIdleReward.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ui = self:getUI("bg")
        bindPos(
            self,
            "bg",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                local w = ui:get_real_width()
                local windowWidth = y3.ui.get_window_width()
                return {
                    x = math.min(windowWidth - w / 2, self.data.params.x),
                    y = self.data.params.y
                }
            end
        )
        bindText(
            self,
            "bg.tip",
            function()
                local efficiency = idleRewardManager:getEfficiency()
                local token = idleRewardManager.data.battlepassEfficiency
                local gold = idleRewardManager:getEfficiencyGold()
                if gold > 0 then
                    return i18n:format("每小时获得#10e6db钻石*${efficiency};金币*${gold}#E（游戏中不计算时间）", {efficiency = efficiency, gold = gold})
                else
                    return i18n:format("每小时获得#10e6db钻石*${efficiency}#E（游戏中不计算时间）", {efficiency = efficiency})
                end
            end
        )
        bindText(
            self,
            "bg.time",
            function()
                local time = dateUtils:timeStampFormatToHHMMSS(
                    idleRewardManager:getSecond(),
                    1
                )
                return ("本次在线时间：#Y" .. time) .. "#E"
            end
        )
        bindText(
            self,
            "bg.value",
            function()
                local total = idleRewardManager:getTotalReward()
                local totalGold = idleRewardManager:getTotalRewardGold()
                local gold = idleRewardManager:getEfficiencyGold()
                if gold > 0 then
                    return i18n:format("本次在线收益：#10e6db钻石*${total};金币*${totalGold}", {total = total, totalGold = totalGold})
                else
                    return i18n:format("本次在线收益：#10e6db钻石*${total}", {total = total})
                end
            end
        )
        bindText(
            self,
            "bg.tip2",
            function()
                local now = idleRewardManager:getWeekDiamonds()
                local total = idleRewardManager:getWeekDiamondsLimit()
                return i18n:format("钻石获得上限：#63ef21${now}/${total}#E（和#fe9824【每周对局获取钻石上限】#E共用上限）", {now = now, total = total})
            end
        )
    end)
end
return ____exports
