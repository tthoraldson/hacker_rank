# Completed on 5/1/2016 by Theresa Thoraldson
# source: https://www.hackerrank.com/challenges/30-conditional-statements
#!/bin/python

import sys

N = int(raw_input().strip())

if N % 2 == 0 and 2 <= N <= 5:
    print("Not Weird")
    
elif N % 2 == 0 and 6 <= N <= 20:
    print("Weird")

elif 20 < N and N % 2 == 0:
    print("Not Weird")
    
elif N % 2 == 1:
    print("Weird")