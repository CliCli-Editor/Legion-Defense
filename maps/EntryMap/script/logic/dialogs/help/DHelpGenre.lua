local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 4,["18"] = 4,["19"] = 5,["20"] = 15,["21"] = 4,["22"] = 17,["23"] = 18,["24"] = 19,["25"] = 18,["26"] = 17,["27"] = 23,["29"] = 24,["30"] = 24,["31"] = 24,["32"] = 25,["33"] = 25,["35"] = 26,["36"] = 24,["37"] = 24,["38"] = 29,["39"] = 29,["40"] = 29,["41"] = 30,["42"] = 29,["43"] = 29,["44"] = 33,["45"] = 33,["46"] = 33,["47"] = 34,["48"] = 33,["49"] = 33,["50"] = 37,["51"] = 37,["52"] = 37,["53"] = 38,["54"] = 45,["55"] = 37,["56"] = 37,["58"] = 23,["59"] = 50,["60"] = 50});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____GenreLevelConfig = include("logic.configs.GenreLevelConfig")
local genreLevelConfigMap_genre = ____GenreLevelConfig.genreLevelConfigMap_genre
____exports.DHelpGenre = __TS__Class()
local DHelpGenre = ____exports.DHelpGenre
DHelpGenre.name = "DHelpGenre"
__TS__ClassExtends(DHelpGenre, Dialog)
function DHelpGenre.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpGenre.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpGenre.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "root",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        self:bindImage(
            "root.genre",
            function()
                return genreLevelConfigMap_genre[self.data.params.genre][1].icon
            end
        )
        self:bindText(
            "root.name",
            function()
                return genreLevelConfigMap_genre[self.data.params.genre][1].name.value
            end
        )
        self:bindText(
            "root.des",
            function()
                local cfg = genreLevelConfigMap_genre[self.data.params.genre][1]
                return cfg.des.value
            end
        )
    end)
end
function DHelpGenre.prototype.onShow(self)
end
return ____exports
