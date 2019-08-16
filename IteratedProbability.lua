local IP = {
    INFINITY = 1 / 0,
}

local function isNatural(value)
    return math.floor(value) == value and value >= 0
end

local function isProbability(value)
    return 0 <= value and value <= 1
end

function IP.eachTry(baseProbability)
    assert(isProbability(baseProbability), 'baseProbability is not a probability')

    return function (sumSoFar, count)
        assert(false, 'TODO')
    end, 0, 0
end

function IP.tryFor(count, baseProbability)
    assert(isNatural(count), 'count is not a natural number')

    for currentCount, iteratedProbability in IP.eachTry(baseProbability) do
        if currentCount >= count then
            return iteratedProbability
        end
    end
end

function IP.tryUntil(targetProbability, baseProbability)
    assert(isProbability(targetProbability), 'targetProbability is not a probability')

    if targetProbability == 1 and baseProbability < 1 then
        return IP.INFINITY
    end

    for count, iteratedProbability in IP.eachTry(baseProbability) do
        if iteratedProbability >= targetProbability then
            return count
        end
    end
end

return IP
