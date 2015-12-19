#!/usr/bin/env python
key = {"(": 1, ")": -1}
level = index = 0
for dir in raw_input():
    index += 1
    level += key[dir]
    if level == -1:
        print "Basement position: " + str(index)
print "Level: " + str(level)
