# Completed on 5/5/2016 by Theresa Thoraldson
# source: https://www.hackerrank.com/challenges/30-arrays
#!/bin/python3

import sys


n = int(input().strip())
arr = [int(arr_temp) for arr_temp in input().strip().split(' ')]
arr.reverse();

print(' '.join(map(str, arr)))