local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 15,["15"] = 29,["16"] = 30,["17"] = 31,["18"] = 49,["19"] = 51,["20"] = 52,["21"] = 52,["22"] = 52,["23"] = 52,["24"] = 52,["25"] = 53,["26"] = 54,["28"] = 55,["29"] = 55,["30"] = 56,["31"] = 57,["32"] = 58,["33"] = 59,["35"] = 62,["36"] = 63,["38"] = 65,["40"] = 55,["44"] = 70,["45"] = 72,["47"] = 51});
local ____exports = {}
local fields = {"id", "names"}
____exports.KKPlayerNameConfig = __TS__Class()
local KKPlayerNameConfig = ____exports.KKPlayerNameConfig
KKPlayerNameConfig.name = "KKPlayerNameConfig"
function KKPlayerNameConfig.prototype.____constructor(self)
    self.id = 0
    self.names = {}
end
____exports.kKPlayerNameConfigList = {}
____exports.kKPlayerNameConfigMap = {}
____exports.map = ____exports.kKPlayerNameConfigMap
local encryptModelData = "ki1bww+dlNviuzNBWBXgdW6HD+6LDG3zT/pspkp/I0mZgFqeRlSB21cLwiM1H1qbnHjOGZbO2VqvUGNLWgvss60qosdycEWxMDebYq1+p4odZxptU+V76xRTXZxunBeVT1QfvqpOwsrW/piH3ZiIm8Owll09dr3nAl0iACZekLAAFC/Zk1cDSDAJbWGtrgn/YdW7Rp7AlV8O62Sw3tFCHM5EyeJ8uzzB1b3yaD2hKxQkiaYUComC2PQstGbNuWZJ57uUex6hZbrLudwNSAwPZxQK7LWX7y4o1N2Didg3M9DmOqnWQ572fkM31E0EdZEGLrakLXLP3hgz6gKBn5cI86dfNlCACZ4cs0Wvuuy+K2YTz0FNF1ank+X7UJBu10EpfBWaYmcJR3xtc0xytXJgWYuuS/TDOaCpSsM/BlVNh+6v9sFr9WT2dSonPBoLsDh7U42nuIdSaIjHXxd/amsaXHwiVMbBrVxc0lE+0B/+kh/bXCRnMiuyjAgS7PEyKEgvsfI9ouK51xXcj0efxVGjlrs4dwzQELO6QaWP/yBH8A49Fb9/hQQvPikUBIQ8BaqvTs23acO0oDK8t9NtHM7gfzMcNw08MATFZ6GXBIoNP8klOz+jEYjGWiuHbIS2tg/IQ5HKilUJdPEHEfu6dndGbsk7JlLXWN0db0WqAU6gGK+Gw6uW6C+LBBAANqHNmC/QqF37GnBUSCIhIPb87hVU+1rDYzbt20c6suWtgzppifYe2yO9Cq1cQkXv9Bbs6AwdgzHSQede2vatyvzp/28vPTk5Mg8NFugBXbkw51b2D1GUHLIom6PUZ1+5q+I5HqIHtWkkPWixvkkjhv4pOK97BAOqUROrCpHcSFOFMeKT+1ps9OGrc2BuWTdiW3NCzWSYDqDGUa9Ql9YOsxENM7hFj3jZH0k/PfcU6MBhuhZkRYc6aJs0pZsLT1PiSBj3TTgMsTdeVUaNTLKZyCiKyHM6Y6rTqppRWOj3bR8dp671JZJdhFt+Iwg34i7aS+gJIjDNx5AMQpgN5eXsXF9beKauigF6ix9gBnnYzZqtFiDneY2pMrZg9FuPZP1aGR6VFgQoM7odZojh1pSP0w+SyCpkhHGuopMzEOvVKxlu2ZZj/Jf+TqF/7OIZD5vdjeL4NYUOMlAx0FwjrYPsyOU7luViRAZjf4LdosrYscpUzpP4VQPsnkkzW14WrENvcaq38s7RYUhGFP+WimCkN9WAFcsbOGMcm+I539k+fBsABq3IpmBbY1Oyr4mSjZix9khjuvgcrJ7+/yfWDO9ni17++Dpix4jm2LTHOeahm5uBmQJZdvp2k7l7uC1YB+xJccz6dk1M68BVpwyRFk3FTAptQ9WoX+27FJEdLEvLpt6AgFmDOzeoyVFwqVCNWO2aTEm3CbGEY9DGJHGI6+u4RgQP6f1BmFQ4gG/ZmpVOU6FOHafsJPqSTpjwmbxNRtPxMV0CgjDPaaP4+uYHfbVpqBclL4ljxF2XZU+rGFpKCdxb2ok/CoTU1RlkUL0B99GQoT3JZnnX5x8dGLsg50caYD9W/DEVVqeutQkVDB0lq2LtAJ+mtqvv8739aGt0dq6Mer6kLlgi40JpmmWUxMfS/HhkOxITCI1gDRQ68FIueevm+bREVOAQh2AuOQnwsttPBxTenJDYMJTvLxNfiIkfZgIrW5rqjGAZAcPc8tOoPFRfbUVPY/WQ+RJEbF/JZrF+36yDdmcv"
function ____exports.KKPlayerNameConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "kkplayernameiWu%C6F0WV&UcD@0#v^R",
        string.sub("kkplayername&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.KKPlayerNameConfig)
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
        local ____exports_kKPlayerNameConfigList_0 = ____exports.kKPlayerNameConfigList
        ____exports_kKPlayerNameConfigList_0[#____exports_kKPlayerNameConfigList_0 + 1] = obj
        ____exports.kKPlayerNameConfigMap[obj.id] = obj
    end
end
return ____exports
