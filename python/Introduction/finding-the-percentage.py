# Completed on 4/29/2016 by Theresa Thoraldson
# source: https://www.hackerrank.com/challenges/finding-the-percentage

N = int(raw_input())
sdict = {}
for line in range(N):
    info = raw_input().split(" ")
    score = map(float, info[1:])
    sdict[info[0]] = sum(score) / float(len(score))

print "%.2f" % round(sdict[raw_input()],2) 