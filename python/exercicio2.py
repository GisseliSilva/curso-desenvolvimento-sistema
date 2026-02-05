num = int(input ("Digite um númeor menor que 100: "))

if num >=100:
    print("o número deve ser menor que 100")

else:
    unidade_dezena = num // 10
    unidade_milhar = num % 10

    soma = unidade_dezena + unidade_milhar
    print(f"soma: {soma} ")
