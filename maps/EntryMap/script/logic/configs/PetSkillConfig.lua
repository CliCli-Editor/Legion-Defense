local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 15,["20"] = 15,["21"] = 15,["23"] = 21,["24"] = 26,["25"] = 31,["26"] = 36,["27"] = 41,["28"] = 46,["29"] = 51,["30"] = 56,["31"] = 61,["32"] = 66,["33"] = 15,["34"] = 70,["35"] = 71,["36"] = 72,["37"] = 89,["38"] = 91,["39"] = 92,["40"] = 92,["41"] = 92,["42"] = 92,["43"] = 92,["44"] = 93,["45"] = 94,["47"] = 95,["48"] = 95,["49"] = 96,["50"] = 97,["51"] = 98,["52"] = 99,["54"] = 102,["55"] = 103,["57"] = 105,["59"] = 95,["63"] = 110,["64"] = 112,["66"] = 91});
local ____exports = {}
local fields = {
    "id",
    "name",
    "des",
    "quality",
    "icon",
    "skillId",
    "projectile",
    "targetEffect",
    "ban",
    "isDefault"
}
____exports.PetSkillConfig = __TS__Class()
local PetSkillConfig = ____exports.PetSkillConfig
PetSkillConfig.name = "PetSkillConfig"
function PetSkillConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.quality = 0
    self.icon = 0
    self.skillId = 0
    self.projectile = 0
    self.targetEffect = 0
    self.ban = 0
    self.isDefault = 0
end
____exports.petSkillConfigList = {}
____exports.petSkillConfigMap = {}
____exports.map = ____exports.petSkillConfigMap
local encryptModelData = "j+LpOijd+b+bQXEPQrqXzMqQ3NcczLs1b83VAtx+45nzOuzC1PbsTp9NBkFZllnC0HqThb1oSVPrRYISvKMfBB5Rv572DeGs+5BB6ZeQ5rWtdkKKGEvLR7zJyx2ZNrSn71KntJGoDtNeUPjQqjOxnLqBJtIzieg5R0ezxKVDEDr/rrHQdr3O+9Vv+oNM154XB1rxc/yhO7zhiKjuT62R8tn2BHWWZXN7evWqKElKFOclsRX9cXVLNZy5xfqsQKAgfC8u7jHjUNJr4nlIFQi6BCT7bKIEaniy3mYHhfgoVa2HOdmTD6ihkxL3YOen2Fft7gPymgNt6ay3xYQ0QE9cMkrnJhWz9YUKsuaJI0ChIz149AzzR1XZ2jArOFRfrBtLakC2NLbO4wvwfH174jbIL9CUqBQJ1+d17LLStZW8cUJyGqGSKMRe5ikWvnuRVhftTlZnnhNNBWaj7v9qFkkoTLonINBeZkUCXR+/qNeQNObnO0DdloTFxyZSg/hSBSha0WRpWbXLxWVNjZYdm5SS43egnBaCsOn1BunYq8nOLiKSh4KuxwbXT7M/UmdZ1wEsbB6HgUIBCYGuDj7EIurnq3Kmc+dkwQ/iZ/MP6x+o3AzkxmHuVkrAjkc+vzyZdPSj1Y5O2ppYgID+MeYQKyDwrZnY+BxNFVSSF92kG84Uv1S7rwxodhFQ0TR61FoYdQURUaI0RIDm3zyPnRpSAf7dIxLMtub2VsHWmuhStoN31AuqfMKXGIFiAo/R/zEwIlVP7uvCVgYLr0A5z+q/7Jc6dhQXfhMSJxRdcXXWfmfsW8iRil7y05R9CjImtV2X9YNoo/yj2cqPrtLgOMI4vp56kg7PWq4uXsj3QZkRBeOiqM4HBZE1pjo/zf7mizEwcPnmcQ/NS/eZY1NGBJBAH8HqnzFIB1YUEY4/QIMDlfZcCE6GKalKDD11BO2aa1Wi0OaghK3uaRHpYMjoLMFJ0l3cUObTY5/Tf3+39uy9NMIgjEimxy3PYrv/dPWmXN6Lqw16w/2dvUIxEovF3vvdwX0VAELfLv1EZOBmVZknKQKUrt7+kCG/BwLYMB8a0CEsOB/uxWfKDUYefklNAeT8+LFNGQUd1pU8srlkvinjEXNXxAm0FVD0uz23ZCq1CmBtmTCgqupaTHPzgkRALBZsPl6iNR6DYMs6zBGArjMSes4/a88lHkkCgRkTgeDQ6ZjtxBfaAVvvWkE3uEhCroX10TqcQ/z+oVWUJTkm7nqgQ5L7b8UFbH7+mktnOM70s95BiRnZvLFJzHacYbLVjAfQHFXXaYXsnUeezgrGGZcfW73LB3dJOuZt63ctThqjQ3bURlH1ab0ceghHMvppDrQqaNPKnq6RigJDfJQSu5KScu1mqfxHj3rPC28cAXEmK8Bw9gat09EvEPR020WCF1GOJORt7/Ndsv31R8Al4Ra6epAilo0Ln8PziWG7A3jbZUQKoPLC"
function ____exports.PetSkillConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "petskilliWu%C6F0WV&UcD@0#v^RmZz)",
        string.sub("petskill&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PetSkillConfig)
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
        local ____exports_petSkillConfigList_0 = ____exports.petSkillConfigList
        ____exports_petSkillConfigList_0[#____exports_petSkillConfigList_0 + 1] = obj
        ____exports.petSkillConfigMap[obj.id] = obj
    end
end
return ____exports
