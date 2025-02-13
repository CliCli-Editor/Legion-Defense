local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 4,["9"] = 4,["10"] = 4,["12"] = 4,["13"] = 8,["14"] = 8,["15"] = 8,["17"] = 10,["18"] = 10,["19"] = 11,["20"] = 12,["21"] = 13,["23"] = 23,["24"] = 25,["25"] = 28,["26"] = 28,["27"] = 28,["28"] = 28,["29"] = 29,["30"] = 30,["31"] = 32,["32"] = 33,["34"] = 28,["35"] = 28,["36"] = 10,["37"] = 38,["38"] = 8,["39"] = 41,["40"] = 42,["41"] = 43,["42"] = 44,["44"] = 41,["45"] = 50,["46"] = 51,["47"] = 51,["48"] = 51,["49"] = 51,["50"] = 51,["51"] = 51,["52"] = 51,["53"] = 52,["54"] = 52,["55"] = 52,["56"] = 53,["57"] = 52,["58"] = 52,["59"] = 50,["60"] = 67,["61"] = 69,["62"] = 70,["63"] = 71,["65"] = 76,["66"] = 76,["67"] = 81,["68"] = 81,["69"] = 82,["70"] = 83,["73"] = 86,["74"] = 86,["75"] = 86,["76"] = 86,["77"] = 87,["78"] = 87,["79"] = 87,["80"] = 87,["81"] = 87,["82"] = 87,["83"] = 87,["84"] = 88,["85"] = 88,["86"] = 88,["87"] = 89,["88"] = 89,["89"] = 89,["90"] = 89,["91"] = 89,["92"] = 89,["93"] = 89,["94"] = 88,["95"] = 88,["96"] = 91,["97"] = 91,["98"] = 91,["99"] = 92,["100"] = 93,["101"] = 91,["102"] = 91,["103"] = 81,["104"] = 96,["105"] = 67,["106"] = 98,["107"] = 99,["108"] = 100,["109"] = 101,["111"] = 108,["112"] = 108,["113"] = 109,["114"] = 109,["115"] = 109,["116"] = 109,["117"] = 109,["118"] = 109,["119"] = 109,["120"] = 110,["121"] = 110,["122"] = 110,["123"] = 111,["124"] = 110,["125"] = 110,["126"] = 108,["127"] = 114,["128"] = 98,["129"] = 117,["130"] = 118,["131"] = 119,["132"] = 120,["134"] = 120,["137"] = 117,["138"] = 125,["139"] = 126,["140"] = 127,["141"] = 129,["143"] = 133,["144"] = 135,["145"] = 137,["146"] = 141,["147"] = 142,["148"] = 142,["149"] = 142,["150"] = 142,["151"] = 143,["152"] = 144,["153"] = 145,["154"] = 146,["156"] = 142,["157"] = 142,["158"] = 125,["159"] = 7,["160"] = 66,["161"] = 124});
local ____exports = {}
local ____Easing = include("framework.animation.Easing")
local EasingChinese = ____Easing.EasingChinese
____exports.UIEffect = __TS__Class()
local UIEffect = ____exports.UIEffect
UIEffect.name = "UIEffect"
function UIEffect.prototype.____constructor(self)
end
function UIEffect.play_opacity(self, ui, start, ____end, time, loop)
    if loop == nil then
        loop = false
    end
    local func
    func = function(____, a, b)
        if self.opacity_map[ui.handle] ~= nil then
            self.opacity_map[ui.handle]:remove()
            self.opacity_map[ui.handle] = nil
        end
        local totalFrame = math.floor(math.floor(time * 30) + 0.5)
        totalFrame = math.max(5, totalFrame)
        self.opacity_map[ui.handle] = y3.ltimer.loop_count_frame(
            1,
            totalFrame,
            function(_timer, count)
                local rate = EasingChinese["二次方进出"](EasingChinese, count / totalFrame)
                ui:set_alpha(a + (b - a) * rate)
                if count >= totalFrame and loop then
                    func(nil, b, a)
                end
            end
        )
    end
    func(nil, start, ____end)
end
function UIEffect.stop_opacity(self, ui)
    if self.opacity_map[ui.handle] ~= nil then
        self.opacity_map[ui.handle]:remove()
        self.opacity_map[ui.handle] = nil
    end
end
function UIEffect.play_scale(self, ui, start, ____end, time, callback)
    ui:set_anim_scale(
        start,
        start,
        ____end,
        ____end,
        time
    )
    y3.ltimer.wait(
        time,
        function()
            callback(nil)
        end
    )
end
function UIEffect.play_scale2(self, ui, start, ____end, time, callback)
    local key = ui.handle
    if self.scale2_map[key] == nil then
        self.scale2_map[key] = {timer = nil, list = {}}
    end
    local ____self_scale2_map_key_list_0 = self.scale2_map[key].list
    ____self_scale2_map_key_list_0[#____self_scale2_map_key_list_0 + 1] = {start = start, ["end"] = ____end, callback = callback}
    local play
    play = function()
        local data = self.scale2_map[key]
        if #data.list == 0 or data.timer ~= nil then
            return
        end
        local ____table_remove_result_1 = table.remove(data.list, 1)
        local start = ____table_remove_result_1.start
        local ____end = ____table_remove_result_1["end"]
        local callback = ____table_remove_result_1.callback
        ui:set_anim_scale(
            start,
            start,
            ____end,
            ____end,
            time
        )
        y3.ltimer.wait(
            time,
            function()
                ui:set_anim_scale(
                    ____end,
                    ____end,
                    start,
                    start,
                    time
                )
            end
        )
        y3.ltimer.wait(
            time * 2,
            function()
                local ____ = callback and callback(nil)
                play(nil)
            end
        )
    end
    play(nil)
end
function UIEffect.play_scale_loop(self, ui, start, ____end, time)
    local key = ui.handle
    if self.scale2_map[key] == nil then
        self.scale2_map[key] = {timer = nil, list = {}}
    end
    local play
    play = function(____, start, ____end)
        ui:set_anim_scale(
            start,
            start,
            ____end,
            ____end,
            time
        )
        self.scale2_map[key].timer = y3.ltimer.wait(
            time,
            function()
                play(nil, ____end, start)
            end
        )
    end
    play(nil, start, ____end)
end
function UIEffect.stop_scale_loop(self, ui)
    local key = ui.handle
    if self.scale2_map[key] ~= nil then
        local ____opt_2 = self.scale2_map[key].timer
        if ____opt_2 ~= nil then
            ____opt_2:remove()
        end
    end
end
function UIEffect.move(self, ui, startX, startY, endX, endY, time, callback)
    if self.move_map[ui.handle] ~= nil then
        self.move_map[ui.handle].timer:remove()
        self.move_map[ui.handle] = nil
    end
    local totalFrame = math.floor(math.floor(time * 30) + 0.5)
    totalFrame = math.max(5, totalFrame)
    self.move_map[ui.handle] = {callback = nil, timer = nil}
    self.move_map[ui.handle].callback = callback
    self.move_map[ui.handle].timer = y3.ltimer.loop_count_frame(
        1,
        totalFrame,
        function(_timer, count)
            local rate = EasingChinese["二次方进出"](EasingChinese, count / totalFrame)
            ui:set_pos(startX + (endX - startX) * rate, startY + (endY - startY) * rate)
            if count >= totalFrame then
                callback(nil)
            end
        end
    )
end
UIEffect.opacity_map = {}
UIEffect.scale2_map = {}
UIEffect.move_map = {}
return ____exports
