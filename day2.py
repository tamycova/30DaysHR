orig = 10
tip = 1
tax = 3
valor = orig + (orig * tip / 100) + (orig * tax / 100)
print("The final price of the meal is $" + str(round(valor)) + ".")
