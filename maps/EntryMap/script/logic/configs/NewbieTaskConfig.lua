local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 17,["25"] = 17,["26"] = 17,["28"] = 22,["29"] = 27,["30"] = 33,["31"] = 40,["32"] = 45,["33"] = 50,["34"] = 55,["35"] = 60,["36"] = 65,["37"] = 67,["38"] = 85,["39"] = 90,["40"] = 17,["45"] = 72,["46"] = 73,["47"] = 74,["49"] = 76,["50"] = 76,["51"] = 76,["52"] = 76,["55"] = 79,["59"] = 94,["60"] = 95,["61"] = 96,["62"] = 98,["63"] = 114,["64"] = 116,["65"] = 117,["66"] = 117,["67"] = 117,["68"] = 117,["69"] = 117,["70"] = 118,["71"] = 119,["73"] = 120,["74"] = 120,["75"] = 121,["76"] = 122,["77"] = 123,["78"] = 124,["80"] = 127,["81"] = 128,["83"] = 130,["85"] = 120,["89"] = 135,["90"] = 137,["91"] = 140,["92"] = 142,["93"] = 143,["94"] = 144,["95"] = 144,["96"] = 144,["98"] = 146,["101"] = 116});
local ____exports = {}
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "group",
    "taskLevel",
    "taskType",
    "taskName",
    "taskDes",
    "condition1",
    "conditionArg1",
    "_propId",
    "num",
    "rewardDes"
}
____exports.NewbieTaskConfig = __TS__Class()
local NewbieTaskConfig = ____exports.NewbieTaskConfig
NewbieTaskConfig.name = "NewbieTaskConfig"
function NewbieTaskConfig.prototype.____constructor(self)
    self.id = 0
    self.group = 0
    self.taskLevel = 0
    self.taskType = 0
    self.taskName = vue.ref("")
    self.taskDes = vue.ref("")
    self.condition1 = 0
    self.conditionArg1 = 0
    self._propId = {}
    self._fkpropId = nil
    self.num = {}
    self.rewardDes = vue.ref("")
end
__TS__SetDescriptor(
    NewbieTaskConfig.prototype,
    "propId",
    {get = function(self)
        if self._fkpropId == nil then
            if not self._propId then
                self._fkpropId = {}
            else
                self._fkpropId = __TS__ArrayMap(
                    self._propId,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fkpropId
    end},
    true
)
____exports.newbieTaskConfigList = {}
____exports.newbieTaskConfigMap = {}
____exports.map = ____exports.newbieTaskConfigMap
____exports.newbieTaskConfigMap_group = {}
local encryptModelData = "QQOoo0LoEOPbMh7yAEtfI2w51mPspDiIJxb9ZiXZpALJzvVMxRWFyAPFiXEJKq5muXwkdKWa3cgDWexKle6HyBLMzHmLJRNNRfCYKcoYvWO7uztpny7dWXdV7BuCybCint6cq6NnXtaa1JppReLPJsi+bxcKx/b0QbYO59gcYmdHHnmcr2SJHLphv3Cn2WkWU1rTaGyvG3fyEsegg2gP3iyxjEigBMjbe4H6IMsB/XOdexw0VK+CFfstuqawBDDl5hFsLfsfXMKkUH7PZxYlzwK0JsSyVuZt8WlN3scGW3CpBbCpPU8hPpV5T1j+n3iCmm/hNqUbqNoQ5KefbQVp+9FLmeBH6aKGU6S/y7wbvk9ToS22D57Cphvn5ZqArjOGTLFaMhtgeeTBFl/FD8NUSwITcdIrUIAIIXTq9l2CHR+BqDDhEN4B6x6oeITxD2pDOXdsvnOIC6u7aWxSf2teGhUolJ3hcRzSJurw2aKTIDeJRuELF7iPoiCY35O/pShw/Nwi8dzZLMOUTA/bjqEHWn8TxJ0HQ4M1ZmstsgvKi87qwn0o1kD3Sw5LYqYAGYEfPWCgdgA7+M3ZfqcVrgoF8ruK95oYNyDPbYLKPkP/FiUGzud/aPp/DeRoi4Dq770gjP0ovhS076amykmdMfDE0AnEw/ztJsvLPRE2ZjQfy/TbEfxB5aoluGjHacPQuIYXNnnaZsBcZ/Bkg+lwOOLhTilv5K22DYZNQaVNKjZgI6Kfo+7XzSdYMs/blXSzG+v2mRogUlyvEDwP74TCtEunR7qO4Q3GABIld37utFDVb0H2+QMfxF9ubKe22WlXI0cTPF9wyetsm6kEMnrU8tbnrmwwGy9Y48VJ9XPtm85dx6oePrNHlpu9OF2dBc2MFO07RxBpmcKlSKlusb/8vcQ+Om2UVIreX/uMlWDYO9tzyZ/dAORX2OrZ85gWe49hwFsarj9fTTABbMAS5DGCGZKlOWCbxoNCESwwfVWYnPMqUQz1xqRoqrImP4jNf9TiMpyigeafwYbEMbBO6lc1g9E89bTzBnKoInG615FzqpQ+cvrd29mMViyP9Dw+T1tE9RzJOE24Yl7QvQRa7/LJwpLu92yHVEApx6MgIdGGWkOinAzUGk9ua1KX8zTSPclAkyLiPKn1GsrE2Y5O9Ni31/ddjK3mumn4XB8uyTtY204Efbncp8vvc+q7isi8/dPjRYShbVoSnf1yn2Sve/D1PC35KfRR2DLCQW04ANe7mz6UreRduq0FDi0x1IeF7cw2iZhPuo3yxQOka+azEY9IpfaaOWNptD4q7QjIvcEOyPvv4xvQaP0wBLZeup/c63hf0v8F"
function ____exports.NewbieTaskConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "newbietaskiWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("newbietask&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.NewbieTaskConfig)
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
        local ____exports_newbieTaskConfigList_0 = ____exports.newbieTaskConfigList
        ____exports_newbieTaskConfigList_0[#____exports_newbieTaskConfigList_0 + 1] = obj
        ____exports.newbieTaskConfigMap[obj.id] = obj
        if obj.group ~= nil and obj.group ~= nil then
            local list = ____exports.newbieTaskConfigMap_group[obj.group]
            if not list then
                local ____temp_1 = {}
                ____exports.newbieTaskConfigMap_group[obj.group] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
