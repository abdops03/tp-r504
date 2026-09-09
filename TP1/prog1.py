#print("Hello, World!")

import fonctions as f

print("Appuyez sur CTRL+C pour quitter.")

while True:
    
    a = int(input("Entrez un nombre : "))
    b = int(input("Entrez un nombre : "))
    res = f.puissance(a,b)
	print("res="+res)
