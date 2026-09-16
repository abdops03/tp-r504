#print("Hello, World!")

import fonctions as f

print("Appuyez sur CTRL+C pour quitter.")

while True:
    
    a = float(input("Entrez un nombre : "))
    b = float(input("Entrez un nombre : "))
    res = f.puissance(a,b)
    print(res)