# Completed on 6/5/2016 by Theresa Thoraldson
# source: https://www.hackerrank.com/challenges/30-dictionaries-and-maps

import sys
N = int(input()) #number of entrys
PBook = {}

for x in range(N):
    x = input().split(" ")
    y = x.pop(0)
    PBook[y] = x

for x in range(N):
    i = input()
    if i in PBook:
        print("{0}={1}".format(i, (str(PBook[i]).replace('[', '').replace(']', '').replace("'", ""))))
    else:
        print("Not found")