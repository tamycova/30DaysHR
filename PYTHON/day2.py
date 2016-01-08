orig = 10
tip = 1
tax = 3
valor = orig + (orig * tip * 0.01) + (orig * tax * 0.01)
print("The final price of the meal is $" + str(int(round(valor))) + ".")
