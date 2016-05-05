# Completed on 5/5/2016 by Theresa Thoraldson
# source: https://www.hackerrank.com/challenges/30-review-loop

T = (int(input())-1) #number of strings in stin

for s in range(T+1):
    s = input()
    even = [] #even chars in phrase
    odd = [] #odd chars in phrase

    for i in range(0,(len(s))):
        if i % 2 == 0: #if even
            even.append(s[i]) #add char to even list
        if i % 2 == 1: #if odd
            odd.append(s[i]) #add char to odd list
            
    print(''.join(map(str, even)) + " " + ''.join(map(str, odd))) #print even + odd
