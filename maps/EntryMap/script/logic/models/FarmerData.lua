local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 6,["6"] = 6,["7"] = 7,["8"] = 7,["9"] = 54,["10"] = 54,["11"] = 54,["12"] = 59,["13"] = 60,["14"] = 60,["15"] = 60,["16"] = 60,["17"] = 60,["18"] = 60,["19"] = 60,["20"] = 60,["21"] = 69,["22"] = 70,["23"] = 71,["24"] = 60,["25"] = 80,["26"] = 82,["27"] = 83,["28"] = 84,["29"] = 85,["30"] = 86,["31"] = 87,["32"] = 89,["33"] = 90,["34"] = 91,["35"] = 92,["36"] = 93,["37"] = 94,["38"] = 96,["39"] = 97,["40"] = 99,["41"] = 101,["42"] = 103,["43"] = 104,["44"] = 104,["45"] = 104,["46"] = 104,["47"] = 104,["48"] = 104,["49"] = 104,["50"] = 60,["51"] = 60,["52"] = 108,["53"] = 54,["54"] = 54});
local ____exports = {}
local ____TechnologyDefaultConfig = include("logic.configs.TechnologyDefaultConfig")
local technologyDefaultConfig = ____TechnologyDefaultConfig.technologyDefaultConfig
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.FarmerUnit = {
    name = "FarmerUnit",
    indexKeys = {},
    make = function(self)
        local unit = S({
            playerId = nil,
            y3Unit = nil,
            road = 0,
            speedRate = 0,
            baseSpeed = 800,
            set_complete_callback = nil,
            isFirst = true,
            set_speed = function(self, speed)
                self.speedRate = speed
                self.y3Unit:set_attr("ori_speed", self.baseSpeed * speed, "ATTR_BASE")
            end,
            init = function(self, params)
                local template = y3.object.unit[params.roleId]
                local hero = template:new()
                print("xcxxxxx", params.roleId, template, hero.data)
                hero.data.name = params.name
                local area = y3.area.get_by_res_id(params.area, 2)
                local pos = area:get_center_point()
                local unit = params.player:create_unit(hero.key)
                self.y3Unit = unit
                self.playerId = params.player.id
                self.road = params.road
                self.isFirst = true
                self.baseSpeed = technologyDefaultConfig["初始移动速度"]
                unit:set_health_bar_display(0)
                unit:set_point(pos, false)
                unit:set_attr("ori_bits", 1031558, "ATTR_BASE")
                unit:set_attr("ori_speed", self.baseSpeed, "ATTR_BASE")
                local road = y3.road.get_road_by_res_id(self.road)
                self.y3Unit:move_along_road(
                    road,
                    2,
                    false,
                    false,
                    false
                )
            end
        })
        return unit
    end
}
return ____exports
