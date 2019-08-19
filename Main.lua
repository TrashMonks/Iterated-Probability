#!/usr/bin/env lua
local IP = require'IteratedProbability'

local baseProbability = 0.12

for count, probability in IP.eachTry(baseProbability) do
    if count < 10 then
        print(count, probability)
    else
        break
    end
end

print(IP.tryFor(5, baseProbability))
print(IP.tryUntil(0.9, baseProbability))
print(IP.tryFor(IP.tryUntil(0.75, baseProbability), baseProbability))

print(IP.tryFor(0, 1))
print(IP.tryFor(100, 0))
