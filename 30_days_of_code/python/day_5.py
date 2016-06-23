# Completed on 5/5/2016 by Theresa Thoraldson
# source: https://www.hackerrank.com/challenges/30-loops
#!/bin/python3

import sys

N = int(input().strip())

for i in range(1,11):
    print(str(N) + " x " + str(i) + " = " + str(N*i))
