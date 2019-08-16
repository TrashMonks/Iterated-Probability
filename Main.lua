#!/usr/bin/env lua
local IP = require'IteratedProbability'

print(IP.tryFor(3, 0.5))
print(IP.tryUntil(0.9, 0.5))
