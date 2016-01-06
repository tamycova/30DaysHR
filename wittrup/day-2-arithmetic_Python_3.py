M = float(input())
T = float(input())
X = float(input())
#M=12, T=20, X=8 
tip = (T * M) / 100 #=2.4 
tax = (X * M) / 100 #=0.96 
final_price = M + tip + tax #=15.36 
print("The final price of the meal is $%d." % round(final_price))