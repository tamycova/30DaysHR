from __future__ import division

orig = input()
tip = input()
tax = input()

amount = orig + (orig * tip / 100) + (orig * tax / 100)

print "The final price of the meal is $" + str(round(amount)) + "."
