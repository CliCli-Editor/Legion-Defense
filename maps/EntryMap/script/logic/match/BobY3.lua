local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__StringStartsWith = ____lualib.__TS__StringStartsWith
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 3,["11"] = 3,["12"] = 6,["13"] = 6,["14"] = 6,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 6,["26"] = 6,["27"] = 6,["28"] = 6,["29"] = 6,["30"] = 6,["31"] = 6,["32"] = 6,["33"] = 6,["34"] = 6,["35"] = 6,["36"] = 6,["37"] = 6,["38"] = 6,["39"] = 6,["40"] = 6,["41"] = 222,["42"] = 222,["43"] = 222,["44"] = 272,["45"] = 224,["46"] = 317,["47"] = 318,["48"] = 320,["49"] = 320,["50"] = 320,["51"] = 321,["54"] = 324,["55"] = 325,["56"] = 326,["58"] = 324,["59"] = 320,["60"] = 320,["61"] = 331,["62"] = 272,["63"] = 334,["64"] = 335,["65"] = 334,["66"] = 338,["67"] = 339,["68"] = 339,["69"] = 339,["70"] = 340,["71"] = 340,["72"] = 341,["73"] = 342,["75"] = 339,["76"] = 339,["77"] = 338,["78"] = 347,["79"] = 348,["80"] = 350,["81"] = 350,["82"] = 350,["83"] = 351,["84"] = 352,["85"] = 353,["86"] = 355,["87"] = 350,["88"] = 350,["89"] = 358,["90"] = 358,["91"] = 358,["92"] = 359,["93"] = 360,["94"] = 362,["95"] = 363,["97"] = 364,["98"] = 365,["100"] = 366,["103"] = 368,["105"] = 369,["108"] = 371,["110"] = 372,["115"] = 358,["116"] = 358,["117"] = 378,["118"] = 378,["119"] = 378,["120"] = 379,["121"] = 380,["122"] = 381,["124"] = 382,["125"] = 382,["126"] = 383,["127"] = 383,["128"] = 383,["129"] = 384,["130"] = 385,["132"] = 383,["133"] = 383,["137"] = 378,["138"] = 378,["139"] = 392,["140"] = 392,["141"] = 392,["142"] = 393,["143"] = 394,["145"] = 392,["146"] = 392,["147"] = 397,["148"] = 397,["149"] = 397,["150"] = 398,["151"] = 399,["153"] = 397,["154"] = 397,["155"] = 404,["156"] = 404,["157"] = 404,["158"] = 405,["159"] = 406,["160"] = 408,["161"] = 411,["162"] = 412,["163"] = 413,["165"] = 404,["166"] = 404,["167"] = 418,["168"] = 418,["169"] = 418,["170"] = 419,["171"] = 420,["172"] = 421,["174"] = 423,["175"] = 424,["177"] = 418,["178"] = 418,["179"] = 428,["180"] = 428,["181"] = 428,["182"] = 429,["183"] = 428,["184"] = 428,["185"] = 434,["186"] = 434,["187"] = 434,["188"] = 435,["189"] = 437,["192"] = 442,["195"] = 439,["197"] = 440,["198"] = 440,["200"] = 440,["208"] = 445,["210"] = 445,["211"] = 445,["213"] = 445,["214"] = 446,["217"] = 434,["218"] = 434,["219"] = 451,["220"] = 451,["221"] = 451,["222"] = 452,["223"] = 454,["224"] = 455,["225"] = 456,["226"] = 457,["228"] = 451,["229"] = 451,["230"] = 462,["231"] = 463,["232"] = 347,["233"] = 466,["234"] = 467,["235"] = 468,["236"] = 469,["237"] = 470,["238"] = 471,["239"] = 472,["241"] = 474,["243"] = 476,["244"] = 477,["245"] = 466,["246"] = 480,["247"] = 482,["248"] = 483,["250"] = 486,["251"] = 486,["252"] = 486,["253"] = 488,["254"] = 489,["255"] = 490,["256"] = 491,["257"] = 492,["259"] = 494,["260"] = 495,["261"] = 496,["262"] = 498,["264"] = 500,["265"] = 500,["266"] = 500,["268"] = 500,["270"] = 500,["271"] = 501,["272"] = 502,["273"] = 505,["274"] = 506,["275"] = 507,["276"] = 508,["277"] = 509,["278"] = 510,["279"] = 511,["280"] = 512,["281"] = 513,["282"] = 514,["285"] = 517,["286"] = 518,["287"] = 519,["288"] = 520,["289"] = 521,["290"] = 523,["291"] = 524,["292"] = 525,["293"] = 526,["295"] = 528,["297"] = 530,["298"] = 531,["299"] = 532,["301"] = 534,["303"] = 536,["304"] = 524,["305"] = 523,["306"] = 480,["307"] = 547,["308"] = 548,["309"] = 549,["312"] = 552,["313"] = 547,["314"] = 558,["315"] = 559,["316"] = 560,["319"] = 563,["320"] = 558,["321"] = 569,["322"] = 570,["323"] = 571,["326"] = 574,["327"] = 569,["328"] = 580,["329"] = 581,["330"] = 580,["331"] = 587,["332"] = 588,["333"] = 587,["334"] = 594,["335"] = 595,["336"] = 594,["337"] = 601,["338"] = 602,["339"] = 602,["340"] = 602,["341"] = 602,["342"] = 603,["343"] = 604,["345"] = 604,["346"] = 604,["347"] = 604,["348"] = 604,["349"] = 604,["351"] = 604,["353"] = 602,["354"] = 602,["355"] = 601,["356"] = 611,["357"] = 612,["358"] = 611,["359"] = 618,["360"] = 619,["361"] = 618,["362"] = 622,["363"] = 623,["364"] = 624,["365"] = 622});
local ____exports = {}
local ____LadderTournamentManager = include("logic.archive.manager.LadderTournamentManager")
local ladderTournamentManager = ____LadderTournamentManager.ladderTournamentManager
local ____BobInfo = include("logic.match.BobInfo")
local BobInfo = ____BobInfo.BobInfo
local err_msg = {
    [1] = "baka~baka~",
    [110] = "登陆失败",
    [121] = "昵称不合法",
    [113] = "账号不存在",
    [311] = "地图不存在",
    [312] = "地图版本不匹配(退出游戏更新后再次进入)",
    [625] = "队伍已解散",
    [626] = "队伍已满",
    [1005] = "玩家不存在",
    [1071] = "操作太频繁",
    [1300] = "聊天太频繁",
    [1401] = "已在队伍中",
    [1404] = "队伍不存在",
    [1405] = "队伍已满",
    [1406] = "只能由队长操作",
    [1407] = "队伍正在匹配中",
    [1408] = "正在匹配中",
    [1409] = "有玩家正在游戏中",
    [1410] = "正在队伍中",
    [1800] = "玩家不存在",
    [1801] = "玩家的状态非法，不能匹配",
    [1802] = "玩家被禁止匹配",
    [1810] = "匹配状态非法",
    [1811] = "匹配的地图信息不存在",
    [1812] = "玩家不再匹配中",
    [1898] = "匹配繁忙",
    [1899] = "匹配内部错误"
}
____exports.BobY3 = __TS__Class()
local BobY3 = ____exports.BobY3
BobY3.name = "BobY3"
function BobY3.prototype.____constructor(self, data, callbacks)
    self._bob = nil
    self.data = data
    self.callbacks = callbacks
    y3.game:event(
        "玩家-发送消息",
        function(trg, data)
            if not self._bob or not self._bob:is_in_team() then
                return
            end
            y3.player.with_local(function(local_player)
                if data.player == local_player then
                    self._bob:send_chat(data.str1)
                end
            end)
        end
    )
    self:autoReconnect()
end
function BobY3.prototype.sendChat(self, str)
    return self._bob:send_chat(str)
end
function BobY3.prototype.autoReconnect(self)
    y3.ctimer.loop(
        1,
        function()
            local ____opt_0 = self._bob
            if (____opt_0 and ____opt_0.state) == "disconnect" then
                console:log("尝试重连")
                self:init(self._bob._in_game, self._bob.score)
            end
        end
    )
end
function BobY3.prototype.init(self, inGame, score)
    self:createBob(score or 0)
    self._bob:event_on(
        "准备就绪",
        function()
            self.data.isReady = true
            self.data.teamInfo = self._bob.team_info
            self.data.isCaptain = self._bob:is_captain()
            ladderTournamentManager:setIsSingleMatch(self.data.teamInfo == nil)
        end
    )
    self._bob:event_on(
        "离开队伍",
        function(tr, reason, last_team_info)
            self.data.teamInfo = nil
            ladderTournamentManager:setIsSingleMatch(true)
            self.data.isCaptain = false
            if self.callbacks.onMessage ~= nil then
                repeat
                    local ____switch15 = reason
                    local ____cond15 = ____switch15 == "离开"
                    if ____cond15 then
                        self.callbacks:onMessage("你退出了队伍")
                        break
                    end
                    ____cond15 = ____cond15 or ____switch15 == "踢出"
                    if ____cond15 then
                        self.callbacks:onMessage("你被踢出了队伍")
                        break
                    end
                    ____cond15 = ____cond15 or ____switch15 == "解散"
                    if ____cond15 then
                        self.callbacks:onMessage("队伍已被解散")
                        break
                    end
                until true
            end
        end
    )
    self._bob:event_on(
        "加入队伍",
        function(tr)
            if self.callbacks.onMessage ~= nil then
                if self._bob:is_captain() then
                    self.callbacks:onMessage("创建队伍成功")
                else
                    local ____opt_2 = self._bob.team_info
                    if (____opt_2 and ____opt_2.captain) ~= nil then
                        self._bob:get_player_info(
                            self._bob.team_info.captain,
                            function(result)
                                if result ~= nil then
                                    self.callbacks:onMessage(("你加入了" .. result.name) .. "的队伍")
                                end
                            end
                        )
                    end
                end
            end
        end
    )
    self._bob:event_on(
        "有人加入队伍",
        function(tr, data)
            if self.callbacks.onMessage ~= nil then
                self.callbacks:onMessage(data.name .. "加入了队伍")
            end
        end
    )
    self._bob:event_on(
        "有人离开队伍",
        function(tr, data)
            if self.callbacks.onMessage ~= nil then
                self.callbacks:onMessage(data.name .. "离开了队伍")
            end
        end
    )
    self._bob:event_on(
        "队伍变化",
        function(tr, data)
            self.data.teamInfo = data
            self.data.isCaptain = self._bob:is_captain()
            ladderTournamentManager:setIsSingleMatch(self.data.teamInfo == nil)
            if self.data.isMatching ~= true and self._bob:is_matching() then
                self.data.isMatching = true
                self.data.startMatchingTime = os.clock()
            end
        end
    )
    self._bob:event_on(
        "匹配状态变化",
        function()
            if self._bob:is_matching() then
                self.data.isMatching = true
                self.data.startMatchingTime = os.clock()
            else
                self.data.isMatching = false
                self.data.startMatchingTime = 0
            end
        end
    )
    self._bob:event_on(
        "启动状态变化",
        function(tr, state)
            self.data.isLaunching = state
        end
    )
    self._bob:event_on(
        "收到消息",
        function(trg, data)
            console:log("收到聊天消息", data.time, data.mode, data.message)
            if __TS__StringStartsWith(data.message, "cmd ") then
                do
                    local function ____catch(e)
                        console:error(e)
                    end
                    local ____try, ____hasReturned = pcall(function()
                        local _, cmd, args = table.unpack(__TS__StringSplit(data.message, " "))
                        local ____this_5
                        ____this_5 = self.callbacks
                        local ____opt_4 = ____this_5.onCommand
                        if ____opt_4 ~= nil then
                            ____opt_4(____this_5, cmd, args)
                        end
                    end)
                    if not ____try then
                        ____catch(____hasReturned)
                    end
                end
            else
                local ____temp_8 = self.callbacks.onChat ~= nil
                if ____temp_8 then
                    local ____opt_6 = data.chat
                    ____temp_8 = (____opt_6 and ____opt_6.sender.aid) ~= self._bob.aid
                end
                if ____temp_8 then
                    self.callbacks:onChat(data)
                end
            end
        end
    )
    self._bob:event_on(
        "在线状态变化",
        function(trg, state)
            self.data.connectState = state
            if self.data.connectState == "connected" then
                local ____ = self.callbacks.onMessage and self.callbacks:onMessage("服务器连接成功")
            elseif self.data.connectState == "disconnect" then
                local ____ = self.callbacks.onMessage and self.callbacks:onMessage("网络已断开~")
            end
        end
    )
    self._bob:set_in_game(inGame)
    self._bob:start()
end
function BobY3.prototype.get_prod_ip(self)
    local oldIp = "47.97.23.172"
    local time = y3.game.get_current_server_time().timestamp
    local target_time_stamp = 1728504000
    local ip
    if time >= target_time_stamp then
        ip = BobInfo.prodServer
    else
        ip = oldIp
    end
    print("选择匹配服务IP：", ip)
    return ip
end
function BobY3.prototype.createBob(self, score)
    if self._bob ~= nil then
        Delete(self._bob)
    end
    local ____New_result_result_9 = New("Bob")()
    self._bob = ____New_result_result_9
    local BOB = ____New_result_result_9
    BOB.score = score
    if y3.game.is_debug_mode(true) then
        if os.getenv ~= nil then
            BOB.name = os.getenv("USERNAME") or "USERNAME"
            BOB.aid = y3.hash(BOB.name)
        end
        BOB.ip = BobInfo.localServer
        BOB.port = 8092
        BOB.token = BobInfo.localToken
        BOB.map_id = BobInfo.localMapId
    else
        local ____temp_10
        if GameAPI.get_dungeon_info ~= nil then
            ____temp_10 = GameAPI.get_dungeon_info().env
        else
            ____temp_10 = nil
        end
        local mod = ____temp_10
        mod = tostring(mod)
        BOB.ip = self:get_prod_ip()
        BOB.port = 8092
        if mod == "qa" then
            BOB.ip = BobInfo.qaServer
            BOB.game_play_id = BobInfo.preGamePlayId
        elseif mod == "pre" then
            BOB.ip = BobInfo.preServer
            BOB.game_play_id = BobInfo.preGamePlayId
        elseif mod == "prod" then
            BOB.ip = self:get_prod_ip()
            BOB.game_play_id = BobInfo.prodGamePlayId
        end
    end
    console:log("【BOB】手动设置ip:", BOB.ip)
    console:log("【BOB】手动设置port:", BOB.port)
    console:log("【BOB】手动设置game_play_id:", BOB.game_play_id)
    BOB.level_id = BobInfo.levelId
    console:log("【BOB】手动设置level_id:", BOB.level_id)
    BOB:set_error_handler(function(msg, errid)
        y3.player.with_local(function(local_player)
            if err_msg[errid] then
                msg = err_msg[errid]
            else
                msg = "未知错误,id:" .. tostring(errid)
            end
            self._bob:refresh_team_info()
            if self.callbacks.onMessage ~= nil then
                self.callbacks:onMessage(msg)
            else
                y3.eca.call("玩家-提示文本", local_player, msg)
            end
            console:warn(msg)
        end)
    end)
end
function BobY3.prototype.changeCaptain(self, aid)
    if not self._bob:is_captain() then
        console:error("非队长无法调用 change_captain")
        return
    end
    self._bob:change_captain(aid)
end
function BobY3.prototype.kick(self, aid)
    if not self._bob:is_captain() then
        console:error("非队长无法调用 team_kick")
        return
    end
    self._bob:team_kick(aid)
end
function BobY3.prototype.dismissTeam(self)
    if not self._bob:is_captain() then
        console:error("非队长无法调用 dismiss_team")
        return
    end
    self._bob:dismiss_team()
end
function BobY3.prototype.leaveTeam(self)
    self._bob:leave_team()
end
function BobY3.prototype.createTeam(self)
    self._bob:create_team()
end
function BobY3.prototype.joinTeam(self, team_id)
    self._bob:join_team(team_id)
end
function BobY3.prototype.start_match(self, game_mode, score, cb)
    self._bob:start_match(
        game_mode,
        score,
        function(result, err)
            print("[bob] start_match response ", result, err)
            local ____cb_14 = cb
            if ____cb_14 then
                local ____cb_13 = cb
                local ____temp_12 = result == 0
                local ____err_11 = err
                if ____err_11 == nil then
                    ____err_11 = result
                end
                ____cb_14 = ____cb_13(nil, ____temp_12, ____err_11)
            end
        end
    )
end
function BobY3.prototype.cancel_match(self)
    self._bob:cancel_match()
end
function BobY3.prototype.format_message(self, data)
    return self._bob:format_message(data)
end
function BobY3.prototype.exitGame(self)
    self._bob:set_in_game(false)
    self._bob:refresh_player_info()
end
return ____exports
