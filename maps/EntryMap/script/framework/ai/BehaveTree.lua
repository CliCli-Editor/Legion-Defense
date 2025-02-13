local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 2,["7"] = 3,["8"] = 4,["9"] = 5,["10"] = 6,["11"] = 7,["12"] = 8,["13"] = 9,["14"] = 10,["15"] = 13,["16"] = 14,["17"] = 15,["18"] = 18,["19"] = 22,["20"] = 26,["21"] = 30,["22"] = 34,["23"] = 38,["24"] = 42,["25"] = 54,["26"] = 55,["27"] = 54,["29"] = 63,["30"] = 64,["31"] = 63,["33"] = 70,["34"] = 71,["35"] = 70,["37"] = 77,["38"] = 78,["39"] = 77,["41"] = 84,["42"] = 85,["43"] = 84,["45"] = 92,["46"] = 93,["47"] = 92,["49"] = 119,["50"] = 120,["51"] = 119,["52"] = 122,["53"] = 123,["54"] = 122,["55"] = 126,["56"] = 127,["57"] = 126,["58"] = 130,["59"] = 131,["60"] = 130,["61"] = 134,["62"] = 135,["63"] = 135,["64"] = 135,["65"] = 135,["66"] = 135,["67"] = 135,["68"] = 134,["70"] = 142,["71"] = 142,["72"] = 142,["74"] = 143,["75"] = 142,["77"] = 154,["78"] = 155,["79"] = 155,["80"] = 155,["81"] = 155,["82"] = 155,["83"] = 155,["84"] = 155,["85"] = 154,["87"] = 161,["88"] = 162,["89"] = 161,["93"] = 170,["94"] = 171,["95"] = 171,["96"] = 171,["97"] = 171,["98"] = 171,["99"] = 171,["100"] = 171,["101"] = 170,["108"] = 183,["109"] = 184,["110"] = 184,["111"] = 184,["112"] = 184,["113"] = 184,["114"] = 184,["115"] = 184,["116"] = 184,["117"] = 183,["119"] = 191,["120"] = 192,["121"] = 191,["125"] = 199,["126"] = 200,["127"] = 199,["129"] = 206,["130"] = 207,["131"] = 206,["133"] = 213,["134"] = 214,["135"] = 213,["137"] = 221,["138"] = 222,["139"] = 221,["142"] = 229,["143"] = 229,["144"] = 229,["146"] = 230,["147"] = 229,["151"] = 239,["152"] = 240,["153"] = 239,["156"] = 247,["157"] = 248,["158"] = 247,["162"] = 256,["163"] = 257,["164"] = 256,["167"] = 264,["168"] = 265,["169"] = 264});
local ____exports = {}
____exports["操作"] = 操作 or ({})
____exports["操作"]["设为"] = "IsSet"
____exports["操作"]["不设为"] = "IsNotSet"
____exports["操作"]["等于"] = "IsEqual"
____exports["操作"]["不等于"] = "IsNotEqual"
____exports["操作"]["大于等于"] = "IsGreaterOrEqual"
____exports["操作"]["大于"] = "IsGreater"
____exports["操作"]["小于等于"] = "IsSmallerOrEqual"
____exports["操作"]["小于"] = "IsSmaller"
____exports["操作"]["对对对"] = "AlwaysTrue"
____exports["平行策略"] = 平行策略 or ({})
____exports["平行策略"]["一个"] = "One"
____exports["平行策略"]["全部"] = "All"
____exports["停止规则"] = 停止规则 or ({})
____exports["停止规则"]["无"] = "None"
____exports["停止规则"]["自己"] = "Self"
____exports["停止规则"]["低优先级"] = "LowerPriority"
____exports["停止规则"]["两者"] = "Both"
____exports["停止规则"]["立即重启"] = "ImmediateRestart"
____exports["停止规则"]["低优先级立即重启"] = "LowerPriorityImmediateRestart"
____exports["根节点"] = function(self, mainNode, blackboard, clock)
    return New("NPBehave.Root")(mainNode, blackboard, clock)
end
--- 按顺序运行子任务，直到其中一个任务成功（如果其中一个任务成功，则任务成功）。
____exports["选择"] = function(self, ...)
    return New("NPBehave.Composite.Selector")(...)
end
--- 按顺序运行子任务，直到其中一个任务失败（如果没有子任务失败，则成功）。
____exports["顺序执行"] = function(self, ...)
    return New("NPBehave.Composite.Sequence")(...)
end
--- 并行运行子进程。当failurePolocity为 时Polociy.ONE，只要其中一个子进程失败，并行进程就会停止（并返回失败结果）。当successPolicy为 时Policy.ONE，只要 子进程失败，并行进程就会停止（并返回成功结果）。如果并行进程没有因为 而停止，Policy.ONE它将一直执行到所有子进程都完成为止，那么它要么在所有子进程都成功的情况下成功，要么失败。
____exports["平行执行"] = function(self, _____6210_529F_7B56_7565, _____5931_8D25_7B56_7565, ...)
    return New("NPBehave.Composite.Parallel")(_____6210_529F_7B56_7565, _____5931_8D25_7B56_7565, ...)
end
--- 按随机顺序运行子进程，直到其中一个进程成功（如果其中一个子进程成功，则成功）。请注意，对于中止规则，原始顺序定义了优先级。
____exports["随机选择"] = function(self, ...)
    return New("NPBehave.Composite.RandomSelector")(...)
end
--- 按随机顺序运行子进程，直到其中一个进程失败（如果所有子进程均未失败，则成功）。请注意，对于中止规则，原始顺序定义了优先级。
____exports["随机序列"] = function(self, ...)
    return New("NPBehave.Composite.RandomSequence")(...)
end
--- 立即执行成功并完成
____exports["执行"] = function(self, _____903B_8F91)
    return New("NPBehave.Task.Action")({action = _____903B_8F91, multiFrameFunc = nil, multiFrameFunc2 = nil, singleFrameFunc = nil})
end
____exports["尝试执行"] = function(self, _____903B_8F91)
    return New("NPBehave.Task.Action")({action = nil, multiFrameFunc = nil, multiFrameFunc2 = nil, singleFrameFunc = _____903B_8F91})
end
____exports["多帧执行"] = function(self, _____903B_8F91)
    return New("NPBehave.Task.Action")({action = nil, multiFrameFunc = _____903B_8F91, multiFrameFunc2 = nil, singleFrameFunc = nil})
end
____exports["多帧执行2"] = function(self, _____903B_8F91)
    return New("NPBehave.Task.Action")({action = nil, multiFrameFunc = nil, multiFrameFunc2 = _____903B_8F91, singleFrameFunc = nil})
end
____exports["等待"] = function(self, _____79D2, _____968F_673A, _____9ED1_677F_952E, callback)
    return New("NPBehave.Task.Wait")({
        seconds = _____968F_673A == nil and _____79D2 or _____79D2 + math.random() * math.max(0, _____968F_673A - _____79D2),
        randomVariance = 0,
        blackboardKey = _____9ED1_677F_952E,
        callback = callback
    })
end
--- 只是等待，直到被其他节点停止。它通常用于停在 的末尾Selector，等待任何 beforehead 兄弟BlackboardCondition，BlackboardQuery或Condition变为活动状态。
____exports["等待停止"] = function(self, _____505C_6B62_65F6_662F_5426_6210_529F)
    if _____505C_6B62_65F6_662F_5426_6210_529F == nil then
        _____505C_6B62_65F6_662F_5426_6210_529F = false
    end
    return New("NPBehave.Task.WaitUntilStopped")(_____505C_6B62_65F6_662F_5426_6210_529F)
end
--- 仅当 Blackboard 的/条件key符合时才执行节点。如果不为 NONE，节点将观察 Blackboard 的变化并根据停止规则停止正在运行的节点的执行。opvaluestopsOnChangestopsOnChange
____exports["黑板条件"] = function(self, key, op, value, _____5F53_6539_53D8_505C_6B62, decoratee)
    return New("NPBehave.Decorator.BlackboardCondition")(
        key,
        op,
        value,
        _____5F53_6539_53D8_505C_6B62,
        decoratee
    )
end
--- 虽然BlackboardCondition只允许检查一个键，但这个键将观察多个黑板键，并在其中一个值发生变化时立即评估给定的函数，从而允许您在黑板上进行任意查询。它将根据停止规则query停止正在运行的节点。stopsOnChange
____exports["黑板查询"] = function(self, keys, _____5F53_6539_53D8_505C_6B62, query, decoratee)
    return New("NPBehave.Decorator.BlackboardQuery")(keys, _____5F53_6539_53D8_505C_6B62, query, decoratee)
end
--- Condition(Func<bool> condition, Node decoratee)decoratee：如果给定condition返回 true，则执行节点
-- Condition(Func<bool> condition, Stops stopsOnChange, Node decoratee)：decoratee如果给定condition返回 true，则执行节点。每帧重新评估条件，并根据stopsOnChange停止规则停止运行节点。
-- Condition(Func<bool> condition, Stops stopsOnChange, float checkInterval, float randomVariance, Node decoratee)：decoratee如果给定条件返回 true，则执行节点。重新评估给定条件checkInterval，randomVariance并根据stopsOnChange停止规则停止正在运行的节点。
____exports["条件"] = function(self, condition, _____5F53_6539_53D8_505C_6B62, _____65F6_95F4_95F4_9694, randomVariance, decoratee)
    return New("NPBehave.Decorator.Condition")(
        condition,
        _____5F53_6539_53D8_505C_6B62,
        decoratee,
        _____65F6_95F4_95F4_9694,
        randomVariance
    )
end
--- Cooldown(float cooldownTime, Node decoratee)：decoratee立即运行，但前提是最后一次执行至少不是过去cooldownTime
-- Cooldown(float cooldownTime, float randomVariation, Node decoratee)：decoratee立即运行，但前提是最后一次执行至少cooldownTime不是randomVariation
-- Cooldown(float cooldownTime, bool startAfterDecoratee, bool resetOnFailiure, Node decoratee)：decoratee立即运行，但前提是上次执行至少不是过去cooldownTime。randomVariation当resetOnFailure为真时，如果装饰节点失败，冷却时间将被重置
-- Cooldown(float cooldownTime, float randomVariation, bool startAfterDecoratee, bool resetOnFailiure, Node decoratee)立即运行decoratee，但前提是最后一次执行至少不是过去cooldownTime。randomVariation当startAfterDecoratee为真时，冷却计时器将在装饰节点完成后启动，而不是在启动时启动。当resetOnFailure为真时，如果装饰节点失败，冷却时间将被重置。
-- Cooldown(float cooldownTime, bool startAfterDecoratee, bool resetOnFailiure, bool failOnCooldown, Node decoratee)：decoratee立即运行，但前提是上次执行至少未过去cooldownTime。randomVariation当resetOnFailure为真时，如果装饰节点失败，冷却时间将被重置。如果failOnCooldown为真，则在冷却时间仍处于活动状态时失败而不是等待。
-- Cooldown(float cooldownTime, float randomVariation, bool startAfterDecoratee, bool failOnCooldown, bool resetOnFailiure, Node decoratee)立即运行decoratee，但前提是最后一次执行至少不是过去cooldownTime。randomVariation当startAfterDecoratee为真时，冷却计时器将在装饰节点完成后启动，而不是在启动时启动。当resetOnFailure为真时，如果装饰节点失败，冷却时间将被重置。如果failOnCooldown为真，则在冷却时间仍处于活动状态时失败而不是等待。
____exports["冷却"] = function(self, cooldownTime, randomVariation, startAfterDecoratee, resetOnFailure, failOnCooldown, decoratee)
    return New("NPBehave.Decorator.Cooldown")(
        cooldownTime,
        randomVariation,
        startAfterDecoratee,
        resetOnFailure,
        failOnCooldown,
        decoratee
    )
end
--- Failer(Node decoratee)：总是失败，无论decoratee的结果如何。
____exports["总是失败"] = function(self, decoratee)
    return New("NPBehave.Decorator.Failer")(decoratee)
end
--- Succeeder(Node decoratee)：无论decoratee成功与否，始终成功
-- 
-- @param decoratee
____exports["总是成功"] = function(self, decoratee)
    return New("NPBehave.Decorator.Succeeder")(decoratee)
end
--- Inverter(Node decoratee)：若decoratee成功，则逆变器失败，若decoratee失败，则逆变器成功。
____exports["取反"] = function(self, decoratee)
    return New("NPBehave.Decorator.Inverter")(decoratee)
end
--- onStart一旦decoratee开始，就运行给定的 lambda，onStop(bool result)一旦decoratee完成，就运行 lambda。这有点像一种特殊的Service，因为它不会直接干扰的执行decoratee。
____exports["观察"] = function(self, onStart, onStop, decoratee)
    return New("NPBehave.Decorator.Observer")(onStart, onStart, decoratee)
end
--- 以0 至 1 之间的decoratee给定机会运行
____exports["随机"] = function(self, _____51E0_7387, decoratee)
    return New("NPBehave.Decorator.Random")(_____51E0_7387, decoratee)
end
--- Repeater(Node decoratee)：无限重复给定decoratee，除非失败
-- Repeater(int loopCount, Node decoratee)：执行给定的decoratee次数loopCount（0 表示 decoratee 永远不会运行）。如果decoratee停止，循环将中止，Repeater 将失败。如果所有执行decoratee都成功，Repeater 将成功。
____exports["重复"] = function(self, _____91CD_590D_6B21_6570, decoratee)
    if _____91CD_590D_6B21_6570 == nil then
        _____91CD_590D_6B21_6570 = 0
    end
    return New("NPBehave.Decorator.Repeater")(_____91CD_590D_6B21_6570, decoratee)
end
--- Service(Action service, Node decoratee)：运行给定的service函数，启动decoratee然后运行service每一个刻度。
-- Service(float interval, Action service, Node decoratee)：运行给定的service函数，启动decoratee然后service在给定的时间运行interval。
-- Service(float interval, float randomVariation, Action service, Node decoratee)：运行给定的service函数，启动decoratee然后service在给定的interval时间运行randomVariation。
____exports["服务"] = function(self, interval, randomVariation, service, decoratee)
    return New("NPBehave.Decorator.Service")(interval, service, decoratee, randomVariation)
end
--- TimeMax(float limit, bool waitForChildButFailOnLimitReached, Node decoratee)：运行给定的decoratee。如果decoratee未在内完成limit，则执行失败。如果waitForChildButFailOnLimitReached为真，它将等待装饰器完成但仍然会失败。
-- TimeMax(float limit, float randomVariation, bool waitForChildButFailOnLimitReached, Node decoratee)：运行给定的decoratee。如果decoratee未在和内完成limit，randomVariation则执行失败。如果waitForChildButFailOnLimitReached为真，它将等待装饰器完成但仍然会失败。
____exports["最大时间"] = function(self, limit, randomVariation, waitForChildButFailOnLimitReached, decoratee)
    return New("NPBehave.Decorator.TimeMax")(limit, randomVariation, waitForChildButFailOnLimitReached, decoratee)
end
--- TimeMin(float limit, Node decoratee)：运行给定的decoratee。如果在时间到达decoratee之前成功完成，则limit装饰器将等待，直到达到限制，然后使用 的结果停止执行Decoratee。如果在时间到达decoratee之前完成失败limit，则装饰器将立即停止。
-- TimeMin(float limit, bool waitOnFailure, Node decoratee)：运行给定的decoratee。如果在达到时间decoratee之前成功完成limit，则装饰器将等待，直到达到限制，然后使用 的结果停止执行Decoratee。如果waitOnFailure为真，则decoratee当装饰器失败时 也会等待。
-- TimeMin(float limit, float randomVariation, bool waitOnFailure, Node decoratee)：运行给定的decoratee。如果在达到时间decoratee之前成功完成，则装饰器将等待，直到达到限制，然后使用 的结果停止执行。如果为真，则当装饰器失败时 也会等待。limitrandomVariationDecorateewaitOnFailuredecoratee
____exports["最小时间"] = function(self, limit, randomVariation, waitOnFailure, decoratee)
    return New("NPBehave.Decorator.TimeMin")(limit, randomVariation, waitOnFailure, decoratee)
end
--- WaitForCondition(Func<bool> condition, Node decoratee)：延迟执行节点，decoratee直到condition得到真实，检查每一帧
-- WaitForCondition(Func<bool> condition, float checkInterval, float randomVariance, Node decoratee)：延迟执行节点，decoratee直到condition得到真，检查给定的checkInterval和randomVariance
____exports["等待条件"] = function(self, condition, checkInterval, randomVariance, decoratee)
    return New("NPBehave.Decorator.WaitForCondition")(condition, checkInterval, randomVariance, decoratee)
end
return ____exports
