# Completed on 5/1/2016 by Theresa Thoraldson
# source: https://www.hackerrank.com/challenges/30-operators

mealCost = float(raw_input())
tipInt = float(raw_input())
taxInt = float(raw_input())

taxPercent = float(taxInt/100)
tipPercent = float(tipInt/100)

tax = mealCost * taxPercent
tip = mealCost * tipPercent

totalCost = int(round(mealCost + tip + tax))


print("The total meal cost is"),
print totalCost,
print("dollars.")