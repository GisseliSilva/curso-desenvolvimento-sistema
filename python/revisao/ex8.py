num = int(input("Digite o primeiro número: "))
numdois = int(input("Digite o segundo número: "))
numtres = int(input("Digite o terceiro número: "))

if num >= numdois and num >= numtres:
        print(f"o maior número é {num}" ) 
elif numdois >= num and numdois >= numtres:
        print(f"o maior número é {numdois}")
else:
        print(f"o número maior é {numtres}")


